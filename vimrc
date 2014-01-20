" Use pathogen to manage plugins
execute pathogen#infect()
 
" Use vim defaults
set nocompatible
" Turn on syntax highlighing
syntax on
filetype plugin indent on
 
" New lines copy indent of previous lines
"set autoindent
set smartindent
 
" Show the mode vim is in ex -- INSERT --
set showmode
 
" Tab-completion like bash
set wildmode=longest,list
 
" Whitespacing
set shiftwidth=2
set tabstop=2
set expandtab
 
" Set backspacing over whitespaces
set backspace=indent,eol,start
 
" Highlight matching characters
set showmatch
set matchtime=1
 
"---- Searching
" Highlight search matches
set hlsearch
" Incremental searching (find as you type)
set incsearch
" Ignore casesensitive search if all lowercase
set ignorecase smartcase
 
 
"--- Visuals
" Set line numbers
set number
set t_Co=256
 
" vim-airline configs
set laststatus=2
let g:airline_powerline_fonts = 1
set noshowmode
let g:bufferline_echo = 0
set encoding=utf-8
 
" Set the colorscheme
colorscheme molokai

"Key mappings
let mapleader=","
map <F8> :NERDTreeToggle<CR>
