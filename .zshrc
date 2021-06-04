ZSH_THEME="sorin"
DISABLE_UPDATE_PROMPT=true

plugins=(
  git 
  archlinux 
  docker 
#	fzf
	ng
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.aliases ]] || source ~/.aliases

export PATH=/home/gilberto/.fnm:$PATH
eval "`fnm env`"
