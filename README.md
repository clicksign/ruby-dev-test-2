# Refactoring de relacionamento

Para este projeto, eu não criei um dockerfile e rodei no meu local onde utilizei o package manager [**asdf**](https://asdf-vm.com/).



#### Gemfile

Foram necessárias algumas alterações para que pudesse executar o projeto. Como poderão notar, procurei fazer o mínimo de alterações possíveis para rodar o `bundle` e o servidor.

Adicionei algumas gems para desenvolver os testes de forma alternativa e também para verificar a escrita do código, onde em cada `gem`, priorizei a última versão compatível com o `ruby 2.4.1` .

Ao rodar o comando abaixo:

```
bin/rails s
```

Obtive o seguinte resultado:

```
=> Booting Puma
=> Rails 5.2.0 application starting in development 
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.6 (ruby 2.4.1-p111), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
```



#### Migrations

Eu gerei duas novas `migrations`:

1 - Criei uma `migration` com dois métodos: `up` e `down`. O primeiro remove a referência `player` da tabela `albums`. O segundo, é para que em caso de `rollback`, a remoção seja desfeita.

2 - Criei uma migration para que fosse gerada a `join table albums_players` .



#### Testes

Eu corrigi os testes do rails e fiz a adição de mais testes para cobrir as alterações feitas no código.

Também desenvolvi os testes utilizando as gems [**rspec**](https://rspec.info/) e a [**shoulda-matchers**](https://matchers.shoulda.io/). (A depender do projeto, poderia fazer os testes utilizando ou não a `shoulda`, ou ainda rodar com `minitest` ou outra forma adotada pela equipe).

Rodando os testes padrão do rails:

```
bundle exec rails test -v
```

Obtive o seguinte resultado:

```
Running via Spring preloader in process 75234
Run options: -v --seed 22320

# Running:

AlbumTest#test_uniqueness_name = 0.05 s = .
AlbumTest#test_presence_of_one_or_more_players = 0.01 s = .
AlbumTest#test_presence_of_name = 0.00 s = .
AlbumTest#test_valid_album = 0.00 s = .
PlayerTest#test_player_shakira_have_three_albums = 0.00 s = .
PlayerTest#test_presence_of_name = 0.00 s = .
PlayerTest#test_uniqueness_name = 0.00 s = .
PlayerTest#test_valid_player = 0.00 s = .

Finished in 0.082585s, 96.8699 runs/s, 217.9573 assertions/s.
8 runs, 18 assertions, 0 failures, 0 errors, 0 skips
```

Rodando os testes com o rspec:

```
bundle exec rspec --format d
```

Obtive o seguinte resultado:

```
Album
  associations
    is expected to have and belong to many players
  validations
    is expected to validate that :name cannot be empty/falsy
    is expected to validate that :name is case-sensitively unique
    valid album
    presence of name
    uniqueness name
    presence of one or more players

Player
  associations
    is expected to have and belong to many albums
  validations
    is expected to validate that :name cannot be empty/falsy
    is expected to validate that :name is case-sensitively unique
    valid player
    presence of name
    uniqueness name
    player shakira have three albums

Finished in 0.1512 seconds (files took 1.77 seconds to load)
14 examples, 0 failures
```



### Rubocop

Eu adicionei um arquivo `.rubocop.yml` com algumas opções. 

Não consegui adicionar o `Style/Documentation`  no arquivo, ele reclamou não connhecer esse parâmetro, talvez devido a versão. Para corrigir o erro: `Style/Documentation: Missing top-level class documentation comment`  eu desabilitei e habilitei em cada arquivo o parâmetro... com mais tempo eu tentaria resolver colocando no próprio arquivo de configurações do `rubocop`.

Rodando o comando abaixo:

```
Inspecting 34 files
..................................

34 files inspected, no offenses detected
```




