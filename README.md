# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!


Solução Adotada

Criei uma classe intermediaria para vincular album com player, assim implementei o muitos para muitos ausente do rails, como nao foi solicitado que migra-se os dados antigos nao implementei essa parte, porem caso fosse necessário, eu nao teria excluido a coluna player_id da tabela de album e teria feito uma rake task para popular a tabela player_album com os dados da tabela album e player
