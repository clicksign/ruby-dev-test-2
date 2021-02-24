# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

# Itens Refatorados

> Versão do Ruby
> Remoção das associações existentes;
> Criação da Model playeralbum para associar as models Player e Album
> Adição da Associação has_and_belongs_to_many nas models  Player e Album
> Criação de migration que cria as tabela associativa players_albuns para permitir o Relacinamento N:N
> Criação de scaffold controller das models models Player e Album
> Ajuste dos controllers

# Itens não realizados

> Os testes.

