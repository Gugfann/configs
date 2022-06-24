set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set termguicolors
set belloff=all
set nocompatible
filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')
" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scheakur/vim-scheakur'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
call vundle#end()
filetype plugin indent on

syntax on
set nu
set noerrorbells
set visualbell
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set incsearch   " enable incremental search
set hlsearch    " enable highlight search

set smartcase
set noswapfile
set scrolloff=10
set splitbelow
set mouse=a
set nowrap

try
    colorscheme gruvbox 
catch
endtry

set background=dark

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = 'left'     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

let mapleader = " "

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>
noremap <C-P> :FZF<CR>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
