" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug settings
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'benmills/vimux'
call plug#end()

" tab and space
set shiftwidth=4
set tabstop=4
set expandtab

" show commands
set showcmd

" show occurrence while tab
set wildmenu

set hlsearch
set incsearch
set ignorecase
set smartcase

set number

" wrap words
set lbr

" auto,smart indentation after enter
set ai
set si

" color 
" color zellner

" mapping Ctrl-c to Esc key
imap <C-c> <Esc>

" syntax setting
syntax on

" increase line buffer limit
set viminfo-=<50,s10

" hybrid line numbers
set number relativenumber

" set a map leader for more key combos
let mapleader = ' '
" nmap <leader>z :!make %:r<cr>
nmap <leader>z :let file_name = shellescape(expand('%:t:r'))<cr>:let full_file_name = shellescape(expand('%:p'))<cr>:call VimuxRunCommand("gcc full_file_name -o file_name")<cr>
