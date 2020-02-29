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

" Initialize plugin system
call plug#end()

let g:airline_theme='base16_grayscale'
let g:airline#extensions#tmuxline#enabled = 0


set exrc
set background=dark
set splitbelow
set splitright
set nu
set relativenumber


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Automatically delete all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

