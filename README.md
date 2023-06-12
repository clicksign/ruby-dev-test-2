# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

## Solução
Esse PR propõe as alterações nos models Player e Album para mudar o relacionamento de Um para Muitos (1 to N) para Muitos para Muitos (M to M).

* Preferi fazer o relacionamento usando <b>through</b> ao invés de <b>has_and_belongs_to_many</b>
por achar que <b>through</b> é mais descritível e flexível, caso seja necessário mudar alguma regra no relacionamento posteriormente.

* Foram feitas as atualizações da versão do Ruby e das gems para que fosse possível rodar o projeto nos sistemas atuais.

## Requirements
* Ruby 2.7.2
* Rails 5.2.0
* SQLite

## Testar
```
bin/rails test
```