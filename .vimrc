" colors
set t_Co=256
colorscheme wombat256my
"colorscheme desert256
"colorscheme distinguished

" Bundles {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'fugitive.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'tpope/vim-commentary'
Bundle 'altercation/vim-colors-solarized'

Bundle 'ervandew/supertab'

Bundle 'lukerandall/haskellmode-vim'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'Shougo/neocomplcache'

filetype plugin indent on
" }}}

" Powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'fancy'

" I have no idea what is this
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

map T :TaskList<CR>
"map P :TlistToggle<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Remap code completion to Ctrl+Space {{{2
inoremap <Nul> <C-x><C-o> 
inoremap <Nul> <C-n>

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                       " show line and column number
syntax on                       " syntax highlighting
set showcmd                     " show (partial) command in status line
set number                      " line numbers
set hlsearch                    " highlight search items

filetype on

"" Highlight long linex
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" --------------------------------------------------------------------------------
"" File specific
" --------------------------------------------------------------------------------
au BufRead,BufNewFile *.php set expandtab
au BufRead,BufNewFile *.php set shiftwidth=2
