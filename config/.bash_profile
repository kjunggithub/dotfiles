source ~/.dotfiles/config/.aliases

# iterm2 titlebar colour rgb
printf -- $'\033]6;1;bg;red;brightness;0\a\033]6;1;bg;green;brightness;0\a\033]6;1;bg;blue;brightness;0\a'

shopt -s cdspell;

# paths and ps1
PATH=/opt/homebrew/sbin:/opt/homebrew/bin/:/usr/local/bin:/usr/local/sbin:/usr/bin:$HOME/.rvm/bin:$HOME/.composer/vendor/bin/:$HOME/.dotfiles/plugins:$PATH

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
export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1="$MAGENTA\$(fuzzyclock)$DEFAULT in:$LIGHT_BLUE \W\$(vcprompt -f '$DEFAULT on: $LIGHT_GREEN%b$PURPLE %m%u')\n$DEFAULT"
# export EDITOR='subl -nw'
export EDITOR="code -w"
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
export HISTIGNORE="&:[ ]*:exit:ls:bg:pwd:fg:history:clear:ld*:lf*:ldo*:cdf*:ldbu:c:tmk:tm"

# source rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# activate z (brew install z)
if [ -f $(brew --prefix)/etc/profile.d/z.sh ]; then
  . $(brew --prefix)/etc/profile.d/z.sh
fi

# cool guy history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# cool guy autocomplete (tab and shift-tab)
bind 'TAB: menu-complete'
bind '"\e[Z": complete'
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'

# ctrl-E # move cursor to end of line
# ctrl-A # move cursor to beginning of line

# # create or attach to tmux session
if [ -z "$TMUX" ] && [ ${UID} != 0 ]
then
    tmux new-session -A -s main
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# add this configuration to ~/.bashrc
export HH_CONFIG=hicolor         # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=100000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
