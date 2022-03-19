set number                          " line numbers
set encoding=utf-8      
set mouse=a                         " enable mouse
set cursorline                      " highlight cursor line
set textwidth=100                   " wrap target
set colorcolumn=100                 " wrap helper


call plug#begin()

Plug 'scrooloose/nerdtree'          " file tree
Plug 'arcticicestudio/nord-vim'     " theme
Plug 'vim-airline/vim-airline'      " status bar

" Clojure stuff
Plug 'Olical/conjure'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'

call plug#end()

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

colorscheme nord
