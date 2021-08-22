export DISABLE_UPDATE_PROMPT=true
ZSH_THEME="sorin"
plugins=(
  git 
  fzf
)

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.aliases ]] || source ~/.aliases

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
export PATH=/home/gilberto/.fnm:$PATH
eval "`fnm env`"
