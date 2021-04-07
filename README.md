# Refactoring de relacionamento

> A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!


===============

## Implementação

Para implementar o desafio proposto, utilizei 3 migrations, refatorei as models para adaptarem-se as a relação de muitos para muitos, como também criei testes para alguns casos básicos.

1. Primeiramente iniciar a criação do banco com suas migrações `rails db:create db:migration`

2. Na sequência rodar os testes `rails test test`

3. Também é possível testar na prática `rails console`

```console
 player = Player.create(name: 'Metallica')
 album = Album.create(name: 'Ride the lightning')
 album.players << player
 Album.all
```

4. Ou se estiver com pressa, é só executar `rails db:seed`