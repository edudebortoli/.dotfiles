if status is-interactive
    nvm use 18 >&-
    echo welcome Eduardo
    echo you are using node 18
    # Commands to run in interactive sessions can go here
end

set fish_greeting

set PATH $HOME/.cargo/bin $PATH
alias vim="nvim"
alias g="git"
alias lg="lazygit"
alias ll="exa -l"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
