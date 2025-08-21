if status is-interactive
    # Commands to run in interactive sessions can go here
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# evil helix
set -gx PATH ~/helix $PATH

# roc
set -gx PATH ~/roc-alpha3-rolling $PATH

# aliases
# alias ls="eza"
alias cat="bat"
alias top="btop"
