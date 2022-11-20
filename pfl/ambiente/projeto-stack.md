# Gerenciamento de Projetos Haskell com Stack

## Cria��o do Projeto stack

Um projeto stack � criado com o comando `stack new meuprojeto`, onde `meuprojeto` o nome do seu projeto. O stack criar� um diret�rio `meuprojeto` com a seguinte estrutura de diret�rios:


        .
        |-- quicksort
        |   |-- app
        |   |   `-- Main.hs
        |   |-- ChangeLog.md
        |   |-- LICENSE
        |   |-- package.yaml
        |   |-- quicksort.cabal
        |   |-- README.md
        |   |-- Setup.hs
        |   |-- src
        |   |   `-- Lib.hs
        |   |-- stack.yaml
        |   `-- test
        |       `-- Spec.hs
        `-- quicksort.zip


Essencialmente voc�s precisar�o modificar quatro arquivos:

* `app/Main.hs`: � o seu programa principal, que cont�m a fun��o `main` e que ser� a base para o execut�vel criado. 
* `src/Lib.hs`: Diret�rio onde ficar�o as bibliotecas que d�o suporte ao seu programa. A id�ia � evitar que voc� coloque todo o c�digo no `Main.hs`, colocando as fun��es nesse arquivo e importando o m�dulo no seu `Main.hs`.
* `test/Spec.hs`: cont�m os testes de unidade do seu c�digo.
* `package.yaml`: cont�m a configura��o do seu projeto. Provavelmente, sua �nica preocupa��o nesse arquivo ser� acrescentar as bibliotecas usadas pelo seu c�digo (indicando o nome delas), que ser�o baixadas automaticamente ao compilar o seu c�digo.

<img src="images/estrutura-stack.png" />

## Comando stack

* `stack build`: compila o seu c�digo
* `stack run`: executa o seu projeto
* `stack exec meuprojeto-exe`: executa o seu c�digo a partir do execut�vel que, no projeto padr�o stack � referenciado pelo nome do projeto seguido de `-exe`. Observe que esse nome aparece no processo de compila��o e � definido no arquivo `package.yaml` no bloco de compila��o `executables` (trata-se do nome do bloco). No caso do exemplo `quicksort` � `quicksort-exe`.
* `stack test`: executa os testes indicado em `test/Spec.hs`, mostrando resultado no seu terminal.

## Testes de Unidade com Hspec

Um projeto stack utiliza os testes de unidade hspec, e para isso voc� precisar� incluir a biblioteca do Hspec no seu projeto no bloco `dependencies` de `tests`. Veja o exemplo do quicksort.

### Refer�ncias �teis

* [HSpec; A import�ncia de testes](http://blog.haskellbr.com/2015/12/10/24-dias-de-hackage-2015-dia-3-hspec-a-importancia-de-testes.html) - em portugues
* <https://hspec.github.io/>
* <https://github.com/hspec/hspec-example>
* <https://hspec.github.io/running-specs.html>


## Exemplo

Segue o exemplo discutido em sala de aula de um falso quicksort. Observem com cuidado os testes.

* Falso [quicksort](code/quicksort.zip)
