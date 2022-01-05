[[ $- != *i* ]] && return

if [ -d "$HOME/.oh-my-zsh" ]; then
  export ZSH="$HOME/.oh-my-zsh"
  ZSH_THEME="sorin"
  plugins=( git fzf )
  DISABLE_UPDATE_PROMPT=true
  source $ZSH/oh-my-zsh.sh
fi

[ -f ~/.aliases ] && source ~/.aliases

[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && \
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && \
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

if [ -d "$HOME/.fnm" ]; then
  export PATH=$HOME/.fnm:$PATH
  eval "`fnm env`"
fi

[ -e ~/.dircolors ] && eval $(dircolors -b ~/.dircolors) ||
    eval $(dircolors -b)

function quickUpdate() {
 dotfiles add -u && dotfiles commit -m "update" && dotfiles push 
}
