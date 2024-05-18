# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
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
alias janrepl="janet -e \"(import spork/netrepl) (netrepl/server)\""

# change the format of the 'time' command
TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'
