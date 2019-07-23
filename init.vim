" Use vim-plug to manage plugins
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'chriskempson/base16-vim'

" Shows git line changes
Plug 'airblade/vim-gitgutter'

" Toggle comments for regions
Plug 'tomtom/tcomment_vim'

Plug 'easymotion/vim-easymotion'

" Show indents levels
Plug 'thaerkh/vim-indentguides'

call plug#end()

" Use vim defaults
set nocompatible

" COLORS
" ============
" Turn on syntax highlighing
syntax on
filetype plugin indent on

" Set the colorscheme using base16 profile helper
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

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
set cursorcolumn

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

" vim-indentguides
let g:indentguides_ignorelist = ['text']
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

" KEY MAPPINGS
" ==========
let mapleader=","
" Movement, move visually up and down
nnoremap j gj
nnoremap k gk

nnoremap <leader><space> :nohlsearch<CR>
map <F8> :NERDTreeToggle<CR>

" Highlight whitespace
highlight ExtraWhiteSpace ctermbg=red
match ExtraWhitespace /\s\+$/
