

# RUBY DEV TEST - BACKEND

**Refactoring de relacionamento**
```
A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. 

Transforme a relacão 1 para N entre Player e Album em uma relação N para N. 

Precisamos de testes senão o chato do agilista vai brigar conosco!
```
##  SOLUÇAO

### primeiras instruçoes:
```console
% git clone https://github.com/annagodoy/ruby-dev-test-2.git
% gem install bundler
% cd ruby-dev-test-2
% bundle install
% rake db:setup
 ```

### minitest

para executar specs rodar seguinte comando 
```console
% rake test TEST=test/models/ 
```