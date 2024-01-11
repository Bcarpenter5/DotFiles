set nocompatible              " be iMproved, required
filetype off                  " required


set encoding=utf-8
set number relativenumber
set mouse=a
set autoindent expandtab tabstop=2 shiftwidth=2
set scrolloff=10
set wildmenu
set omnifunc=htmlcomplete#CompleteTags



set path+=${workspaceFolder}/**
set path+=${workspaceFolder}/lib/Inc
set path+=/home/bjc1269/Documents/github/libraries/lib**
set path+=/home/bjc1269/Documents/github/libraries/lib/hc12c/lib/**
set path+=/home/bjc1269/Arduino/libraries/**
set tags+=/usr/include/**/tags

set tags+=${workspaceFolder}/**
set tags+=${workspaceFolder}/lib/Inc
set tags+=/home/bjc1269/Documents/github/libraries/lib/**
set tags+=/home/bjc1269/Documents/github/libraries/lib/hc12c/lib/**
set tags+=/home/bjc1269//Documents/github/libraries/lib/hc12c/include/**
set tags+=/home/bjc1269/Arduino/libraries/**


au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tclem/vim-arduino.git'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'seb-h-k/phpcomplete.vim'
Plugin 'vim-autoformat/vim-autoformat'
"Plugin 'prabirshrestha/vim-lsp'
"Plugin 'mattn/vim-lsp-settings'
Plugin 'dense-analysis/ale'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'puremourning/Vimspector'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nowrap


nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <F3> :Autoformat<CR>

let g:autoformat_autoindent = 2



