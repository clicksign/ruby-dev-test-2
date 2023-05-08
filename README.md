# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!
---

William Lopes -> Entrega:

---

# Definições da aplicação
### Versões utilizadas
* Ruby: 2.7.0
* Rails: 5.2.0

> Atenção: Foi necessária uma atualização do ruby (2.4.1 -> 2.7.0) para o docker conseguir instalar os pacotes necessários para desenvolvimento e também atualizar a gem `chromedriver-helper`, descontinuada em 2019-03-31, para a gem `webdrivers`.

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
* Executar server:
    ```
    docker compose up
    ```
* Executar console:
    ```
    docker compose run --rm web bin/rails console
    ```
* Rodar testes:
    ```
    docker compose run --rm web bin/rails test
    ```