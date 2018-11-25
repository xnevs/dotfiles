#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias nosleep='systemd-inhibit sleep infinity'

function o {
  xdg-open "$1" >/dev/null 2>&1 </dev/null &
  disown
}
