set nocompatible              " be iMproved, required
filetype off                  " required
set updatetime=100

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

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

set number
set hlsearch

"set termguicolors
colorscheme gruvbox
set background=dark
syntax on

set backspace=indent,eol,start
set list
set listchars=tab:>-,trail:·,nbsp:␣,extends:>,precedes:<
nnoremap <F3> :set hlsearch!<CR>
set showcmd


set clipboard=unnamedplus
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_show_hidden = 1
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let python_highlight_all = 1
