# RUBY-DEV-TEST-2

Essa aplicação desenvolve um sistema que permite a criação de albums e artistas que compõe um album,
é possível na criação do album inserir um ou mais artistas, porém para que possa ser selecionado mais
de um artista ou banda o usuário precisa segurar o botão `cmd` (para mac) ou `ctrl`.
## Setup

### Ambiente
É necessário instalar as seguintes aplicações:

    Ruby 2.4.1

### Instalação e execução da aplicação

1. Faça o clone com **git clone https://github.com/clicksign/ruby-dev-test-2.git**

2. Vá ao diretório do projeto e execute

        ruby-dev-test-1$ bundle install


3. Faça o setup do banco de dados

        ruby-dev-test-1$ rake db:setup

4. Execute a aplicação 

        ruby-dev-test-1$ rails s

5. Abra o navegador em `http://localhost:3000`

## Testes

        ruby-dev-test-1$ rspec
