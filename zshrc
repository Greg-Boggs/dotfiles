if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi # RVM
if [[ -s ~/.private ]] ; then source ~/.private ; fi

# Colors
autoload -U colors
colors

# Prompt
setopt prompt_subst
PROMPT='%{$fg[green]%}%~%{$fg_bold[green]%}\$ %{$reset_color%}'
RPROMPT='%{$fg[white]%} $(~/.bin/git-cwd-info.rb)%{$reset_color%}'

setopt menucomplete # show completion on first tab

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

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
