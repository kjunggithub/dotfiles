#!/usr/bin/env bash
# Ask for sudo
sudo -v

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo 'Setting MacOS Defaults...'
# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Check for software updates daily, not just once per week.
defaults write com.assple.SoftwareUpdate ScheduleFrequency -int 1

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set a really fast keyboard repeat rate.
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 15

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Require password immediately after sleep or screen saver.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 2

# Disable icons on the Desktop
defaults write com.apple.finder CreateDesktop -bool false && killall Finder

# Always open everything in Finder's column view. (The four letter codes for the view modes are icnv, Nlsv, clmv and Flwv.)
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Allow text-selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Unhide Dock instantly
defaults write com.apple.dock autohide-time-modifier -float 0

# Stop iTunes from responding to the keyboard media keys
# launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

for app in "Finder" "Dock"; do
    kill all "${app}" > /dev/null 2>&1
done
echo 'Done'

if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# tap php
brew tap homebrew/homebrew-php

echo 'Installing brew formulas...'
brew update
brew upgrade

apps=(
    coreutils
    moreutils
    findutils
    ccat
    bash-completion2
    gnu-sed --with-default-names
    grep --with-default-names
    brew-cask-completion
    homebrew/dupes/grep
    gawk
    git
    git-extras
    diff-so-fancy
    vcprompt
    httpie
    hubflow
    node
    tmux
    php71
    phpunit
    php-cs-fixer
    youtube-dl
    reattach-to-user-namespace
    z
    homebrew/dupes/openssh
    imagemagick --with-webp
    ffmpeg --with-fdk-aac
    wifi-password
    rename
    ansible
)

for app in ${apps[@]}; do
    brew install $app
done
unset -v apps

brew cleanup
brew prune
echo 'Done'

echo 'Installing brew cask formulas...'
apps=(
    flux
    imageoptim
    iterm2
    firefox
    google-chrome
    skype
    slack-beta
    zoomus
    postman
    sequel-pro
    sublime-text
    sketch
    filezilla
    the-unarchiver
    unrarx
    yakyak
    vlc
    caffeine
    virtualbox
    vagrant
    appcleaner
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    qlprettypatch
    quicklook-csv
    betterzipql
    qlimagesize
    webpquicklook
)
echo "${apps[@]}"

for app in ${apps[@]}; do
    brew cask install $app
done
unset -v apps
echo 'Done'

echo 'Installing fonts...'
cp ~/.dotfiles/fonts/Inconsolata/Inconsolata-Regular.ttf /Library/Fonts/Inconsolata-Regular.ttf
cp ~/.dotfiles/fonts/Inconsolata/Inconsolata-Bold.ttf /Library/Fonts/Inconsolata-Bold.ttf
echo 'Done'

echo 'Installing vim theme'
mkdir -p ~/.vim/colors/
cp ~/.dotfiles/vim/colors/sunburst.vim ~/.vim/colors/sunburst.vim
echo 'Done'

echo 'Creating symlinks...'
ln -s ~/.dotfiles/config/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/config/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/config/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/config/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/config/.vimrc ~/.vimrc
ln -s ~/.dotfiles/sublime ~/Library/Application\ Support/Sublime\ Text\ 3
ln -s ~/.dotfiles/config/.hyper.js ~/.hyper.js

echo 'Done'
