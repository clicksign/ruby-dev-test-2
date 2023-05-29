### Histórico

1 - O projeto estava com uma GEM desatualizada (mimemagic), foi necessário rodar um ```bundle update mimemagic``` para atualizar a GEM e poder executar o projeto
2 - Primeira tentativa: inicialmente foi utilizada a associação **HABTM (has_and_belongs_to_many)**, corrigido os testes, adicionado os validadores, era o caminho mais simples,
  2.1 - pensando nas validações e em novos testes, percebeu-se a necessidade de uma solução diferente
3 - O refactor inicial foi descartado e foi utilizada uma associação **HAS_MANY THROUGH**, para isso foi necessário:
  3.1 - migration: ```rails generate migration CreateAlbumPlayers```
  3.2 - migration: ajustada a classe de migration e adicionada as referencias
  3.3 - model: criada classe que representa a associação
  3.4 - model: refatorado os models para utilizar a nova associação
  3.5 - model: adicionado os validadores a nova classe
  3.6 - tests: refatorado os testes para utilizar a nova associação
  3.7 - tests: validadores das classes originais foram refatorados, para poder validar a nova associção e regras
  3.8 - tests: adicionado os testes para a nova classe
  3.9 - tests: ajustado a migration para adicionar indices
4 - refactor: adicionado a GEM do **Rubocop** para analise de código
  4.1 - refactor: ajustado código para atender as regras do Rubocop
5 - refactor: criado um arquivo **Makefile** para facilitar a execução dos comandos
6 - Hora de rodar novamente as migrations: ```rake db:migrate```
7 - Hora de rodar os testes: ```make test```
8 - Hora de rodar o Rubocop: ```make lint```