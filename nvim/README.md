# Nvim
Make sure to install `vim-plug`. There are a few external dependencies needed that can be fetched via `brew`.
## Telescope
* `brew install fd`
* `brew install ripgrep`
## LSP
* `brew install clojure-lsp/brew/clojure-lsp-native`

## Extra Lua config
To configure the LSP, auto complete etc, install the pacakges via `Plug Install` first.
Then uncomment the following line from init.vim
```
 lua require("config")
```
This will load the lua config for a bunch of the plugins and configure the clojure language server
