# Nvim
Make sure to install `vim-plug`. There are a few external dependencies needed that can be fetched via `brew`.
Might also need to install some [NerdFonts](https://www.nerdfonts.com/)

## Telescope
* `brew install fd`
* `brew install fzf`
* `brew install ripgrep`
## LSP
* `brew install clojure-lsp/brew/clojure-lsp-native`
## rust-analyzer
* `brew install rust-analyzer`


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
