# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

---

# William Lopes -> Entrega:

---

## Definições da aplicação
### Versões utilizadas
* Ruby: 2.7.0
* Rails: 5.2.0

> Atenção: Foi necessária uma atualização do ruby (2.4.1 -> 2.7.0) para o docker conseguir instalar os pacotes necessários para desenvolvimento e também atualizar a gem `chromedriver-helper`, descontinuada em 2019-03-31, para a gem `webdrivers`.

### Ação em produção mapeada
Como é apenas um desafio, irei apenas mapear a ação que seria necessária em produção com dados reais:
1. Faça a migração até a parte de criar a nova tabela de relacionamento N->N entre as entidades players e albums.
1. Migre os dados referentes aos albums que cada player possui para a nova tabela de relacionamento.
1. Só execute a migração que remove a chave de referência do player presente na tabela albums depois de migrar todos os dados.

### Configuração do ambiente via Docker
1. Faça o build inicial do docker:
    ```
    docker compose build
    ```
1. Crie a estrutura do banco de dados:
    ```
    docker compose run --rm web bin/rake db:setup
    ```

### Comandos principais
* Executar console:
    ```
    docker compose run --rm web bin/rails console
    ```
* Rodar testes:
    ```
    docker compose run --rm web bin/rails test
    ```

### Comandos úteis
* Executar migração do banco de dados:
    ```
    docker compose run --rm web bin/rails db:migrate
    ```
* Atualizar gems:
    ```
    docker compose run --rm web bundle update
    docker compose up --build
    ```
* Executar server:
    ```
    docker compose up
    ```
* Limpar server, inclusive o banco de dados (depois volte ao comando `Executar server`):
    ```
    docker compose down
    ```