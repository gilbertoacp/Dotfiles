export DISABLE_UPDATE_PROMPT=true

plugins=(
  git 
  fzf
)

source $ZSH/oh-my-zsh.sh
bindkey -e
autoload -Uz vcs_info
autoload -U colors && colors
zstyle ':vcs_info:*' enable git 
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
# 
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='!' 
    fi
}
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[blue]%}(%{$fg[red]%}%m%u%c%{$fg[yellow]%}%{$fg[magenta]%} %b%{$fg[blue]%})"
PROMPT="%B%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%m %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+="\$vcs_info_msg_0_ "

[[ ! -f ~/.aliases ]] || source ~/.aliases

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
export PATH=/home/gilberto/.fnm:$PATH
eval "`fnm env`"
