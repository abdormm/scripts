#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export tools_dir="$HOME/tools"
export scripts_dir="$HOME/scripts"
export notes_dir="$HOME/notes"

export PATH="$tools_dir/bin:$PATH"
export PATH="$scripts_dir/bin:$PATH"
