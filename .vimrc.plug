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
set number
set smartcase
set tabstop=2      "set tab character to 2 characters
set expandtab      "turn tabs into spaces
set shiftwidth=2   "indent width for autoindent
set backspace=indent,eol,start

let mapleader = " "

augroup QuitHelp
  au!
  au FileType help nnoremap <buffer> q :silent q<CR>
augroup END

"Use old Regex engine for Ruby syntax highlighting. The
"new one is too slow, and is occassionally badly laggy.
au FileType ruby setlocal re=1
noremap gp :echo system('echo -n "' . expand('%:p') . '" \| pbcopy') \| echo expand('%:p')<CR>
set showcmd
"Extended % matching. % switches between opening/closing brackets. The
"matchit.vim plugin adds more, like if/elsif/else/end, XML tags, etc.
runtime macros/matchit.vim

let g:plug_url_format = 'git@github.com:%s.git'

call plug#begin('~/.vim/plugged')
Plug 'kchmck/vim-coffee-script'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-haml'
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': './install.sh'
\ }
let g:LanguageClient_serverCommands = {}
if executable('solargraph')
  let g:LanguageClient_serverCommands['ruby'] = ['solargraph', 'stdio']
endif
"Themes
Plug 'fatih/molokai'
call plug#end()

command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')

nnoremap <Leader>f :Files<CR>

set background=light

let g:molokai_original = 1

let g:ale_fixers = { 'ruby': ['rubocop'] }

let g:ale_sign_error = '>>'
highlight clear ALEErrorSign

let g:rehash256 = 1
try
catch /^Vim\%((\a\+)\)\=:E185/
endtry

"https://www.destroyallsoftware.com/file-navigation-in-vim.html
"Make the current window big, but leave others context.
set winheight=5
set winminheight=5
set winheight=24
set winwidth=39
"For some weird reason, Vim complains (“E36: Not enough room”) on this
"line if the terminal _height_ is less than 30, but sets it correctly,
"so we silence it. Increasing the terminal _width_ seems to do nothing
"to help, which is annoying.
silent! set winminwidth=39
