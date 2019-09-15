set linebreak "sirve para que las palabras no queden cortadas al final de la pantalla

set scrolloff=999 "sirve para emular el scroll de máquina de escribir

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'skywind3000/vim-keysound'
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-pencil'
Plugin 'scrooloose/nerdtree'
"Plugin 'junegunn/limelight.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Iniciar Plugin Pencil automáticamente para markdown y text
set nocompatible
filetype plugin on       " may already be in your .vimrc

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Iniciar Keysound automáticamente
let g:keysound_enable = 1
" Poner tema máquina de escribir. Los que hay son: default, typewriter, mario,
" sword, bubble
let g:keysound_theme = 'typewriter'

" Poner corrección ortográfica al español
" Pongo el nospell porque al parecer el setlocal lo activa y lo marca
" automático, así que lo desconecto
setlocal spell spelllang=es
set nospell
