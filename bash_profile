#list of homebrew files to install
# coreutils, git, git-extras, hubflow, tmux, bash-completion
# brew install macvim --override-system-vim
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

# git branch autocomplete
if [ -f ~/scripts/git-completion.bash ]; then
  source ~/scripts/git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# activate z (brew install z)
. `brew --prefix`/etc/profile.d/z.sh

# cool guy history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# cool guy autocomplete (tab and shift-tab)
bind 'Tab: menu-complete'
bind '"\e[Z": complete'
# bind 'Control-j:menu-complete-backward'

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

# prompt colours
BOLD="\[\e[1m\]"
UNDERLINE="\[\033[4m\]"
DEFAULT="\[\e[0m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
CYAN='\[\e[1;36m\]'
MAGENTA="\[\033[1;31m\]"
YELLOW="\[\033[1;33m\]"
GREEN="\[\033[1;32m\]"
PURPLE="\[\033[1;35m\]"
BLACK="\[\033[0;30m\]"
WHITE="\[\033[1;37m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"

# ps1 options
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

# symbols (http://panmental.de/symbols/info.htm)
# install vcprompt (brew install vcprompt)
# export PS1="$RED\@$DEFAULT: $YELLOW\u@\h$DEFAULT in:$BLUE \w\$(vcprompt -f '\n$DEFAULT%n$DEFAULT sha: $GREEN%r$DEFAULT branch: $GREEN%b%m%u')\n$GREEN"≫" $DEFAULT"

# hipster PS1
VCPROMPT_FORMAT=
export PS1="$RED\@$DEFAULT in:$BLUE \W\$(vcprompt  -f '$DEFAULT on: $GREEN%b$PURPLE %m%u')\n$GREEN"≫" $DEFAULT"

# editor
export EDITOR='sublime -nw'
# export EDITOR='vim'

# mamp (change php version in mamp and in the path as needed)
# PATH=/Applications/MAMP/bin/php/php5.4.19/bin:/Applications/MAMP/Library/bin:/usr/local/bin:$HOME/.rvm/bin:$PATH

# homebrew (homebrew php + apple mysql)
PATH=/usr/local/mysql/bin:/usr/local/bin:$HOME/.rvm/bin:$PATH
export PATH="$PATH"

# projects
# laravel
alias plaravel='cd /Users/kjung/Sites/laravel.dev/proj && sublime --project laravel.dev.sublime-project && open http://laravel.dev && cd .. && cd public'
alias rlaravel='cd /Users/kjung/Sites/laravel.dev/public/ && art migrate:refresh --seed'
alias cplaravel='/Users/kjung/Scripts/sync\ laravel.command'

# promo
alias ppromo='cd /Users/kjung/Sites/promo.dev/proj && sublime --project promo.dev.sublime-project && open http://promo.dev && cd .. && cd public'
alias rpromo='cd /Users/kjung/Sites/promo.dev/public/ && art migrate:refresh --seed'
alias cppromo='/Users/kjung/Scripts/sync\ promo.command'

# resume
alias presume='cd /Users/kjung/Sites/resume.dev/proj && sublime --project resume.dev.sublime-project && open http://resume.dev && cd .. && cd public'

# dev
alias laravel="composer create-project laravel/laravel $1 --prefer-dist"
alias slaravel='screen -dmS laravelSERV php artisan serve && open http://localhost:8000/'
alias art='php artisan'
alias cdump='composer dump-autoload -o'
alias cctags='ctags -R -f .tags'
alias vhosts="sudo sublime /etc/apache2/extra/httpd-vhosts.conf"
alias hosts="sudo sublime /etc/hosts"
alias apacheini='sublime  /etc/apache2/httpd.conf'
alias phpini54="sudo sublime /usr/local/etc/php/5.4/php.ini"
alias rapache="sudo apachectl restart"

# tmux
alias tmux="tmux -2"
# alias tmux="TERM=screen-256color-bce tmux -2"

# unix
alias systemup="brew update && brew cleanup && sudo gem update --system && sudo gem up && sudo rm -f /private/var/log/asl/*.asl"
alias permrepair="diskutil repairPermissions /"
alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias sscreen="screen -dmS $1 $2"
alias rscreen="screen -r $1"
alias addvhost='sudo sh /Users/kjung/Scripts/vhost.sh'
alias profile='cd ~ && sublime ~/.bash_profile && source ~/.bash_profile'
alias gemup='sudo gem update --system && sudo gem up'
alias brewup='brew update && brew upgrade'
alias brewdoc='brew doctor'
alias osxup='sudo softwareupdate -i -a'
alias slowon='sudo ipfw pipe 1 config bw 50KByte/s && sudo ipfw add 1 pipe 1 src-port 80'
alias slowoff='sudo ipfw delete 1'
alias dupes='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder'
alias ff="open -a firefox $*"
alias c="clear"
alias ..="cd .."
alias ping="ping -c 5" # ping 5 times ‘by default’
alias grep="grep --color=auto"
alias stfu="osascript -e 'set volume output muted true'"
alias loud="osascript -e 'set Volume 10'"
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias lanip="netstat -rn |grep default"
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
alias ka="killall"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias gz="tar -zcvf"
alias q='exit'
alias f='open .'
alias startvpn="ssh -ND 9999 kjung@kjungserv2.vps"
alias enableac3='defaults write com.cod3r.a52codec attemptPassthrough 1'
alias disableac3='defaults delete com.cod3r.a52codec attemptPassthrough'
alias lockscreen='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias killmysql='killall -9 mysqld'
alias ffprofile='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p'
alias startwebserver='python -m SimpleHTTPServer 8000'
alias redo='sudo \!-1'
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

# change dir
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# doge git
alias wow="git status"
alias such='git'
alias very='git'
alias much='git'
alias so='git'

# git
git config --global --add color.ui true

# get pretty git history
alias gitlf="git log --graph --decorate --pretty=oneline --abbrev-commit"
# lola = git log --graph --decorate --pretty=oneline --abbrev-commit --all
alias gitl="git log"
alias gits="git status"
alias gitt="git tag"
alias gitpull="git pull origin master"
alias gitpush="git push origin master"
alias gitb="git branch"
alias gitbr="git branch -r"
alias gitcheckout="git checkout -b"
alias gitadd.="git add --all"
alias gitaddu="git add -u"
alias gitd="git rm"
alias gitreset="git reset --soft HEAD~1"
alias gitbox="open -a gitbox"
alias gitweb='open http://${PWD##*/}/'
alias template='git clone git@kevinjung.ca:bootlace.git'

# virtualbox
alias startsqueeze='vboxmanage startvm "Squeeze" --type headless'
alias start8='vboxmanage startvm "8" --type headless'
alias kill8='vboxmanage controlvm 8 acpipowerbutton'
alias save8='vboxmanage controlvm 8 savestate'
alias gui8='vboxmanage controlvm 8 savestate ; virtualbox'
alias cfp='fp | pbcopy'

#functions (most used commands from history)
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

function opengit {
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

function gitc {
	git commit -m "$1"
}

alias gitcav='git commit -av'

function gitcam {
	git commit -am "$1"
}

function gita {
	git add "$*"
}

## alias to copy it to the clipboard

## !! -repeat last cmd
## !$ -repeat last paramter of last cmd
## !^ -repeat first parameter of last cmd

function entdir {
	mkdir $1
	cd $1
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# tips
# ctrl-E # move cursor to end of line
# ctrl-A # move cursor to beginning of line