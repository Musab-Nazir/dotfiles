" Line numbers
set number
set encoding=utf-8
" Mouse support
set mouse=a 
" Highlight the line where the cursor is
set cursorline
set tabstop=2 
set shiftwidth=2 
set smarttab
set expandtab
set softtabstop=2
set hidden
" Copy/paste to system clipboard
set clipboard=unnamedplus
" Autocomplete
set completeopt=menu,menuone,noselect
" which-key timeout
set timeoutlen=500

call plug#begin()

" Theme
Plug 'rebelot/kanagawa.nvim'

" Which Key
Plug 'folke/which-key.nvim'

" Status bar
Plug 'nvim-lualine/lualine.nvim'

" Comments
Plug 'numToStr/Comment.nvim'

" File tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Treesitter - syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate'}

" Git
Plug 'lewis6991/gitsigns.nvim'

" Clojure stuff
Plug 'Olical/conjure'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'guns/vim-sexp'

" LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" LSP autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

call plug#end()

"============================Keybindings================================
" Use space as leader keys
let mapleader = " "
let maplocalleader = " "

" Buffer navigation
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-o> :bd<CR>

" Use paredit mappings on lisp langages
let g:sexp_filetypes = 'clojure,scheme,lisp,fennel'

" Toggle file tree
nnoremap <leader>fe :NvimTreeToggle<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fd <cmd>Telescope diagnostics<cr>
nnoremap <leader>fp :Telescope find_files cwd=~/Code/<cr>

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
