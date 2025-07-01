" **********
" * VUNDLE *
" **********
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " set runtimepath
call vundle#begin() " init Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-obsession'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ap/vim-buftabline'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go'
Plugin 'sainnhe/sonokai'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

call vundle#end()            " required
filetype plugin indent on    " required

" ***********
" * GENERAL *
" ***********

" Set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set number " Show line numbers
set virtualedit=all " turn on virtualedit

set scrolloff=2 " Scroll with the cursor three lines from the edge
set backspace=2 " Fix backspace problems

let mapleader = ";" "Remapping leader key to dvorak 'z'

" **********
" * COLORS *
" **********

" Change color scheme
syntax enable
set termguicolors
let g:sonokai_style = 'default' " default, atlantis, andromeda, shusia, maia, espresso
colorscheme sonokai
let g:lightline = { 'colorscheme': 'sonokai' }

" *************
" * REMAPPING *
" *************

" remapping window split keys
nnoremap <C-J> <C-W><C-H>
nnoremap <C-K> <C-W><C-L>
nnoremap <C-L> :bn<Enter>
nnoremap <C-H> :bp<Enter>
nnoremap <C-Q> :bd<Enter>

" command to trim whitespace
cnoreabbrev trim silent!%s/\s\+$//g<bar>w

" navigation commands (alt-j, alt-k, alt-h, alt-l)
nnoremap ∆ 10j
nnoremap ˚ 10k
nnoremap ˙ ^
nnoremap ¬ $
nnoremap <Leader>l $
nnoremap <Leader>h ^

" add a single space in front of cursor
nnoremap <Leader><space> i<space><esc>

" close buffer without closing split
cnoreabbrev bq :bp<bar>sp<bar>bn<bar>bd

" command to save and compile/checkstyle java (for cs226)
cnoreabbrev javac :w<bar>!javac
cnoreabbrev jca :w<bar>!javac *.java
cnoreabbrev javacx :w<bar>!javac -Xlint:all *.java
cnoreabbrev checkstyle :w<bar>!checkstyle -c ~/.cs226_checks.xml
cnoreabbrev make :w<bar>!make

" other shortcuts
nnoremap <Leader>w :w<Enter>
nnoremap <Leader>q :wqa<Enter>

" fzf
nnoremap <C-p> :Files<CR>

" ***********
" * PLUGINS *
" ***********

set laststatus=2
