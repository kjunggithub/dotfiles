# includes & ps1
PLUGINS=/$HOME/.dotfiles/plugins

# mamp ps 1(change php version in mamp and in the path as needed)
PATH=/Applications/MAMP/bin/php/php5.6.10/bin:/Applications/MAMP/Library/bin:/usr/local/bin:$HOME/.rvm/bin:$PATH:$PLUGINS

# homebrew ps 1(homebrew php + mysql)
# PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$HOME/.rvm/bin:$PATH:$PLUGINS
export PATH

# set history limit
export HISTSIZE="forever!"

######################################################################
# ps1 http://news.softpedia.com/news/How-to-Customize-the-Shell-Prompt-40033.shtml
######################################################################
# ps1 colours
BOLD="\e[1m"
UNDERLINE="\033[4m"
DEFAULT="\e[0m"
GREEN="\033[0;32m"
LIGHT_GREEN="\033[1;32m"
CYAN='\e[1;36m'
MAGENTA="\033[1;31m"
YELLOW="\033[1;33m"
GREEN="\033[1;32m"
PURPLE="\033[1;35m"
BLACK="\033[0;30m"
WHITE="\033[1;37m"
BLUE="\033[0;34m"
LIGHT_BLUE="\033[1;34m"
RED="\033[0;31m"
ORANGE="\033[38;5;214m"

######################################################################
# exports
######################################################################
# hipster ps1
export PS1="$RED\$(fuzzyclock)$DEFAULT in:$LIGHT_BLUE \W\$(vcprompt -f '$DEFAULT on: $GREEN%b$PURPLE %m%u')\n$GREEN"≫" $DEFAULT"

# editor`
export EDITOR='subl -nw'
# export EDITOR='vim'

# cs fixer
# $ composer global require fabpot/php-cs-fixer @stable
# export PATH="$PATH:$HOME/.composer/vendor/bin"
# $ brew tap josegonzalez/homebrew-php
# $ brew install php-cs-fixer

# crontab
# 0 22 * * * /Users/kjung/Scripts/sync\ music.command > /dev/null 2>&1

######################################################################
# aliases
######################################################################
alias es='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias claravel="composer create-project laravel/laravel $1 --prefer-dist"
alias slaravel='screen -dmS laravelSERV php artisan serve && open http://localhost:8000/'
alias art='php artisan'
alias cdump='composer dumpautoload -o'
alias cctags='ctags -R -f .tags'
alias vhosts="sudo subl /etc/apache2/extra/httpd-vhosts.conf"
alias hosts="sudo subl /etc/hosts"
alias apacheini='subl /etc/apache2/httpd.conf'
alias phpini56="sudo subl /usr/local/etc/php/5.6/php.ini"
alias rapache="sudo apachectl restart"

# mysql
alias mysqlstart="/usr/local/mysql/support-files/mysql.server start"
alias mysqlstop="/usr/local/mysql/support-files/mysql.server stop"
alias mysqlrestart="/usr/local/mysql/support-files/mysql.server restart"

# phpunit
alias phpunit="phpunit --colors"

# tmux
alias tmux="tmux -2"
# alias tmux="TERM=screen-256color-bce tmux -2"

# unix
alias rmt="rmtrash"
alias sl="subl $1"
alias systemup="brew update && brew upgrade --all && brew cleanup && /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder && sudo gem update --system && sudo gem up && sudo rm -f /private/var/log/asl/*.asl && sudo purge diskutil repairPermissions /"
alias permrepair="diskutil repairPermissions /"
alias rf='source ~/.dotfiles/bash_profile'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias sscreen="screen -dmS $1 $2"
alias rscreen="screen -r $1"
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
alias ping="ping -c 5" # ping 5 times ‘by default’
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
alias startvpn="ssh -ND 9999 root@192.210.137.216"
alias enableac3='defaults write com.cod3r.a52codec attemptPassthrough 1'
alias disableac3='defaults delete com.cod3r.a52codec attemptPassthrough'
alias lockscreen='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias killmysql='killall -9 mysqld'
alias ffprofile='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p'
alias pywebserver='python -m SimpleHTTPServer 8000'
alias rubywebserver="ruby -run -e httpd . -p 8000"
alias redo='sudo \!-1'
alias ydl="youtube-dl"
alias flushdns='dscacheutil -flushcache'
alias icdropbox='HOME=$HOME/.dropbox-alt /Applications/Dropbox.app/Contents/MacOS/Dropbox &'
alias repairperm='sudo diskutil repairPermissions /'
alias terminalogs="sudo rm -f /private/var/log/asl/*.asl"
# list (adding 'r' as param reverses the order displayed)
alias la="ls -la" # list all, includes dot files
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

######################################################################
# git config
######################################################################
# git config --global --add color.ui true
# git config --global push.default tracking
# git config --global core.editor "subl -nw"
# git config --global core.editor "vim"
# git config --global user.name "Kevin Jung"
# git config --global user.email "me@kjung.ca"
# git config --global --unset diff
# git config --global --unset diff.external
# git daemon --base-path=/Users/kjung/Sites --export-all

######################################################################
# git aliases
######################################################################
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

# git log
function gl {
    git log -n $1 --pretty=format:"%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]" --decorate --date=short;
}

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

# git clean
function gcdf {
    printf "${ORANGE}'git clean -df' - HOLD UP! YOU SURE ABOUT THIS!?!? (y/n)${DEFAULT}"
    echo
    read response
    if echo "$response" | grep -iq "^y" ;
    then
        git clean -df
    fi
}

function gco {
    if [[ $1 = '.' ]];
    then
        printf "${ORANGE}'git checkout .' - HOLD UP! YOU SURE ABOUT THIS!?!? (y/n)${DEFAULT}"
        echo
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

# alias g="git"
# complete -o default -o nospace -F _git g

######################################################################
# virtualbox
######################################################################
alias startsqueeze='vboxmanage startvm "Squeeze" --type headless'
alias start8='vboxmanage startvm "8" --type headless'
alias kill8='vboxmanage controlvm 8 acpipowerbutton'
alias save8='vboxmanage controlvm 8 savestate'
alias gui8='vboxmanage controlvm 8 savestate ; virtualbox'

######################################################################
# functions
######################################################################
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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

######################################################################
# load scripts
######################################################################
# bash auto complete (brew install git bash-completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# activate z (brew install z)
if [ -f $(brew --prefix)/etc/profile.d/z.sh ]; then
  . $(brew --prefix)/etc/profile.d/z.sh
fi

######################################################################
# bindings
######################################################################
# cool guy history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# cool guy autocomplete (tab and shift-tab)
bind 'Tab: menu-complete'
bind '"\e[Z": complete'
# bind 'Control-j:menu-complete-backward'

######################################################################
# homebrew
######################################################################
# brew install coreutils git git-extras hubflow tmux bash-completion z vcprompt httpie cmus rmtrash ffmpeg gawk
# wget node
# brew install macvim --override-system-vim

######################################################################
# os x defaults
######################################################################
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
# defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# defaults write NSGlobalDomain KeyRepeat -int 0
# defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
# defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
# defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
# defaults write com.apple.finder AppleShowAllFiles TRUE
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

######################################################################
# bash tips
######################################################################
# ctrl-E # move cursor to end of line
# ctrl-A # move cursor to beginning of line
# !! -repeat last cmd
# !$ -repeat last paramter of last cmd
# !^ -repeat first parameter of last cmd

######################################################################
# ps1 colours, symbols, and options
######################################################################

# Black 0;30
# Dark Gray 1;30
# Blue 0;34
# Light Blue 1;34
# Green 0;32
# Light Green 1;32
# Cyan 0;36
# Light Cyan 1;36
# Red 0;31
# Light Red 1;31
# Purple 0;35
# Light Purple 1;35
# Brown 0;33
# Yellow 1;33
# Light Gray 0;37
# White 1;37

# ps 1 options
# \a : an ASCII bell character (07)
# \d : the date in "Weekday Month Date" format (e.g., "Tue May 26")
# \D{format} :  the format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required
# \e : an ASCII escape character (033)
# \h : the hostname up to the first '.'
# \H : the hostname
# \j : the number of jobs currently managed by the shell
# \l : the basename of the shell’s terminal device name
# \n : newline
# \r : carriage return
# \s : the name of the shell, the basename of $0 (the portion following the final slash)
# \t : the current time in 24-hour HH:MM:SS format
# \T : the current time in 12-hour HH:MM:SS format
# \@ : the current time in 12-hour am/pm format
# \A : the current time in 24-hour HH:MM format
# \u : the username of the current user
# \v : the version of bash (e.g., 2.00)
# \V : the release of bash, version + patch level (e.g., 2.00.0)
# \w : the current working directory, with $HOME abbreviated with a tilde
# \W : the basename of the current working directory, with $HOME abbreviated with a tilde
# \! : the history number of this command
# \# : the command number of this command
# \$ : if the effective UID is 0, a #, otherwise a $
# \nnn : the character corresponding to the octal number nnn
# \\ : a backslash
# \[ : begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
# \] : end a sequence of non-printing characters
