set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim "set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'dgryski/vim-godef'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable

let mapleader = ','
set nobackup
set hlsearch "高亮显示结果
set incsearch "在输入要搜索的文字时，vim会实时匹配

set tabstop=4 "让一个tab等于4个空格
set softtabstop=4
set shiftwidth=4 "设置默认缩进宽度为4
set expandtab "输入的tab自动转化为4个空格
retab! "强制已有的tab转化为4个空格

"tagbar
nmap tb :TagbarToggle<CR> 

"nerdtree
nmap ne :NERDTreeToggle<CR> 

let g:godef_split=0
