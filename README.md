# Problema

## Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

# Solução

Foi criada uma tabela que permite criar um relacionamento do tipo M para N além de permitir que um artista apareça apenas uma vez em um mesmo Álbum.  