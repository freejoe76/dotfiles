set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'vim-colorschemes'

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

" ULTISNIP
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"


set title
set ruler
set showcmd
set hidden
set history=200
set scrolloff=3
"set wildmenu
set tabstop=4 
set shiftwidth=4 
set expandtab
set number

" NOTES
" Capitalize the first letter of each line
" :%s#^\(.\{1}\)#\U\1#g
" Capitalize every letter that follows a space
" :%s# \(.\{1}\)# \U\1#g

" Retab shortcuts.
set et|retab
" Spaces to tabs:
set noet|retab!
" Retab shortcuts.
set et|retab
" SuperRetab (only indentions), via http://vim.wikia.com/wiki/Super_retab
command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

" Tabs on PHP files
autocmd Filetype php setlocal noexpandtab

"call pathogen#infect()
execute pathogen#infect()


autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

imap jj <Esc>

" Map the leader key. Instead of \, it's now ,
let mapleader = ","

" Shift key fixes
cmap WQ wq
cmap wQ wq
cmap Tabe tabe
cmap Bq bq
cmap Bn bn
cmap BN bn
cmap Bp bp
cmap BP bp
cmap bclose Bclose

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>

" Terminal colors
syntax enable
syntax on
syntax sync fromstart

" From https://github.com/aaronjorbin/.vim/blob/master/vimrc
set backspace=indent,eol,start " make backspace a more flexible
set backup " make backup files 
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp " directory to place swap files in
set fileformats=unix,dos,mac " support all three, in this order
set iskeyword+=_,$,@,%,# " none of these are word dividers 
"set mouse=a " use mouse everywhere
set noerrorbells " don't make noise

set laststatus=2 " always show the status line
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

set pastetoggle=<F5>


" Set tab and shift-tab for moving between tabs
nmap <Tab> gt
nmap <S-Tab> gT

" When vimrc is edited, reload it
" if you install this somewhere other than ~/.vim, you'll need to change the
" last argument
autocmd! bufwritepost .vimrc source ~/.vimrc
" Auto-close nerdtree on exit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

colorscheme fromthehell
