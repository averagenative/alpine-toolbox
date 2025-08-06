# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

##### Oh my bash settings ######
# Path to your oh-my-bash installation.
export OSH=$HOME/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="random"
# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true
completions=(
  git
  composer
  ssh
)
aliases=(
  general
)
plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

export EDITOR=/usr/bin/vim.basic
KUBE_EDITOR=vim
EDITOR=vim

##### Aliases #####
alias iddqd='(sleep 3 && echo "(•_•)") && (sleep 3 && echo "( •_•)>⌐■-■") && (sleep 3 && echo "(⌐■_■)") && sudo su - -s /bin/bash -c "sudo su -" && chroot / /bin/bash sudo'
alias cl="clear"
alias ll='ls -lasht'

cat motd
