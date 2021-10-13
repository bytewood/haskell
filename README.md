# Haskell

experiments while learning haskell

## Notes
functions follow the structure of the data.

## Glossary
TDD - type directed development


## Environment
```bash
sudo apt-get install haskell-platform

cabal install QuickCheck

cabal repl
```
* install haskell toolstack
* Intellij-Haskell plugin

## GHCI
```shell
ghci
stack ghci
cabal repl
```
```haskell
:l some-file.hs - load and compile a file
:r              - reload current file.
let a = 1       - equivalent to a = 1 in a file and loading it.

-- type
:t (&&)

-- information about type ... higher infix values resolved first
:i (&&)

-- show unevaluated expression
:sprint

-- multi-line
:{

:}
-- or
:set +m

```

## Stack Build Tool
```
curl -sSL https://get.haskellstack.org/ | sh
stack new project-name
cd project-name
stack setup                     -
stack build                     - 
stack exec project-name-exe     - execute the project

stack install                   - 

stack ghci                      - start an interactive compiler
:script {{file}}                - load a script                    
:r                              - reload current script 
```

## Documentation
https://www.stackage.org        - vetted consistent packages
https://hackage.haskell.org     - 
https://hoogle.haskell.org      - package search engine for stackage



## IDE
TODO: ghcide (install with nix)
