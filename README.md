# Boilerplate ![](https://img.shields.io/badge/i%20love-cat%20gifs%20%F0%9F%90%B1-green.svg)

Project boilerplate for Haskell libraries.


## Setup & Development

```bash
$ git clone git@github.com:damncabbage/haskell-boilerplate.git someproject
$ cd someproject

# ... edit and rename Boilerplate in src/*.hs and test/*.hs ...

$ cabal sandbox init
$ cabal update; cabal install cabal-install
$ cabal configure --enable-tests
$ cabal install --enable-tests
$ ./test.sh props specs   # Once-off test-run
$ ./guard.sh props specs  # To wait for changes before running test builds
```

If you want to use `guard.sh` (or `tests.sh` with notifiations turned on), you'll need **fswatch** and **terminal-notifier**, both available on OS X with:

```bash
$ brew install fswatch terminal-notifier
```
