" Line numbers
set number
set encoding=utf-8
" Mouse support
set mouse=a 
" Highlight the line where the cursor is
set cursorline

" wrapping stuff
set textwidth=100
set colorcolumn=100

call plug#begin()

" Status bar
Plug 'vim-airline/vim-airline'
" File tree
Plug 'scrooloose/nerdtree'

" Themes
Plug 'EdenEast/nightfox.nvim'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Clojure stuff
Plug 'Olical/conjure'		
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'

call plug#end()

" show buffer top bar
let g:airline#extensions#tabline#enabled = 1

" keybindings
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-o> :bd<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" use space as leader keys
let mapleader = " "
let maplocalleader = " "

" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<cr>

colorscheme nordfox
