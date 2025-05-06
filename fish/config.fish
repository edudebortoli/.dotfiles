if status is-interactive
		nvm use 20 >&-
		#	echo welcome Eduardo
		#	echo node 18
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/eduardo/Documents/github/google-cloud-sdk/path.fish.inc' ]; . '/home/eduardo/Documents/github/google-cloud-sdk/path.fish.inc'; end
