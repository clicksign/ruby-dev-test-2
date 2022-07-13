# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

# The Challenge

Foi removido o relacioamento de 1 pra N entre player e album para torná-lo N para N, para isso a chave estrangeira com o id do player foi removida da tabela de albuns e para gerar um novo relacionamento N para N foi criada uma join table chamada **albums_players**. Uma nova estrutura de testes foi desenvolvida para realizar a validação de todas as alterações realizadas, para essa nova estrutura algumas gems foram utilizadas:

- `FactoryBot 5.2.0`
- `Faker 2.12`
- `RSpec 5.1.2`
- `Shoulda Matchers 2.5.0`

Foi inferido que não era necessário realizar nenhuma migração de dados já existentes por dados persistidos no banco por seeds ou até mesmo por dados que supostamente já estivessem em um ambiente de produção, se fosse o caso, o ideal seria criar uma rake (Rails) que tivesse essa responsabilidade ou criar um script sql nativo em cima do database.


