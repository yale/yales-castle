call pathogen#infect()
colorscheme ir_black

" enable filetype specifics
filetype on
filetype plugin on
filetype indent on

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
set statusline=%<buf:[%n]\ %f\ %h%m%r " buffer, filename, flags
set statusline+=\ \ [
set statusline+=%{strlen(&ft)?&ft:'none'} " filetype
set statusline+=]\ "
set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=%=
set statusline+=\ [%3.(%c%)\ %-7.(%l/%L%)]\ %P

" a few useful shortcuts
command! Rehash source ~/.vimrc
command! Helptags helptags ~/.vim/doc

" remappings and shortcuts
"" clear search highlights
nmap <silent> ,/ :nohlsearch<CR>

"" make the arrow keys switch between splits
map <up> <C-w>k
map <down> <C-w>j
map <right> <C-w>l
map <left> <C-w>h

"" identify the syntax highlighting group used at the cursor
"" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
map <leader>hig :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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

"" specky
let g:speckyRunSpecCmd = "bundle exec rspec -r ~/.vim/bundle/vim-specky/ruby/specky_formatter.rb -f SpeckyFormatter"
let g:speckyQuoteSwitcherKey = "<leader>'"
let g:speckySpecSwitcherKey  = "<leader>x"
let g:speckyRunSpecKey       = "<leader>s"
let g:speckyRunRdocCmd       = "fri -L -f plain"
let g:speckyWindowType       = 2

filetype plugin indent on

"" ack grep
set grepprg=ack\ --cpp\ --cc\ --perl\ --python\ --make
map <leader>g :grep <C-R>=expand("<cword>")<CR><CR>

"" rvm fix
set shell=/bin/sh

"" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
set wildignore+=*/.git/
