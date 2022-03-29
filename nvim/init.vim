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
set textwidth=120
set colorcolumn=120
" copy/paste to system clipboard
set clipboard=unnamedplus

call plug#begin()

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Comments
Plug 'tpope/vim-commentary'
" File tree
Plug 'scrooloose/nerdtree'
" Icons
Plug 'ryanoasis/vim-devicons'
" Themes
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'rebelot/kanagawa.nvim'
" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Git
Plug 'lewis6991/gitsigns.nvim'
" Clojure stuff
Plug 'Olical/conjure'		
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'
Plug 'guns/vim-sexp'
Plug 'dense-analysis/ale'

call plug#end()

" show buffer top bar
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {'clojure': ['clj-kondo']}

" set airline theme
let g:airline_theme='base16_atelier_cave'
let g:sexp_mappings = {
						\ 'sexp_capture_next_element': '>)',
						\ 'sexp_capture_prev_element': '<(',
						\ 'sexp_emit_head_element': '>(',
						\ 'sexp_emit_tail_element': '<)'
						\ }

lua require('gitsigns').setup()

"============================Keybindings================================
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-o> :bd<CR>

" Toggle file tree
nnoremap <C-t> :NERDTreeToggle<CR>

" use space as leader keys
let mapleader = " "
let maplocalleader = " "

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Toggle comments
nnoremap <leader>cc :Commentary<cr>
nnoremap <leader>cs {v}:Commentary<cr>

" QoL improvements
nnoremap Y y$ 
nnoremap ; :
vnoremap ; :
nnoremap <leader>s :up<cr>

" Smart way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

colorscheme kanagawa
