" This is a vim setup owned by Leo Liu
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set nowrap
set encoding=utf8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"
"Nerdtree
"
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree
let NERDTreeQuitOnOpen = 1
"let g:nerdtree_tabs_open_on_gui_startup=1

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab



Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='molokai'
"
"Syntastic
"
Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_enable_signs = 1
let g:syntastic_cpp_checkers = ['gcc']

let g:syntastic_auto_jump = 1
let g:syntastic_enable_balloons = 1

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'


let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_auto_refresh_includes = 1
"let b:syntastic_mode="passive"

"auto-complete
Plugin 'shougo/deoplete.nvim'


Plugin 'easymotion/vim-easymotion'
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout
"vim-colors-scheme
colorscheme molokai 

"browse tag of current file to show an overview of its structure
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

syntax enable
"
"surround eg. {} [] ()...
" Plugin 'tpope/vim-surround'
"set number



"Other settings
"set grid
set number
set cursorline
set cursorcolumn
map j gj
map k gk
"set syntax

"set windows size
set lines=48 columns=88
"set font
set gfn=Courier:h13

"set indent
set linespace=5
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent
set expandtab
set cindent

set foldmethod=syntax   


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on    " required
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

"End of Original Version

