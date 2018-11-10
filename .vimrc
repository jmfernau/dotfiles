set encoding=utf-8
autocmd!
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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-markdown'
Plugin 'slava/vim-spacebars'
Plugin 'othree/html5.vim'
Plugin 'othree/jsdoc-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'stephpy/vim-yaml'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'rking/ag.vim'
Plugin 'posva/vim-vue'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'


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
set t_Co=256
set term=xterm-256color
syntax on
syntax sync fromstart
colorscheme Tomorrow-Night

" change the leader to a comma
"let mapleader=","
let mapleader="\<space>"

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
set guioptions-=T " hide the toolbar
set autoread " autoload files that have changed outside of vim
set clipboard+=unnamed " use system clipboard
set shortmess+=I " don't show intro
set cursorline " highlight the current line
set visualbell " ensure vim doesn't beep at you every time you make a mistype
set showmatch " highlight matching brackets when cursor is placed on start/end

" Status line
set laststatus=2 " always show status bar
"set statusline=%f\ %=L:%l/%L\ %c\ (%p%%) " set status line to something useful

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

" Ag
let g:ag_working_path_mode="r"

" Folding
set foldcolumn=0
set foldmethod=indent
set foldlevel=0
set nofoldenable " don't fold by default

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading=0
let g:rubycomplete_classes_in_global=1

" CtrlP -> files matched are ignored when expanding wildcards
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/tmp/*,*.so,*.sqp,*.zip
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.gif,*.jpg,*.png
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=node_modules/*
set wildignore+=*.swp,*~,._*
set wildignore+=.DS_Store

" CtrlP -> directories to ignore when fuzzy finding
let g:ctrlp_custom_ignore = {
      \ 'dir':  '^\.git\|node_modules\|bin\|^\.hg\|\.svn\|build\|log\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
      \ 'file': '\.jpg$\|\.png$\|\.exe$\|\.so$\|tags$\|\.dll$'
      \}
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0
let g:ctrlp_mruf_max = 500
let g:ctrlp_mruf_relative = 1
let g:ctrlp_buftag_ctags_bin = '/usr/local/bin/ctags'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20'


" Git gutter
let g:gitgutter_enabled=1
let g:gitgutter_eager=0
let g:gitgutter_realtime=0
highlight clear SignColumn
set signcolumn=yes

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '

let g:airline_theme = 'dark'


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeMapActivateNode = 'l'
let g:NERDTreeQuitOnOpen = 1
map <leader>' :NERDTreeToggle<cr>
map <leader>f :NERDTreeToggle<cr>

" vim-jsx
let g:jsx_ext_required = 0

"syntastic
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "➠"
let g:syntastic_warning_symbol = "⇢"
let g:syntastic_style_error_symbol = "➠"
let g:syntastic_style_warning_symbol = "⇢"
let g:syntastic_stl_format = ' [%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_ruby_checkers = ['mri', 'rubocop', 'rubylint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_java_checkers = ['']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let python_highlight_all=1
syntax on


" file management
nnoremap <leader>o :CtrlP<cr>
nnoremap <leader>w :w<cr>
noremap <leader>e :e<space>
nnoremap <leader>q :q<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>

" Searching the file system

" Navigation for splits
nnoremap <C-h> <C-w><C-w>

" make spltting windows easier
map <leader>; <C-W>v
map <leader>` <C-W>s

" map jj to the escape key
:inoremap jj <Esc>

" map buffer commands
map <leader>yt :ls<cr>
map <leader>yd :bufdo bd<cr>

" remove search highlighting
nnoremap <leader>hh :noh<cr>

nnoremap Q <nop>
nnoremap <leader><leader> :b#<cr>
nnoremap <leader>V :e $MYVIMRC<cr>

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
set synmaxcol=1200
set nojoinspaces
set nostartofline
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-

" Make the debugger statements obvious
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"
au BufReadPost *.njk set filetype=html

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
