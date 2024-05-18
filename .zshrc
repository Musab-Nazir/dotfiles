## History
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

## KEYBINDS
bindkey -v
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/musab/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## PLUGINS
# add autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# add syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 
## ALIASES
alias vim="nvim"
alias cljrepl="clj -A:nREPL"

# change the format of the 'time' command
TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'
