[ -z "$PS1" ] && return

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="exit:clear"

export EDITOR=vim
export VISUAL=vim

# PATH Variables {{{

# Format:
# export PATH="<directory>:$PATH"
# For example,
export PATH="~/bin:$PATH"
# prepends '~/bin' to the existing variables.

# }}}

# PROMPT {{{

  # COLORS {{{
    BLACK='\[$(tput setaf 0)\]'
    RED='\[$(tput setaf 1)\]'
    GREEN='\[$(tput setaf 2)\]'
    YELLOW='\[$(tput setaf 3)\]'
    BLUE='\[$(tput setaf 4)\]'
    MAGENTA='\[$(tput setaf 5)\]'
    CYAN='\[$(tput setaf 6)\]'
    WHITE='\[$(tput setaf 7)\]'
    R='\[$(tput setaf 6)\]'
    RESET='\[$(tput sgr0)\]'
  # }}}

function color_my_prompt {
  local __user="${WHITE}\u${R}"
  local __dir="${WHITE}\W${R}"
  local __git_branch_color="${GREEN}"
  local __git_branch=$(__git_ps1);

  # color branch name depending on state {{{
  if [[ "${__git_branch}" =~ "*" ]]; then
    __git_branch_color="${RED}"
  elif [[ "${__git_branch}" =~ "$" ]]; then
    __git_branch_color="${YELLOW}"
  elif [[ "${__git_branch}" =~ "%" ]]; then
    __git_branch_color="${MAGENTA}"
  elif [[ "${__git_branch}" =~ "+" ]]; then
    __git_branch_color="${BLUE}"
  fi
  # }}}

  PS1="\n${R}┌[$__user]─[$__dir]$__git_branch_color$__git_branch${R}\n└──|> ${RESET}"

  # Enable git bash completion options {{{
  if [ -f ~/etc/bash_completion.d/git_prompt ]; then
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWUPSTREAM="auto"
    GIT_PS1_HIDE_IF_PWD_IGNORED=true
    GIT_PS1_SHOWCOLORHINTS=true
    . ~/etc/bash_completion.d/git_prompt
  fi
  # }}}
}
export PROMPT_COMMAND=color_my_prompt

# }}}
