set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim "set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'govim/govim'

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
set nu
set laststatus=2

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" This file represents the minimal .vimrc needed to work with govim.
"
" We also include a number of suggested settings that we think the majority of
" users will like/prefer.

set nocompatible
set nobackup
set nowritebackup
set noswapfile

filetype plugin on

""""""""""""""""""""""""""""""""""""""govim config"""""""""""""""""""""""""""""""""""""""""""""""""""""""


set mouse=a

" To get hover working in the terminal we need to set ttymouse. See
"
" :help ttymouse
"
" for the appropriate setting for your terminal. Note that despite the
" automated tests using xterm as the terminal, a setting of ttymouse=xterm
" does not work correctly beyond a certain column number (citation needed)
" hence we use ttymouse=sgr
set ttymouse=sgr

" Suggestion: By default, govim populates the quickfix window with diagnostics
" reported by gopls after a period of inactivity, the time period being
" defined by updatetime (help updatetime). Here we suggest a short updatetime
" time in order that govim/Vim are more responsive/IDE-like
set updatetime=500

" Suggestion: To make govim/Vim more responsive/IDE-like, we suggest a short
" balloondelay
set balloondelay=250

" Suggestion: Turn on the sign column so you can see error marks on lines
" where there are quickfix errors. Some users who already show line number
" might prefer to instead have the signs shown in the number column; in which
" case set signcolumn=number
set signcolumn=yes

" Suggestion: Turn on syntax highlighting for .go files. You might prefer to
" turn on syntax highlighting for all files, in which case
"
" syntax on
"
" will suffice, no autocmd required.
autocmd! BufEnter,BufNewFile *.go syntax on
autocmd! BufLeave *.go syntax off

" Suggestion: turn on auto-indenting. If you want closing parentheses, braces
" etc to be added, https://github.com/jiangmiao/auto-pairs. In future we might
" include this by default in govim.
set autoindent
set smartindent
filetype indent on

" Suggestion: define sensible backspace behaviour. See :help backspace for
" more details
set backspace=2

" Suggestion: show info for completion candidates in a popup menu
if has("patch-8.1.1904")
  set completeopt+=popup
  set completepopup=align:menu,border:off,highlight:Pmenu
endif
