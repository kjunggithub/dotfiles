source ~/.dotfiles/config/.aliases

# iterm2 titlebar colour rgb
printf -- $'\033]6;1;bg;red;brightness;0\a\033]6;1;bg;green;brightness;0\a\033]6;1;bg;blue;brightness;0\a'

shopt -s cdspell;

# paths and ps1
PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/.rvm/bin:$HOME/.dotfiles/plugins

# ps1 colours
BOLD="\[\033[1m\]"
UNDERLINE="\[\033[4m\]"
DEFAULT="\[\033[0m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN="\[\033[1;36m\]"
MAGENTA="\[\033[1;31m\]"
YELLOW="\[\033[1;33m\]"
GREEN="\[\033[1;32m\]"
PURPLE="\[\033[1;35m\]"
BLACK="\[\033[0;30m\]"
WHITE="\[\033[1;37m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
ORANGE="\[\033[38;5;214m\]"

# exports
export PATH

export PS1="$MAGENTA\$(fuzzyclock)$DEFAULT in:$LIGHT_BLUE \W\$(vcprompt -f '$DEFAULT on: $LIGHT_GREEN%b$PURPLE %m%u')\n$DEFAULT"
export EDITOR='subl -nw'
export LSCOLORS=ExfxExdxbxegedabagacad
export CLICOLOR=1
export PROMPT_COMMAND='echo -ne "\033]0; \007"'

# keep history up to date, across sessions, in realtime
#  http://unix.stackexchange.com/a/48113
export HISTCONTROL="erasedups:ignoreboth"       # no duplicate entries
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:pwd:fg:history:clear"

# source rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# activate bash completion
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
 fi

# activate z (brew install z)
if [ -f $(brew --prefix)/etc/profile.d/z.sh ]; then
  . $(brew --prefix)/etc/profile.d/z.sh
fi

# cool guy history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# cool guy autocomplete (tab and shift-tab)
bind 'Tab: menu-complete'
bind '"\e[Z": complete'

# ctrl-E # move cursor to end of line
# ctrl-A # move cursor to beginning of line
