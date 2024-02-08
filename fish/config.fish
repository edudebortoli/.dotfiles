if status is-interactive
    nvm use 18 >&-
    echo "using node 18"
    # Commands to run in interactive sessions can go here
end

set fish_greeting

set PATH $HOME/.cargo/bin $PATH
alias vim="nvim"
alias g="git"
alias lg="lazygit"
alias ll="exa -l"
