# Nvim
Make sure to install `vim-plug`. There are a few external dependencies needed that can be fetched via `brew` or `choco`.
Might also need to install some [NerdFonts](https://www.nerdfonts.com/)

## General
* `git` (vim-plug won't work with out)
* `make`

## Telescope
* `brew install fd`
* `brew install fzf`
* `brew install ripgrep`
## LSP
### clojure
* `brew install clojure-lsp/brew/clojure-lsp-native`
### rust-analyzer
* `brew install rust-analyzer`
### python
* `pip install pyright`
* `nodejs`
### golang
* `go install golang.org/x/tools/gopls@latest`

## Debugger
### golang
* `go install github.com/go-delve/delve/cmd/dlv@latest`

## Extra Lua config
To configure the LSP, auto complete etc, install the pacakges via `Plug Install` first.
Then uncomment the following line from init.vim
```
 lua require("config")
```
This will load the lua config for a bunch of the plugins and configure the clojure language server

## Load from snapshot
You can load pinned versions of the plugins (default behavior of vim-plug is to pull latest versions) via the
included snapshot.vim file. Running the following command will load plugins from the file 
```
vim -S snapshot.vim
```
