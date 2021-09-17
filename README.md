# Refactoring de relacionamento

## Descrição
A Madonna resolveu lançar um album em parceria com a Shakira! E agora?!

Nosso PO jamais iria esperar que um album pudesse ter mais de um artista. Transforme a relacão 1 para N entre Player e Album em uma relação N para N. Precisamos de testes senão o chato do agilista vai brigar conosco!

## Dependências
- Rails v.5.2.0
- Ruby v.2.4.1
- Rspec v.5.0

## Instalação
Para rodar o projeto atual localmente siga as instruções:

1. clone o repositório
2. Rode o comando `bin/setup` para instalar as dependências e inicializar o banco de dados
3. Explore os registros e a relações existentes entre as entidades :)
4. Para rodar os testes unitários, basta digitar no seu terminal o comando `rspec`. O resultado esperado é similar a esse aqui:

![Screenshot from 2021-09-17 18-35-24](https://user-images.githubusercontent.com/70042529/133856112-60b233ae-7e3c-44f0-a66b-a306e5818010.png)
