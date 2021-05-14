ZSH_THEME="gentoo"

plugins=(
  git 
  archlinux 
  docker 
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.aliases ]] || source ~/.aliases

# fnm
export PATH=/home/gilberto/.fnm:$PATH
eval "`fnm env`"
