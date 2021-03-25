if &compatible
    set nocompatible
endif
packadd minpac
call minpac#init()
call minpac#add('rafi/awesome-vim-colorschemes')
call minpac#add('scrooloose/nerdtree')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('nathanaelkane/vim-indent-guides')
call minpac#add('jistr/vim-nerdtree-tabs')
" Nerd commenter allows you to comment out (VISUAL mode) selected code using `,cc` and `,cu`
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('PhilRunninger/nerdtree-buffer-ops')
call minpac#add('Xuyuanp/nerdtree-git-plugin')
command! Pu call minpac#update()
command! Pc call minpac#clean()

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			" Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
"set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter 
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                           " Your working directory will always be the same as your working directory
set hlsearch
set wildmode=longest,list
set cc=80
set showmatch

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
map <C-n> :NERDTreeToggle<CR>



colorscheme one
"colorscheme Apprentice
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
let g:airline_theme='base16'
let g:airline_theme='molokai'
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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

" Set firefox as defult browser
" type gx to open a link
" Test it here https://twitter.com/home whoa it works
"xdg-mime default firefox.desktop x-scheme-handler/http
"xdg-mime default firefox.desktop x-scheme-handler/https
