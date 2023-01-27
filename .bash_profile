#each time you log in to the terminal, both bashrc and bash_profile are read and executed
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [[ -z "$TERRAFORM_CLOUD" ]]; then
  mkdir ~/.terraform.d/
  echo '{
    "credentials": {
      "app.terraform.io": {
        "token": "'$TERRAFORM_CLOUD'"
      }
    }
  }' > ~/.terraform.d/credentials.tfrc.json
  chmod 700 ~/.terraform.d/credentials.tfrc.json
fi

if command -v aws_completer &> /dev/null
then
    complete -C $(which aws_completer) aws
fi
