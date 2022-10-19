# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

## Observações sobre a solução

Admiti algumas verdades aqui, então para reproduzir pode ser necessário tomar alguns passos extras, que eu detalho a seguir

- Admiti que seria do interesse de vocês observar como eu lido com uma transição desse gênero em produção, e não como eu "criaria da forma correta"
- Por isso deixei as migrations que vieram como estavam, rodei elas e criei algumas seeds para popular o banco de dados.
- Mergeei essas alterações direto na main
- Criei o PR com a correção pedida e a migração dos dados para a nova tabela.

Para reproduzir e testar se está tudo correto, recomendaria:

- Clonar o repo na branch `main`
- Rodar `rake db:seed`
- Fazer um `git checkout solution/samuelegea`
- Rodar `rake db:migrate`
