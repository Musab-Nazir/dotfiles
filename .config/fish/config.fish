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

# proton
set -Ux PROTON_USE_NTSYNC 1
set -Ux PROTON_ENABLE_WAYLAND 1
set -Ux PROTON_FSR4_UPGRADE 1

# aliases
# alias ls="eza"
alias cat="bat"
alias top="btop"
