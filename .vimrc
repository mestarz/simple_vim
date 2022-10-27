set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" 自动补全
Plugin 'valloric/youcompleteme'
" Language 
Plugin 'rust-lang/rust.vim'
Plugin 'fatih/vim-go'
" Git
Plugin 'tpope/vim-fugitive'
" Display
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Mark'
" search
Plugin 'rking/ag.vim'
" resize
" Plugin 'roman/golden-ratio'
Plugin 'breuckelen/vim-resize'

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

" Plugin tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags' " tagbar以来ctags插件
let g:tagbar_left = 1            "让tagbar在页面左侧显示，默认右边
let g:tagbar_width = 30          "设置tagbar的宽度为30列，默认40
let g:tagbar_autofocus = 1       "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
let g:tagbar_sort = 0            "设置标签不排序，默认排序

" Plugin solarized
syntax enable
set background=dark

" Plugin gruvbox
colorscheme gruvbox

" Plugin nerdtree
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>
nmap <F7> :NERDTreeToggle<CR>

" Plugin Rust
syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1

" Plugin ag
" let g:ag_prg="/home/xinxia/src/go1.19.2.src/go --vimgrep"
" let g:ag_working_path_mode="r"

" 显示行号
set number
set tabstop=4
set shiftwidth=4
set et

" vim-go
nmap <F1> :GoDebugStart<CR>
nmap <F2> :GoDebugContinue<CR>
nmap <F3> :GoDebugStep<CR>
nmap <F4> :GoDebugNext<CR>
nmap <F5> :GoDebugBreakpoint<CR>
nmap <F6> :GoDebugStop<CR>

