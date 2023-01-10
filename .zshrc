[[ $- != *i* ]] && return

zsh_autosuggestions_path="/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
zsh_syntax_highlighting_path="/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
key_bindings_path="/usr/share/fzf/key-bindings.zsh"

SAVEHIST=10000
HISTSIZE=10000
HISTFILE="$HOME/.cache/.zsh_history"

if [ -d "$HOME/.fnm" ]; then
  export PATH=$HOME/.fnm:$PATH
  eval "`fnm env`"
fi

if [ -x "/usr/bin/exa" ]; then 
  alias ls="exa --icons"
else
  alias ls='ls --color=auto'
fi

alias ll='ls -lah --group'
alias ..='cd ..'
alias tree="exa -Ta"

alias sail='./vendor/bin/sail'

[ -x "/usr/bin/bat" ] && alias cat="bat --no-paging --style plain"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

[[ $TERMINAL != 'kitty' ]] || alias ssh="kitty +kitten ssh"

alias df='df -h'                          
alias free='free -m'                     

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias psmem='ps auxf | sort -nr -k 4 | head -5'

alias pscpu='ps auxf | sort -nr -k 3 | head -5'

alias dotfiles="/usr/bin/env git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
[ -d $HOME/.dotfiles ] && alias quickUpdate="dotfiles add -u && dotfiles commit -m \"update\" && dotfiles push" 
alias dots='dotfiles'

alias update='sudo pacman -Syyu'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias clean-pacman='sudo pacman -R $(pacman -Qtdq) 2>/dev/null || echo "No orphan packages found yet!"'

alias xfreerdp='xfreerdp /bpp:32 /w:1920 /h:1000'

alias urldecode='sed "s@+@ @g;s@%@\\\\x@g" | xargs -0 printf "%b"'

## qemu-img convert -O vdi gnome.qcow2 gnome.vdi
#
alias sysst="sudo systemctl status"

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

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  '^[[3;5~' kill-word
bindkey '5~' kill-word

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
