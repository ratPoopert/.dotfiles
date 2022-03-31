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
  # }}}

function color_my_prompt {
  local __user="${WHITE}\u${R}"
  local __dir="${YELLOW}\W${R}"

  PS1="\n${R}┌[$__user]─[$__dir]\n└──|> "
}
export PROMPT_COMMAND=color_my_prompt

# }}}
