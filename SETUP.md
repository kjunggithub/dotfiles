# bind 'Control-j:menu-complete-backward'

######################################################################
# homebrew
######################################################################
# brew install coreutils git git-extras hubflow tmux reattach-to-user-namespace bash-completion z vcprompt httpie rmtrash gawk rename curl wget node ffmpeg --with-fdk-aac diff-so-fancy
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook

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

# complete -o default -o nospace -F _git g


defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
