set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

Plugin 'mbbill/undotree'
Plugin 'vim-scripts/indentpython.vim'

Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim.git'
Plugin 'rking/ag.vim.git'

Plugin 'tpope/vim-fugitive'

Bundle 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on


" Set of basic vim options
set noerrorbells
set vb t_vb=
set background=dark
set undodir=~/.vim/undodir
set undofile
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set nowrap
set colorcolumn=80
set autochdir " sets the cwd to whatever file is in view.  This allows better
              " omni completion.


let python_highlight_all=1
syntax on
