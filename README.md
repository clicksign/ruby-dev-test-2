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

  validates_presence_of :name
end
```

`models/album.rb`
```diff
class Album < ApplicationRecord
- belongs_to :player
+ has_and_belongs_to_many :players

  validates_presence_of :name
end
```