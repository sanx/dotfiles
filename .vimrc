set viminfo^=% " for saving buffers, i think it's not working
set hidden " for keeping undo history for hidden buffers

set nocompatible
set viminfo^=% " for saving buffers, i think it's not working
set hidden " for keeping undo history for hidden buffers

set nocompatible
set modeline
set modelines=5

" execute pathogen#infect()

set ruler
"filetype plugin indent on
syntax on

set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set hlsearch
set background=dark
set colorcolumn=81


" BEGIN from Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Plugin 'https://github.com/vim-scripts/ctrlp.vim'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'
Plugin 'https://github.com/vim-scripts/The-NERD-tree'
"Plugin 'https://github.com/vim-scripts/minibufexpl.vim'
Plugin 'https://github.com/fholgado/minibufexpl.vim'
Plugin 'https://github.com/sanx/vim-taglist'

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
" END from Vundle

Bundle 'molokai'
colorscheme molokai
" The default red color column is obnoxius in terminals.
"highlight ColorColumn ctermbg=8

" BEGIN from minibufexplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
" END from minibufexplorer

" BEGIN for MiniBufferExplorer
map <Leader>mbe :MBEOpen<cr>
map <Leader>mbc :MBEClose<cr>
map <Leader>mbt :MBEToggle<cr>
" END for MiniBufferExplorer

" BEGIN for Ctrl-P
" Set no max file limit
let g:ctrlp_max_files = 0
" don't hide .dot .filez
let g:ctrlp_show_hidden = 1
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0
" END for Ctrl-P

source ~/.vim/cscope_maps.vim
