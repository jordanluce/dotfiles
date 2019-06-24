set encoding=utf8
syntax on

set listchars=tab:▸\ ,eol:¬
set list

set wrap
set ai "Auto indent
filetype plugin indent on

set hlsearch
set incsearch
set ignorecase
set smartcase

set clipboard=unnamed

let mapleader = " "

augroup QuitHelp
  au!
  au FileType help nnoremap <buffer> q :silent q<CR>
augroup END

"Use old Regex engine for Ruby syntax highlighting. The
"new one is too slow, and is occassionally badly laggy.
au FileType ruby setlocal re=1

set showcmd

"Extended % matching. % switches between opening/closing brackets. The
"matchit.vim plugin adds more, like if/elsif/else/end, XML tags, etc.
runtime macros/matchit.vim

let g:plug_url_format = 'git@github.com:%s.git'

call plug#begin('~/.vim/plugged')
Plug 'fatih/molokai'
Plug 'kchmck/vim-coffee-script'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"Themes
call plug#end()

command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')

nnoremap <Leader>f :Files<CR>

set background=dark

let g:molokai_original = 1

let g:rehash256 = 1

try
  colorscheme molokai
catch /^Vim\%((\a\+)\)\=:E185/
endtry
