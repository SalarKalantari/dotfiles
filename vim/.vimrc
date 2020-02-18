" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Declare the list of plugins

" Tpope Plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-git'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-dadbod'

" Code folding
Plug 'tmhedberg/SimpylFold'

" Auto-Completion
Plug 'ycm-core/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'jalvesaq/Nvim-R'

" Python syntax checker
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'

Plug 'chrisbra/csv.vim'

Plug 'jnurmine/Zenburn'

" Filesystem
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'


" Git interface
Plug 'tpope/vim-fugitive'


Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Initialize plugin system
call plug#end()


let mapleader =" "
set exrc
set nu
set relativenumber
set autoindent
set laststatus=2
set background=dark
"map + ^W+
"map _ ^W-

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set splitbelow
set splitright


" System Clipboard
set clipboard=unnamed


" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1


" Enable folding with the spacebar
nnoremap <space> za

" To add proper PEP 8 indentaion
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css <here>:</here>
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Flagging unnecessary whitespace
highlight BadWhitespace ctermbg=9 guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" UTF-8 support
set encoding=utf-8

" Auto-complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Make you code pretty
let python_highlight_all=1
syntax on

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


