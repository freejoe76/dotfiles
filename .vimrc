set title
set ruler
set showcmd
set hidden
set history=100
set scrolloff=3
set wildmenu
set tabstop=2 shiftwidth=2 expandtab

call pathogen#infect()

autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

imap jj <Esc>

" Map the leader key. Instead of \, it's now ,
let mapleader = ","

" Shift key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
cmap Bq bq
cmap Bn bn
cmap BN bn
cmap Bp bp
cmap BP bp
cmap Bclose bclose

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>
