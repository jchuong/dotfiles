" Use pathogen to manage plugins
"execute pathogen#infect()
 
" Use vim defaults
set nocompatible

" COLORS
" ============
" Turn on syntax highlighing
syntax on
filetype plugin indent on
 
" Set the colorscheme
colorscheme molokai
set t_Co=256

" WHITESPACING
" ============
" New lines copy indent of previous lines
"set autoindent
set smartindent

" Whitespacing
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
 
" Set backspacing over whitespaces
set backspace=indent,eol,start
 

" UI CONFIG
" =============
" Show the mode vim is in ex -- INSERT --
set showmode
"
" Set line numbers
set number

set cursorline

" Tab-completion like bash
set wildmenu
set wildmode=longest,list

" Highlight matching characters
set showmatch
set matchtime=1
 
" Lazy redraw, faster macros?
set lazyredraw

" SEARCHING
" ============
" Highlight search matches
set hlsearch
" Incremental searching (find as you type)
set incsearch
" Ignore casesensitive search if all lowercase
set ignorecase smartcase
 
" FOLDING
" ===========
set foldenable
set foldlevelstart=10 " most folds open by defaut [0-99] where 99 is all open
set foldnestmax=10    " Nested folds
" Fold open/closes with space
nnoremap <space> za
set foldmethod=indent " folds based on indent
 
" vim-airline configs
set laststatus=2
let g:airline_powerline_fonts = 1
set noshowmode
let g:bufferline_echo = 0
set encoding=utf-8
 
" KEY MAPPINGS
" ==========
let mapleader=","
" Movement, move visually up and down
nnoremap j gj
nnoremap k gk

nnoremap <leader><space> :nohlsearch<CR>
map <F8> :NERDTreeToggle<CR>

" FUNCTIONS
" =========

" strips trailing whitespace at the end of files. this
" " is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
  " save last search & cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction
