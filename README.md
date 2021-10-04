# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

---
## Prerequisites

Have the following features with their respective versions installed on the machine:

- Ruby `2.4.1` - You can use [RBENV](https://github.com/rbenv/rbenv)
- Sqlite3 
- Rails `5.2.6`
- Bundler `2.2.28`

## Most used gem
- gem sqlite3 - Gem for accessing and connecting to DB Sqlite3
- gem rspec-rails - Gem for TDD testing

## Setup the project

After you get all the [prerequisites](#prerequisites), simply execute the following commands in sequence:

```bash
Install the dependencies above
1. $ git clone  # Clone the project
2. $ cd ruby-dev-test-2 # Go into the project folder
3. $ gem install bundler # Bundler install
4. $ bundle install # Install the gem dependencies
5. $ rails db:create db:migrate  # Database creation, together with tables 
6. $ rspec # Run the specs to see if everything is working fine
```
<p align="center">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/arissonb/ruby-dev-test-2">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/arissonb/ruby-dev-test-2">

---


Thanks for the opportunity, this was made with &nbsp;by Arissonb [Get in touch!](https://www.linkedin.com/in/arissonb/)
