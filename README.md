# Refactoring de relacionamento

Para este projeto, eu não criei um dockerfile e rodei no meu local onde utilizei o package manager [**asdf**](https://asdf-vm.com/).



#### Gemfile

Foram necessárias algumas alterações para que pudesse executar o projeto. Como poderão notar, procurei fazer o mínimo de alterações possíveis para rodar o `bundle` e o servidor.

Adicionei algumas gems para testes, onde priorizei a última versão compatível com o `ruby 2.4.1` .

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

Para os testes utilizei duas gems, a [**rspec**](https://rspec.info/) e a [**shoulda-matchers**](https://matchers.shoulda.io/). (A depender do projeto, poderia fazer os testes utilizando ou não a `shoulda`, ou ainda rodar com `minitest` ou outra forma adotada pela equipe).

Rodando o comando abaixo:

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

Player
  associations
    is expected to have and belong to many albums
  validations
    is expected to validate that :name cannot be empty/falsy

Finished in 0.12638 seconds (files took 1.71 seconds to load)
4 examples, 0 failures
```


