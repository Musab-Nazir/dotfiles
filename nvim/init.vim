" Line numbers
set number
set encoding=utf-8
" Mouse support
set mouse=a 
" Highlight the line where the cursor is
set cursorline
set tabstop=2 
set softtabstop=2
set hidden

" wrapping stuff
set textwidth=120
set colorcolumn=120
" copy/paste to system clipboard
set clipboard=unnamedplus

set completeopt=menu,menuone,noselect

call plug#begin()

" Status bar
Plug 'nvim-lualine/lualine.nvim'
" Comments
Plug 'tpope/vim-commentary'
" File tree
Plug 'scrooloose/nerdtree'
" Icons
Plug 'ryanoasis/vim-devicons'
" Themes
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'rebelot/kanagawa.nvim'
" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Treesitter - syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Git
Plug 'lewis6991/gitsigns.nvim'
" Clojure stuff
Plug 'Olical/conjure'		
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'
Plug 'guns/vim-sexp'
Plug 'dense-analysis/ale'

" LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
"LSP autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

" set linter for ale
let g:ale_linters = {'clojure': ['clj-kondo']}

"============================Keybindings================================
" custom mappings for vim-sexp
let g:sexp_mappings = {
						\ 'sexp_capture_next_element': '>)',
						\ 'sexp_capture_prev_element': '<(',
						\ 'sexp_emit_head_element': '>(',
						\ 'sexp_emit_tail_element': '<)'
						\ }

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
nnoremap <leader>df :Telescope find_files cwd=~/Code/<cr>

" Toggle comments
nnoremap <leader>cc :Commentary<cr>
nnoremap <leader>cs {v}:Commentary<cr>

" Smart way to move between panes
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

" Load extra lua config for LSP, autocomplete and gitsigns
" lua require("config")

" QoL improvements
nnoremap Y y$ 
nnoremap <leader>s :up<cr>
nnoremap <F4> :lua package.loaded.config = nil <cr>:source ~/.config/nvim/init.vim <cr>

colorscheme kanagawa
