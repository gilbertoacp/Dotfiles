[[ $- != *i* ]] && return

zsh_autosuggestions_path="/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
zsh_syntax_highlighting_path="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
key_bindings_path="/usr/share/fzf/key-bindings.zsh"

SAVEHIST=10000
HISTSIZE=10000
HISTFILE="$HOME/.cache/.zsh_history"

if [ -d "$HOME/.oh-my-zsh" ]; then
  export ZSH="$HOME/.oh-my-zsh"
  ZSH_THEME="robbyrussell"
  plugins=( git fzf )
  DISABLE_UPDATE_PROMPT=true
  source $ZSH/oh-my-zsh.sh
fi

if [[ "$ZSH_THEME" == "spaceship" ]]; then
  SPACESHIP_PROMPT_ADD_NEWLINE=false 
  SPACESHIP_PROMPT_SEPARATE_LINE=true
fi


if [ -d "$HOME/.fnm" ]; then
  export PATH=$HOME/.fnm:$PATH
  eval "`fnm env`"
fi

[ -f ~/.aliases ] && source ~/.aliases

[ -f $zsh_autosuggestions_path ] && \
  source $zsh_autosuggestions_path 2> /dev/null

[ -f  $zsh_syntax_highlighting_path ] && \
  source $zsh_syntax_highlighting_path 2> /dev/null

[ -f $key_bindings_path ] && \
    source $key_bindings_path 2> /dev/null

[ -e ~/.dircolors ] && eval $(dircolors -b ~/.dircolors) || eval $(dircolors -b)

_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

