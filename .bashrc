#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls -al'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
