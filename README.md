# Refactoring de Relacionamento - ruby-dev-test-2

> Aplicação Ruby on Rails com base de dados de Players e Albums. Foi feita a refatoração da relação 1 para N entre Player e Album para uma relação N para N.

## Solução
- Criação de uma entidade associativa AlbumsPlayer que guarda um album_id e um player_id, para estabelecer a relação entre os modelos Player e Album e permitir que um Album tenha mais de um Player.
- Migrações realizadas em etapas, supondo que o aplicativo estivesse em produção, para garantir o mínimo de downtime possível.
- Testes criados para garantir a integridade dos dados e as relações entre os modelos. Utilizida a gem Minitest, biblioteca padrão do Rails para testes.
- O app foi containerizado em Docker para garantir suas configurações de ambiente e versões.

## Tecnologias
- Ruby 2.4.1
- Ruby on Rails 5.2.0
- SQLite
- Minitest
- Docker

### Dependências
- Docker

## Como usar
- Baixe e instale o Docker ``https://www.docker.com/``
- No seu terminal, insira o comando:
```docker compose run web bundle install```
- Após a instalação das gems, insira:
```docker compose up --build```
- Pronto, a aplicação já está rodando e conectada ao banco de dados.

Caso você esteja usando o Docker em um sistema Linux, os arquivos podem precisar de permissão do "root user". Insira o comando a seguir para possibilitar a edição dos arquivos:
```sudo chown -R $USER:$USER .```
