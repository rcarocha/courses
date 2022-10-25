# Ambiente de Programação para Haskell

A descrição de todos os softwares utilizados, bom como detalhes de instalação, [está descrita aqui](softwares.html). **Leitura obrigatória!** Todos devem ter o ambiente ali descrito - ou uma variação equivalente - para realizar todas as tarefas da disciplina.

Mais à frente, passaremos a usar projetos Haskell gerenciados pela ferramenta `stack`.

* [Gerenciamento de projetos Haskell com stack](labs/projeto.stack.html)

Alternativamente, e na falta de ambiente funcional no laboratório (ou em casa) usaremos o `repl.it`.

* [repl.it](https://repl.it/languages/haskell) (Haskell) - ambiente online para testes de código no laboratório, na indisponibilidade do GHCi localmente instalado.

Em sala de aula, no material de suporte e para algumas demonstrações poderemos utilizar o Jupyter Notebook, executando na estação do professor, com um kernel para Haskell. O Jupyter Notebook oferece um ambiente amigável onde podemos misturar texto formatado com código Haskell **executável**. O kernel utilizado é o [IHaskell](https://github.com/IHaskell/IHaskell) (ver instruções de execução para cada ambiente). 



## PFL

Fiquem a vontade para usar o ambiente de programação Haskell que desejarem. Essa é a minha recomendação baseada nos seguintes referenciais: 

* Ambiente razoalmente equivalente tanto no Linux quanto no Windows. O ambiente no laboratório está baseado nesta configuração.
* Ambiente aberto e flexível às necessidades de programação e da disciplina. 
* Ambiente minimamente amigável à programação.
* Não é necessário acesso de administrador (`sudo` ou senha admin Windows) para realizar nenhuma dessas instalações.

Os requisitos do ambiente são os seguintes:

1. Compilador (GHC) e interpretador (GHCi) Haskell
2. Gerenciador de pacotes Haskell, para instalação de pacotes e ferramentas adicionais com o mínimo de problemas.
3. Cliente GIT (particularmente Github), para uso com o Github Classroom.
4. Editor de texto com mínimo suporte a Haskell

As escolhas para para um desses elementos (e alternativas) estão na tabela abaixo:

* Compilador/Interpretador Haskell
  * Ambiente [oficial Haskell](https://www.haskell.org/downloads) (GHC/GHCi)
* Gerenciador de pacotes Haskell
  * [Stack](https://docs.haskellstack.org/)
* IDE ou editor de código Haskell 
  * [Atom](https://atom.io)
  * [Eclipse (com Plugin Haskell)](https://wiki.haskell.org/IDEs#Open_Source), Visual Studio ou (Leksah)[https://wiki.haskell.org/IDEs#Leksah]. Qualquer editor de texto será o suficiente para esta disciplina.

O restante deste texto, descreve brevemente a instalação usando as escolhas indicadas acima. Exceto pelo ambiente Haskell, elas são opcionais e dependem da sua preferência. 

## Instalação do ambiente Haskell e Stack

A instalação do ambiente Haskell é feito pelo **stack**, usando a instrução indicada em <https://docs.haskellstack.org/en/stable/README/> (ver link para Instalador Windows). A instalação é bem simples e rápida e ao fim do processo, você terá em estado funcional:

* Compilador Haskell GHC
* Gerenciador de pacotes Stack

Para instalar o interpretador GHCi, utiliza-se do prompt de comandos o seguinte comando `stack`:

```bash
stack install ghci
```

A partir dessa instalação, todos os comandos do Haskell são executados via `stack`. Por exemplo:

* [Executar](https://docs.haskellstack.org/en/stable/GUIDE/#ghcrunghc) o compilador Haskell: `stack exec ghc`, ou apenas `stack ghc`.
* Iniciar o GHCi (interpretador): `stack ghci`

Você pode iniciar o GHCi diretamente com o `ghci`, se quiser fazer experimentações mais simples ou carregar manualmente o código.

A documentação da ferramenta `stack` está descrita em: <https://docs.haskellstack.org/en/stable/GUIDE/>. Iremos utilizá-la para instalação de pacotes necessários para algumas práticas e tarefas. Você precisará obrigatoriamente usar o "Prompt de Comandos" do Windows para usar o `stack` (ele colocará todas as variáveis/diretórios necessários no PATH)


## Atom

No laboratório, utilizaremos o [Atom](https://atom.io/) como ambiente de programação. Uma vez instalado, instale via linha de comando os plugins para programação Haskell descritos em <https://atom-haskell.github.io/>.

O processo de instalação está descrito em <https://atom-haskell.github.io/installation/> e envolve usar o `apm` (parte da ferramenta) em linha de comando para instalar os pacotes Atom necessários.

Utilize a seguinte linha de comando para instalar os plugins necessários:

```bash
apm install language-haskell ide-haskell
```

Com esses plugins **não será possível compilar ou executar** o seu código via Atom. Originalmente, a instalação sugeria usar o comando

```bash
apm install language-haskell ide-haskell ide-haskell-cabal haskell-ghc-mod autocomplete-haskell
```

que incluia ferramentas para compilação, execução e completar o código. Entretanto, nem todos os plugins funcionam com a versão 8.4 do Haskell - instalada pelo `stack`, causando mensagens de erro do Atom. Há outros métodos de instalação combinados do Haskell+Atom que evitam tais problemas, mas devido à dificuldade em colocá-los funcionais no laboratório, preferi deixá-los de lado (fique livre para tentar). 


## Instalação do cliente Git 

Nas tarefas de programação, utilizaremos o Git para submissão das tarefas pelo sistema [Github Classroom](http://classroom.github.com/).

Git é um sistema de gerenciamento de versões de código (e arquivos) amplamente utilizado. Há uma infinidade de clientes Git existentes, descritos abaixo:

* [Git/GitHub/Cliente Git](https://git-scm.com/download/gui/windows)

Utilize aquele em que ficar mais confortável. No laboratório, instalado o [https://desktop.github.com/](Github Desktop) que é um cliente **para o Github**, ou seja, ele **não deve funcionar** com outro servidor Git, como [gitlab](https://www.gitlab.com) ou [BitBucket](https://www.bitbucket.org). Trata-se de uma conveniência para aprendermos mais facilmente o uso do Git Classroom.

Entretanto, o Atom **já possui um cliente Git** muito amigável.

## Utilizando o Interpretador GHCi

O interpretador Haskell GHCi (Glasgow Haskell Compiler interactive) permite a declaração e avaliação de código Haskell diretamente, o que será utilizando nas primeiras aulas ou em experimentações curtas.


## Uso do Compilador e do Interpretador GHC/i

Na instalação do GHC/GHCi **via stack**, compilador e interpretador são invocados usando a respectiva opção do stack:

* Compilador: `stack ghc <opcoes>`
* Interpretador: `stack ghci`

Um código `.hs` Haskell para ser executável deve ser declarado como do módulo `Main` (apenas o código com o corpo principal), como no código abaixo:

```haskell
module Main where

main = putStr "-- programa --"
```

A compilação é feita passando o parâmetro `-o` para o `ghc` incluindo `--` no stack, como no seguinte comando, onde o código fonte está em `t.hs` e o executável terá o nome `t`.

```bash
stack ghc -- -o t t.hs
```
Do interpretador GHCi, o código é carregado usando os comandos `:l <arquivo .hs>`, dê load, seguido do nome do arquivo (com caminho completo, caso necessário). 
