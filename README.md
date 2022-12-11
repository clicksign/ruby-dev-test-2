# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

## Objetivo do projeto

Objetivo do projeto é corrigir um relacionamento que teve seu escopo alterado, agora é preciso que ele seja um relacionamento N <> N, com isso foi removido o campo de referencia player da tabela album e adicionado uma nova tabela que realiza esse relacionamento N <> N, alem disso foi adicionado alguns testes com auxilio da gem shoulda e shoulda-matchers para garantir esses relacionamentos.
