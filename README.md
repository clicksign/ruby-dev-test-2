# O desafio

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

# Rubocop

A parte desenvolvida para solucionar esse desafio está seguindo um padrão mínimo definido no RuboCop afim de evitar espaços desnecessários, códigos verbosos e definir uma padronização de código entre uma squad de desenvolvimento, e assim, evitando que cada um siga seu próprio padrão dentro de uma equipe.

# Cobertura de testes - coverage 100%

Esse projeto está com seu código-fonte totalmente coberto por testes com Minitest.

### Rodando o projeto

Para facilitar a execução do desafio, está sendo utilizado o SQLite3 como engine banco de dados, sendo assim, não será necessário alterar a configuração do arquivo `config/database.yml`.

Utilizando os comandos a abaixo você irá instalar as gems, criar o banco de dados e as tabelas.

```
bundle install
rails db:create
rails db:migrate
```

Para rodar o projeto na porta 3000, execute o comando:

```
rails s
```
