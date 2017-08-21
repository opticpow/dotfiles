################################################################################
#
# .bash_profile
#
# Wayne Ingram <wayne@ingram.net.au>
#

if [[ `whoami` == "root" ]]
then
  PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

alias vi=vim
alias ll='ls -al --group-directories-first --color=yes'
alias xpat='sudo puppet agent -t'
alias xrm='sudo rm'
alias xmkdir='sudo mkdir'
alias xchmod='sudo chmod'
alias xvi='sudo vim'
alias wget='wget --content-disposition'
alias tf='terraform'

set -o vi

export AWS_DEFAULT_REGION="ap-southeast-2"

if [[ `uname -o` == "Cygwin" ]]
then
  echo "Setting up for Cygwin"
  export PATH=$PATH:/cygdrive/c/Program\ Files\ \(x86\)/Graphviz2.38/bin/
fi

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

# vim: tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent:
