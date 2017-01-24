set title
set ruler
set showcmd
set hidden
set history=200
set scrolloff=3
set wildmenu
set expandtab
set tabstop=4 
set shiftwidth=4 
set number

" Spaces to tabs:
set noet|retab!
" Retab shortcuts.
set et|retab
" SuperRetab (only indentions), via http://vim.wikia.com/wiki/Super_retab
command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

" Tabs on PHP files
autocmd Filetype php setlocal noexpandtab

call pathogen#infect()

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
