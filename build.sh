#! /bin/bash
basepath=$(cd `dirname $0`; pwd)
ln -s ${basepath}/.vimrc ~/.vimrc
ln -s ${basepath}/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
go get -u github.com/nsf/gocode
$GOPATH/src/github.com/nsf/gocode/vim/symlink.sh
go get -u github.com/rogpeppe/godef
