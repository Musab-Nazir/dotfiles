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

"============================Plugins=======================================
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

" Janet
Plug 'bakpakin/janet.vim'

" Rust
Plug 'simrat39/rust-tools.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'

" LSP autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

call plug#end()

"============================Keybindings=======================================
" Use space as leader keys
let mapleader = " "
let maplocalleader = " "

" Buffer navigation
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-o> :bd<CR>

" Window navigation
map <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>

" Use paredit mappings on lisp langages
let g:sexp_filetypes = 'clojure,janet,lisp,fennel'
" remap a key that conflicts with my window navigation bindings
let g:sexp_mappings = {
  \ 'sexp_round_head_wrap_element': '',
\ }

" Toggle file tree
nnoremap <leader>. :NvimTreeToggle<cr>

" Telescope shortcuts
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fb :Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fd :Telescope diagnostics<cr>
nnoremap <leader>fp :Telescope find_files cwd=~/Code/<cr>
nnoremap <leader>fP :Telescope find_files cwd=~/.config/<cr>

" Window splits
map <leader>wv <C-w>v
map <leader>ws <C-w>s
map <leader>wq <C-w>q
map <leader>wr <C-w>r
map <leader>wl <C-w><right>
map <leader>wh <C-w><left>
map <leader>wj <C-w><down>
map <leader>wk <C-w><up>

" Save shortcut
nnoremap <leader>s :up<cr>
" Reload all configs
nnoremap <F4> :lua package.loaded.config = nil <cr>:source ~/.config/nvim/init.vim <cr>
" =============================================================================

" Load extra lua config for LSP, autocomplete and gitsigns
lua require("config")
