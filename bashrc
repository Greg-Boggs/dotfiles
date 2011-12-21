alias vim='mvim'
export EDITOR='mvim'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function setprompt {
  local        CYAN="\[\033[0;36m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       RESET="\[\033[0m\]"

  PS1="$GREEN\w$CYAN\$(parse_git_branch)$LIGHT_GREEN$ $RESET"
}
setprompt
