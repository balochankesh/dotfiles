set nocompatible

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
filetype off
let mapleader = " "

call plug#begin()

Plug 'xuhdev/vim-latex-live-preview'
Plug 'mbbill/undotree'
Plug 'vim-scripts/indentpython.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'iamcco/markdown-preview.vim'

Plug 'https://github.com/kien/ctrlp.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
Plug 'tmhedberg/SimpylFold'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'ianks/vim-tsx'
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme nord 
set background=dark


nnoremap <leader>w :w<CR>
nnoremap <leader><F5> :!python "%"<CR>
nnoremap <leader><<F6> :!firefox "%"<CR>
nnoremap <leader>p :LLPStartPreview<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>uh :UndotreeHIDE<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

let g:user_emmet_leader_key=','

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:livepreview_previewer = 'zathura'
call neomake#configure#automake('nrwi', 500)
let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_javascript_enabled_makers = ['eslint']
"let g:airline_theme='dark'
let python_highlight_all=1

source $HOME/.config/nvim/plug-config/fzf.vim
