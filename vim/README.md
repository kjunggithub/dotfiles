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
git submodule add git@github.com:vendor/repo.git vim/pack/default/start/vim-repo
git add .gitmodules vim/pack/default/start/vim-repo
git commit
```

## Updating packages
```shell
git submodule update --remote --merge
git commit
```

## Deleting a package
```shell
git submodule deinit vim/pack/default/start/vim-airline
git rm vim/pack/default/start/vim-airline
rm -Rf .git/modules/vim/pack/default/start/vim-airline
git commit
```
