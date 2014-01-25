#!/bin/bash

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
PATH=$PATH:/usr/local/texlive/2012/bin/x86_64-darwin:/usr/local/heroku/bin
export PATH

source ~/perl5/perlbrew/etc/bashrc

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export COPYFILE_DISABLE=true
export EDITOR=vi
export CLUSTER=~/.clusterrc

alias ovftool="/Applications/VMware\ OVF\ Tool/ovftool"
alias subl="/Applications/Sublime\ Text\ 2.app//Contents/SharedSupport/bin/subl"

complete -W "$( dzil | awk '/^[[:space:]]+[[:alpha:]]+: [[:alpha:]]+/ { print $1 }' | sed 's;:;;' )" dzil
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

calendar -f /usr/share/calendar/calendar.usholiday
calendar -f ~/.calendar.wilkus
