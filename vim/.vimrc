" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Declare the list of plugins

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Simple tmux statusline generator with support for powerline symbols and vim/airline/lightline statusline integration
Plug 'edkolev/tmuxline.vim'

" Comment stuff out.
Plug 'tpope/vim-commentary'

" Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" jedi-vim is a VIM binding to the autocompletion library Jedi.
Plug 'davidhalter/jedi-vim'

" vim-flake8 is a Vim plugin that runs the currently open file through Flake8, a static syntax and style checker for Python source code.
Plug 'nvie/vim-flake8'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).
Plug 'ervandew/supertab'

" The NERDTree is a file system explorer for the Vim editor.
Plug 'scrooloose/nerdtree'

" This is the development code of Nvim-R which improves Vim's support to edit R code.
Plug 'jalvesaq/Nvim-R'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Vim plugin, insert or delete brackets, parens, quotes in pair
" Plug 'jiangmiao/auto-pairs'


" Initialize plugin system
call plug#end()

let g:airline_theme='base16_grayscale'
let g:airline#extensions#tmuxline#enabled = 0
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:jedi#use_tabs_not_buffers = 1

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let mapleader=" "
set exrc
set autoindent
set background=dark
set splitbelow
set splitright
set nu
set relativenumber
set ruler
set history=100
set encoding=utf-8

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Highlight the Current Line
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234
