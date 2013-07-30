[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi # RVM
if [[ -s ~/.private ]] ; then source ~/.private ; fi

export PATH=/Users/tkrajcar/.bin:/usr/local/bin:/usr/local/sbin:$PATH
export DRUSH_PHP=/Applications/MAMP/bin/php/php5.3.14/bin/php

# Colors
autoload -U colors
colors

# Prompt
setopt prompt_subst
PROMPT='%{$fg[green]%}%~%{$fg_bold[green]%}\$ %{$reset_color%}'
RPROMPT='%{$fg[white]%} $(~/.bin/git-cwd-info.rb)%{$reset_color%}'

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY

setopt menucomplete # show completion on first tab

# Load completions for Ruby, Git, etc.
autoload compinit
compinit
zstyle ':completion:*' menu select
setopt completealiases

setopt auto_cd # automatically enter directories without cd
setopt EXTENDED_GLOB # super globbing

export EDITOR='mvim' # all mvim all the time
export HISTSIZE=4096 # history
export CLICOLOR="YES" # all CLI colors on 
export LSCOLORS="ExGxFxdxCxDxDxhbadExEx" # standard colors for ls

export GITHUB_USER="tkrajcar"


export TODOTXT_DEFAULT_ACTION=ls # allow just 't' to list tasks

if [ -e "$HOME/.aliases" ] ; then source "$HOME/.aliases" ; fi # aliases

# keybindings
bindkey "^P" history-search-backward
bindkey "^N" history-search-forward

# set tab title to cwd
precmd () {
  tab_label=${PWD/${HOME}/\~} # use 'relative' path
  echo -ne "\e]2;${tab_label}\a" # set window title to full string
  echo -ne "\e]1;${tab_label: -24}\a" # set tab title to rightmost 24 characters
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
