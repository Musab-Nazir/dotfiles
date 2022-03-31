# dotfiles

This is a collection of config files I used for a number of different tools and apps

## Nvim
Make sure to install `vim-plug`. There are a few external dependencies needed that can be fetched via brew or apt-get etc.
### Telescope
* brew install fd
* brew install ripgrep
### Ale
* brew install borkdude/brew/clj-kondo
### LSP and Gitsigns
To configure the LSP and custom git gutter signs, install the pacakges via `Plug Install` first. Then uncomment
the following line from init.vim
```
 lua require("config")
```
This will load the lua config for LSP and install and configured typescript and clojure language servers
