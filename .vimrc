set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'motemen/git-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Powerline/powerline'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'Valloric/YouCompleteMe'

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
syntax on
colorscheme distinguished

set hlsearch "highlight the search
" set ls=2 " show a status line even if there is only one window

" Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set wildmenu	" show completion on the mode-line
set linespace=0	" number of pixels between lines
set splitright	" open vertical splits on the right
set splitbelow	" open horizontal splits below
set wrap	" wrap long lines
set linebreak	" break lines at word end
set nobackup	" don't want no backup files
set nowritebackup "dont make a backup before overwriting a file
set noswapfile	" no swap files
set hidden	" hide buffers when abandoned
set ruler " always show cursor
set showcmd " show incomplete commands
set laststatus=2 " always show status bar
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%) " set status line to something useful
set guioptions-=T " hide the toolbar
set autoread " autoload files that have changed outside of vim
set clipboard+=unnamed " use system clipboard
set shortmess+=I " don't show intro
set cursorline " highlight the current line
set visualbell " ensure vim doesn't beep at you every time you make a mistype
set showmatch " highlight matching brackets when cursor is placed on start/end

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100
set timeoutlen=1000


" Whitespace
set tabstop=2 shiftwidth=2	" a tab is two spaces
set expandtab			" use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode


" Searching
set incsearch    " incremental searching
set ignorecase    " searches are case insensitive...
set smartcase   " ...unless they contain at least one capital letter
set scrolloff=0   " keep a 5 line padding when moving the cursor

set autoindent    " indent on enter
set smartindent   " do smart indenting when starting a new line
set shiftround    " indent to the closest shiftwidth

set number
set mouse=a
set nowrap

set tags=./tags

" Folding
set foldcolumn=0
set foldmethod=indent
set foldlevel=0
set nofoldenable " don't fold by default

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading=0
let g:rubycomplete_classes_in_global=1

" always highlight column 80
"autocmd BufWinEnter * highlight ColorColumn ctermbg=gray
"set colorcolumn=80

" CtrlP
"let g:ctrlp_show_hidden=1
"let g:ctrlp_working_path_mod=0
"let g:ctrlp_max_height=30

" CtrlP -> override <C-o> to provide options for how to open files
"let g:ctrlp_arg_map=1

" CtrlP -> files matched are ignored when expanding wildcards
set wildignore+=*/.git*,*/.hg/*,*/.svn/*.,*/.DS_Store

" CtrlP -> directories to ignore when fuzzy finding
"let g:ctrlp_user_command='\v[\/]((node_modules)|\.(git|svn|grunt|sass-cache))$'

" Git gutter
let g:gitgutter_enabled=1
let g:gitgutter_eager=0
let g:gitgutter_sign_column_always=1
highlight clear SignColumn

" Airline
let g:airline_powerline_fonts=1

" Powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" change the leader to a comma
"let mapleader=","
let mapleader="\<space>"

" file management
nnoremap <leader>o :NERDTreeToggle<cr>
nnoremap <leader>w :w<cr>
noremap <leader>e :e<space>
nnoremap <leader>q :q<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>

" Searching the file system
map <leader>' :NERDTreeToggle<cr>


" make spltting windows easier
map <leader>; <C-W>v
map <leader>` <C-W>s

" map jj to the escape key
imap jj <Esc>

" map buffer commands
map <leader>yt :ls<cr>
map <leader>yd :bufdo bd<cr>

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e


