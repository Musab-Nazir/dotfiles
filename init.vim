" Line numbers
set number
set encoding=utf-8
" Mouse support
set mouse=a 
" Highlight the line where the cursor is
set cursorline
set tabstop=4 
set softtabstop=4
set hidden

" wrapping stuff
set textwidth=100
set colorcolumn=100
" copy/paste to system clipboard
set clipboard=unnamedplus

call plug#begin()

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" File tree
Plug 'scrooloose/nerdtree'
" Icons
Plug 'ryanoasis/vim-devicons'
" Themes
Plug 'EdenEast/nightfox.nvim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arzg/vim-colors-xcode'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Gitsigns
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
" Clojure stuff
Plug 'Olical/conjure'		
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'

call plug#end()

" show buffer top bar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" set airline theme
let g:airline_theme='ayu_mirage'
lua require('gitsigns').setup()

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
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Smart way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

colorscheme xcodedarkhc
