let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'unicode-haskell')
call pathogen#infect()

"let g:solarized_termcolors=256
let g:solarized_termtrans =  1 
let g:solarized_bold = 1
let g:solarized_contrast = "normal" 
let g:solarized_visibility= "high"

colorscheme solarized
set background=dark

" enable filetype specifics
filetype on
filetype plugin on
filetype indent on

" vim-slime
let g:slime_target = "tmux"

" syntax highlight
syntax on

" set <leader> to comma
let mapleader=','

" just to speed things up
nnoremap ; :

" text width limited to 80 cols
set textwidth=80

" encoding it UTF-8 no matter what the term says
set encoding=utf-8
set term=screen-256color

" make command line two lines high
set ch=2

" interface and basic behavior
set nocompatible
set bs=2 " same as :set backspace=indent,eol,start
set mousehide
set nu
set nuw=5
set wrap
set hidden " change buffer without saving
set ruler
set scrolloff=5 " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread " automatically reloads file if changed outside
set splitright " split new window to the right of current window
set nojoinspaces " use just one space to join strings

" tab/indentation configuration
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log

" search pattern highlight/incremental
set ignorecase
set smartcase
set infercase
set showmatch
set hlsearch
set incsearch

" backup and swap settings
set nobackup
set directory=~/.vim/tmp

" make the status line more informative
set laststatus=2
let g:Powerline_symbols = 'fancy'

" a few useful shortcuts
command! Rehash source ~/.vimrc
command! Helptags helptags ~/.vim/doc

" remappings and shortcuts
"" clear search highlights
nmap <silent> ,/ :nohlsearch<CR>

" plugins
"" autocomplpop
let g:acp_behaviorKeywordLength=4
let g:acp_behaviorFileLength=4

"" NERDTree
map <leader>d :NERDTreeToggle<CR>
let NERDTreeCaseSensitiveSort=1
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$','\.[ao]$','\.swp$','\.DS_Store','\.svn','\.CVS','\.git','\.pyc','\.pyo','log','tmp','coverage']
let NERDTreeMouseMode=2
let NERDTreeShowLineNumbers=0
let NERDTreeWinSize=30
let NERDTreeHijackNetrw=1

filetype plugin indent on

"" rvm fix
set shell=/bin/sh

"" CtrlP
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
set wildignore+=*/.git/
map <leader>b :CtrlPBuffer<CR>
map <leader>m :CtrlPMRUFiles<CR>

"" VimOrganizer
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

"" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26
noremap <silent> <Leader>y :TagbarToggle<CR>

"" Fugitive
map <leader>g :Gstatus<CR>

"" RABL
au BufRead,BufNewFile *.rabl setf ruby

"" relative line numbers
set relativenumber

""
nnoremap - :Switch<cr>
