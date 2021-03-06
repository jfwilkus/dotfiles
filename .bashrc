#!/bin/bash

PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
PATH=$PATH:/usr/local/texlive/2012/bin/x86_64-darwin:/usr/local/heroku/bin
export PATH

export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"
export COPYFILE_DISABLE=true
export EDITOR=vi
export CLUSTER=~/.clusterrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

OS=$(uname -s)

if [ -f ~/perl5/perlbrew/etc/bashrc ]; then
  source ~/perl5/perlbrew/etc/bashrc
  source ${PERLBREW_ROOT}/etc/perlbrew-completion.bash
fi

if [ ${OS} == "Darwin" ] && [ $( which brew 2> /dev/null ) ]; then
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    source `brew --prefix`/etc/bash_completion
    export _BASH_COMPLETION=1
  fi
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
  export _BASH_COMPLETION=1
fi

if [ $(which rbenv 2> /dev/null) ]; then
  eval "$(rbenv init -)"
fi

case ${OS} in
  Darwin)
    export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
    export TERM=xterm-256color
    alias ovftool="/Applications/VMware\ OVF\ Tool/ovftool"
    ;;
  Linux)
    export TERM=xterm-256color
    ;;
  SunOS)
      export TERM=dtterm
  ;;
esac

if [ $(which dzil 2> /dev/null ) ]; then
  complete -W "$( dzil | awk '/^[[:space:]]+[[:alpha:]]+: [[:alpha:]]+/ { print $1 }' | sed 's;:;;' )" dzil
fi

if [ ${_BASH_COMPLETION} ]; then
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWSTASHSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
else
  export PS1='[\u@\h \W]\$ '
fi
