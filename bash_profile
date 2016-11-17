# paths and ps1
PLUGINS=/$HOME/.dotfiles/plugins
PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.rvm/bin:$PATH:$PLUGINS

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
export HISTSIZE="forever!"
export PS1="$RED\$(fuzzyclock)$DEFAULT in:$LIGHT_BLUE \W\$(vcprompt -f '$DEFAULT on: $GREEN%b$PURPLE %m%u')\n$DEFAULT"
export EDITOR='subl -nw'

# aliases
alias es='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias art='php artisan'
alias cdump='composer dumpautoload -o'
alias cctags='ctags -R -f .tags'
alias vhosts="sudo subl /etc/apache2/extra/httpd-vhosts.conf"
alias hosts="sudo subl /etc/hosts"
alias apacheini='subl /etc/apache2/httpd.conf'
alias phpini56="sudo subl /usr/local/etc/php/5.6/php.ini"
alias rapache="sudo apachectl restart"
alias phpunit="phpunit --colors"
alias tmux="tmux -2"
alias rmt="rmtrash"
alias sl="subl $1"
alias systemup="brew update && brew upgrade --all && brew cleanup && /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder && sudo gem update --system && sudo gem up && sudo rm -f /private/var/log/asl/*.asl && sudo purge"
alias permrepair="sudo /usr/libexec/repair_packages --repair --standard-pkgs --volume /"
alias rf='source ~/.dotfiles/bash_profile'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias sscreen="screen -dmS $1 $2"
alias rscreen="screen -r $1"
# ctrl a then d to detach
alias addvhost='sudo sh $HOME/.dotfiles/scripts/add-vhost.sh'
alias profile='subl ~/.bash_profile'
alias gemup='sudo gem update --system && sudo gem up'
alias brewup='brew update && brew upgrade'
alias brewdoc='brew doctor'
alias osxup='sudo softwareupdate -i -a'
alias slowon='sudo ipfw pipe 1 config bw 50KByte/s && sudo ipfw add 1 pipe 1 src-port 80'
alias slowoff='sudo ipfw delete 1'
alias dupes='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder'
alias ff="open -a firefox $*"
alias c="clear"
alias ping="ping -c 5"
alias grep="grep --color=auto"
alias stfu="osascript -e 'set volume output muted true'"
alias yell="osascript -e 'set Volume 10'"
alias wanip="curl ipecho.net/plain; echo"
alias lanip="ipconfig getifaddr en0"
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias ka="killall"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias gz="tar -zcvf"
alias q='exit'
alias f='open .'
alias fuck='sudo $(history -p \!\!)'
alias startvpn="ssh -fqCND 9999 root@192.227.143.138"
alias enableac3='defaults write com.cod3r.a52codec attemptPassthrough 1'
alias disableac3='defaults delete com.cod3r.a52codec attemptPassthrough'
alias lockscreen='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias ffprofile='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p'
alias pywebserver='python -m SimpleHTTPServer 8000'
alias rubywebserver="ruby -run -e httpd . -p 8000"
alias ydl="youtube-dl"
alias ydlb="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias flushdns='dscacheutil -flushcache'
alias icdropbox='HOME=$HOME/.dropbox-alt /Applications/Dropbox.app/Contents/MacOS/Dropbox &'
alias terminalogs="sudo rm -f /private/var/log/asl/*.asl"

# list things
alias la="ls -la"
alias lsl="ls -l"
alias ls="ls -GpF"
alias lsh='ls -lh'
alias lsm='ls -tho'
alias cfp='fp | pbcopy'
alias ps?="ps aux | grep"

# change dir
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# git rebase
alias grid='git rebase -i develop'
alias gr--c='git rebase --continue'
alias gr--a='git rebase --abort'
alias gr--s='git rebase --skip'

# git hubflow
alias ghfupd='git checkout develop && git hf update'
alias ghfupm='git checkout master && git hf update'
alias gupd='git checkout develop && git pull && git fetch --all'
alias gupm='git checkout master && git pull && git fetch --all'
alias ghfup='git hf update'
alias ghffs="git hf feature start $1"
alias ghfff="git hf feature finish $1"
alias ghffc="git hf feature cancel -f $1"
alias nah="git checkout -"

# git log
alias gla='git log --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'
alias gl5='git log -n 5 --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'
alias gl10='git log -n 10 --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short'

# git stash
alias gss="git stash save $1"
alias gsl="git stash list"
alias gsa='git apply'
alias gsd='git stash drop'
alias gsp='git stash pop'

# git diff
alias gdf="git diff"
alias gdfs="git diff --staged"
alias gdfh="git diff HEAD"
alias gs='git status'
alias gr="git reset"

# phpunit
alias puf="phpunit --filter"
alias puu="phpunit --testsuite unit"
alias pua="phpunit --testsuite acceptance"

# git log
function gl {
    git log -n $1 --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short;
}

# git clean
function gcdf {
    ORANGE="\033[38;5;214m"
    DEFAULT="\033[0m"

    echo -e "${ORANGE}git clean -df - HOLD UP! YOU SURE ABOUT THIS!?!? (y/n)${DEFAULT}"
    read response
    if echo "$response" | grep -iq "^y" ;
    then
        git clean -df
    fi
}

# git checkout
function gco {
    ORANGE="\033[38;5;214m"
    DEFAULT="\033[0m"

    if [[ $1 = '.' ]];
    then
        echo -e "${ORANGE}git checkout . - HOLD UP! YOU SURE ABOUT THIS!?!? (y/n)${DEFAULT}"
        read response
        if echo "$response" | grep -iq "^y" ;
        then
            git checkout \.
        else
            return
        fi
    fi

    git checkout $1
}

function squash {
    git reset --soft HEAD~$1 &&
    git commit
}

# copy current branch name and pipe it to the clipboard
alias gcbps="gcbn | cut -d _ -f 1 | sed 's/.*[/]//g' && gcbn | cut -d _ -f 1 | sed 's/.*[/]//g' | pbcopy"
function gcbn { command $(git symbolic-ref --short HEAD | pbcopy) && echo $(pbpaste)  ;}
function gcbsn { command $(git symbolic-ref --short HEAD | awk -F'feature/' '{print $2}' | pbcopy) && echo $(pbpaste) ;}

alias gb="git branch"
alias gbr="git branch -r"
alias ga.="git add --all"
alias gap="git add -p"
alias gau="git add -u"
function ga { git add "$*" ;}

# git push
alias gpo="git push origin $1"
function gpof { git push origin +"$@" ;}

# git reset
# to get the latest from origin and wipe local,
# run gitrh within a bracn other than develop.
# for ex 'git reset --hard origin/branch'
alias grh="git reset --hard $1"
function grho { git reset --hard origin/"$@" ;}

# git commit
alias gcav='git commit -av'
function gcm { git commit -m "$1";}
function gcam { git commit -am "$1";}

# virtualbox
alias startsqueeze='vboxmanage startvm "Squeeze" --type headless'
alias start8='vboxmanage startvm "8" --type headless'
alias kill8='vboxmanage controlvm 8 acpipowerbutton'
alias save8='vboxmanage controlvm 8 savestate'
alias gui8='vboxmanage controlvm 8 savestate ; virtualbox'

# vagrant
alias vagrant='cd ~/vagrant && vagrant'

# convert unix timestamp to utc
function cet () {
    if [[ $1 = '-u' && $2 ]];
    then
        # return utc time
        echo $2
        date -u -r $2 +"%B %d, %Y. %r %Z"
    else
        # return edt time
        echo $1
        date -r $1 +"%B %d, %Y. %r %Z"
    fi
}

# backup a file
function backup() { cp "$1"{,.bak};}

# cd into dir and list
function cl { cd "$@" && ls -la; }

# functions (most used commands from history)
function htop {
  history | awk '{ print $2 }' | sort | uniq -c |sort -rn | head
}

# credit: http://nparikh.org/notes/zshrc.txt
# Usage: extract <file>
# Description: extracts archived files / mounts disk images
# Note: .dmg/hdiutil is Mac OS X-specific.
function extract () {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)  tar -jxvf $1                        ;;
            *.tar.gz)   tar -zxvf $1                        ;;
            *.bz2)      bunzip2 $1                          ;;
            *.dmg)      hdiutil mount $1                    ;;
            *.gz)       gunzip $1                           ;;
            *.tar)      tar -xvf $1                         ;;
            *.tbz2)     tar -jxvf $1                        ;;
            *.tgz)      tar -zxvf $1                        ;;
            *.zip)      unzip $1                            ;;
            *.ZIP)      unzip $1                            ;;
            *.pax)      cat $1 | pax -r                     ;;
            *.pax.Z)    uncompress $1 --stdout | pax -r     ;;
            *.Z)        uncompress $1                       ;;
            *)          echo "'$1' cannot be extracted/mounted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# open current git repo in github
function gitweb {
    if [ -d .git ]; then
        remotes=$(git remote -v | awk -F'git@github.com:' '{print $2}' | cut -d" " -f1)
        if [ -z "$remotes" ];
        then
            remotes=$(git remote -v | awk -F'https://github.com/' '{print $2}' | cut -d" " -f1)
        fi

        remote_url=$(echo $remotes | cut -d" " -f1)
        url="https://github.com/"
        url="${url}${remote_url}"
        open $url
    else
      echo "Not a git repo"
    fi;
}

# open current finder path in terminal
function cf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"
    else
        echo 'No Finder window found' >&2
    fi
}

# create a folder and cd into it
function entdir {
    mkdir $1
    cd $1
}

function lsp {
    for f in $(ls -a); do stat -f "%A %N" $f; done;
}

# source rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# bash auto complete (brew install git bash-completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
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

export TUMBLR_USERNAME="MY_FANTASTIC_TUMBLR_USERNAME"
export TUMBLR_CONSUMER_KEY="MY_DAUNTING_OAUTH_CONSUMER_KEY"
