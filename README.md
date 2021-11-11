# O Desafio

```
# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!
```

# Soluções

## Quick and dirty
Caso a app esteja totalmente em desenvolvimento e com nenhum banco de produção populado, ajustar o modelo de dados para aceitar múltiplos artista com o mesmo album pode ser feito apenas com:

`db/migrate/..._create_albums_players.rb`
```ruby
class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.references :album, foreign_key: true, index: true
      t.references :player, foreign_key: true, index: true

      t.timestamps
    end

    remove_reference :albums, :player, foreign_key: true
  end
end
```

`models/player.rb`
```diff
class Player < ApplicationRecord
- has_many :albums
+ has_and_belongs_to_many :albums
...
```

`models/album.rb`
```diff
class Album < ApplicationRecord
- belongs_to :player
+ has_and_belongs_to_many :players
...
```

## Utilizando `has_many :through` em vez de `has_and_belongs_to_many`

A relação `has_and_belongs_to_many` nos permite apenas criar uma simples associação entre dois modelos. Porém, em muitos casos, é necessário tratar a tabela relacional como uma entidade independente para persistir dados exclusivamente relacionados a ela. Fazemos isso com o uso de `has_many :through`

`db/migrate/..._create_authorships.rb`
```ruby
class CreateAuthorships < ActiveRecord::Migration[5.2]
  def change
    create_table :authorships do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end

    remove_reference :albums, :player, foreign_key: true
  end
end
```

`models/player.rb`
```ruby
class Player < ApplicationRecord
  has_many :authorships
  has_many :albums, through: :authorships
...
```

`models/album.rb`
```ruby
class Album < ApplicationRecord
  has_many :authorships
  has_many :players, through: :authorships
...
```

`models/authorship.rb`
```ruby
class Authorship < ApplicationRecord
  belongs_to :player
  belongs_to :album
end
```

> Como durante o desenvolvimentos do produto muitas vezes não conseguimos prever se a necessidade de campos extras na entidade relacional se fará presente ou não, assumir que sim pode cortar etapas futuras sem grande esforço extra já que essa solução depois de implementada funciona de forma bem análoga a anterior. Além disso, de acordo minha experiência pessoal, existe uma grande tendência desses campos se fazerem necessários à medida que o produto se desenvolve.

> [Aqui está um artigo](https://medium.com/@jvanier/convert-a-rails-association-from-has-and-belongs-to-many-to-has-many-through-8330f3009dc8) sobre como a transição de `has_and_belongs_to_many` para `has_many :through` pode ser feita e nele fica bem evidente como a mudança pode se tornar complexa pois envolve criar uma join table temporária para coexistir com a anterior e fazer a persistência dos dados além de usar modelos locais de ActiveRecord no arquivo de migração.

## Contemplando um banco em produção já populado

Em um cenário onde nem o PO nem nós desenvoldores conseguimos prever a necessidade de mudança no data model antes de colocar a aplicação em uso, fazer essa adaptação com o banco populado requer um passo extras já que a autoria dos albuns precisa ser persistida no novo arranjo de dados. 

```diff
class CreateAuthorships < ActiveRecord::Migration[5.2]
  def change
    create_table :authorships do |t|
      t.references :player, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end

+   Album.all.each do |a|
+     a.authorships.create(player_id: a.player_id)
+   end

    remove_reference :albums, :player, foreign_key: true
  end
end
```
