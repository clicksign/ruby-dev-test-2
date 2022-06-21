# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!


## Solução

Foi criada uma tabela de ligação entre os dois modelos chamada de `albums_players`, com a estratégia `create_join_table` na migration.
Não existe um model AlbumsPlayers, usei o `has_and_belongs_to_many` porque nesse caso não preciso trabalhar com a tabela de ligação para ter outros atributos ou etc, somente preciso dela para fazer seu papel principal que é o relacionamento N pra N. Caso fosse necessário o modelo poderia ser criado e em vez de usar o relacionamento `has_and_belongs_to_many` seria o usado o `has_many` com a configuração `through`.
