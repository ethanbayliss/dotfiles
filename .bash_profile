#each time you log in to the terminal, both bashrc and bash_profile are read and executed
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'