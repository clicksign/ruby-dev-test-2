# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!



Adicionado relação has_and_belongs_to_many em ambas classes modelo Album  e Player.

Criado a tabela players_albums para a relacao N N, e rmeovido o 'id_player' da tabela album.

Foi configurado o RSPEC para realizarmos os teste de ambas as classes. 

