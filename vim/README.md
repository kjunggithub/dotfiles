# vim packages

## Install existing plugins
```shell
cd ~/.dotfiles
git submodule init
git submodule update --recursive
```

## Adding a vim package
```shell
git submodule init
git submodule add https://github.com/vim-airline/vim-airline.git vim/pack/shapeshed/start/vim-airline
git add .gitmodules vim/pack/shapeshed/start/vim-airline
git commit
```

## Updating packages
```shell
git submodule update --remote --merge
git commit
```

## Deleting a package
```shell
git submodule deinit vim/pack/shapeshed/start/vim-airline
git rm vim/pack/shapeshed/start/vim-airline
rm -Rf .git/modules/vim/pack/shapeshed/start/vim-airline
git commit
```
