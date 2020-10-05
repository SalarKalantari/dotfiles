" VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"VimWiki
let g:vimwiki_conceallevel = 0

" Airline
let g:airline_theme='base16_grayscale'
let g:airline#extensions#tmuxline#enabled = 0

" SuperTab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Jedi
let g:jedi#use_tabs_not_buffers = 1

" Termdebug
let g:termdebug_popup = 0
let g:termdebug_wide = 163

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
map <C-n> :Lexplore <CR>

" diable recording
map q <Nop>

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

" Enable folding
set foldmethod=syntax

" Open all folds
set foldlevel=99


" Enable folding with the spacebar
nnoremap <space> za

" Make your code pretty
syntax on
filetype plugin on
set conceallevel=0
set nocp



" To add proper PEP 8 indentaion
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

au BufNewFile,BufRead *.cpp
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set cindent |
	\ set smartindent


au BufNewFile,BufRead *.h ", *.js, *.html, *.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2


" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Highlight the Current Line
" set cursorline
" set cursorcolumn
" :hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white "guibg=darkred guifg=white
" :hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white "guibg=darkred guifg=white
" :nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
" hi cursorline cterm=none term=none
" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline
" highlight CursorLine guibg=#303000 ctermbg=234



" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Declare the list of plugins

" YouCompleteMe a code-completion engine for Vim
Plug 'ycm-core/YouCompleteMe'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Simple tmux statusline generator with support for powerline symbols and vim/airline/lightline statusline integration
Plug 'edkolev/tmuxline.vim'

" Comment stuff out.
Plug 'tpope/vim-commentary'

" Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" vim-flake8 is a Vim plugin that runs the currently open file through Flake8, a static syntax and style checker for Python source code.
Plug 'nvie/vim-flake8'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).
Plug 'ervandew/supertab'

" This is the development code of Nvim-R which improves Vim's support to edit R code.
Plug 'jalvesaq/Nvim-R'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" vim-bracketed-paste enables transparent pasting into vim. (i.e. no more :set paste!)
Plug 'ConradIrwin/vim-bracketed-paste'

"VimWiki is a personal wiki for Vim -- a number of linked text files that have their own syntax highlighting.
Plug 'vimwiki/vimwiki'

"Preview markdown on your modern browser with synchronised scrolling and flexible configuration
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Initialize plugin system
call plug#end()

