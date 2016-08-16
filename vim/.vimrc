" mandatory defaults
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'  " nice colors!
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enabling 256 bit coloring
set term=screen-256color
colorscheme wombat256

" set tab as 4 spaces
set tabstop=4
	
