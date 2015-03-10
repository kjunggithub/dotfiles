# dotfiles
## install
Clone repo into home dir:
```shell
git clone git@github.com:kjunggithub/dotfiles.git ~/.dotfiles
```
Create symlinks and things:
```shell
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/sublime /Users/kjung/Library/Application\ Support/Sublime\ Text\ 3
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
git clone git://github.com/gmarik/vundle.git ~/.dotfiles/vim/bundle/vundle
vim +BundleInstall +qall
```

Todos:
* Move scripts into .dotfiles and link to them from bash_profile