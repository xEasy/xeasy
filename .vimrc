set nocompatible                    " full vim
filetype off

call plug#begin()

Plug 'Lokaltog/vim-easymotion'
Plug 'Lokaltog/vim-powerline'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bogado/file-line'
Plug 'cloudhead/shady.vim'
Plug 'digitaltoad/vim-jade'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'guns/vim-clojure-static'
Plug 'guns/xoria256.vim'
Plug 'ivalkeen/nerdtree-execute'
Plug 'jceb/vim-orgmode'
Plug 'jpalardy/vim-slime'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mileszs/ack.vim'
Plug 'mrtazz/molokai.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'sickill/vim-pasta'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tsaleh/vim-tmux'
Plug 'vim-scripts/Gummybears'
Plug 'vim-scripts/UltiSnips'
Plug 'vim-scripts/nerdtree-ack'
Plug 'vim-scripts/utl.vim'
Plug 'wavded/vim-stylus'
Plug 'wincent/Command-T'
Plug 'jnwhiteh/vim-golang'

call plug#end()

syntax enable                       " enable syntax highlighting
set encoding=utf8                   " utf8 default encoding

filetype plugin indent on

noremap , \
let mapleader = ","

set scrolloff=3                     " show 3 lines of context around the cursor
set autoread                        " set to auto read when a file is changed from the outside
set autowrite
set showcmd                         " show typed commands

set wildmenu                        " turn on WiLd menu
set wildmode=list:longest,list:full " activate TAB auto-completion for file paths
set wildignore+=*.o,.git,.svn,node_modules,*.class,*.jar,*.png,*.jpg,*.jpeg,*.gif,*.zip,*.tar,*.gz,target

set ruler                           " always show current position
set backspace=indent,eol,start      " set backspace config, backspace as normal
set nomodeline                      " security

set hlsearch                        " highlight search things
set incsearch                       " go to search results as typing
set smartcase                       " but case-sensitive if expression contains a capital letter.
set ignorecase                      " ignore case when searching
set gdefault                        " assume global when searching or substituting
set magic                           " set magic on, for regular expressions
set showmatch                       " show matching brackets when text indicator is over them

set lazyredraw                      " don't redraw screen during macros, faster
set ttyfast                         " improves redrawing for newer computers
set fileformats=unix,mac,dos
set ttymouse=xterm

set nobackup                        " prevent backups of files, since using vcs
set nowritebackup
set noswapfile

set shiftwidth=4                    " set tab width
set softtabstop=4
set tabstop=4

set smarttab
set expandtab                       " use spaces, not tabs
set autoindent                      " set automatic code indentation
set hidden                          " allow background buffers w/out writing

set nowrap                          " don't wrap lines

set list                            " show hidden characters
set listchars=tab:\ \ ,trail:·      " show · for trailing space, \ \ for trailing tab
set spelllang=en,es                 " set spell check language
set noeb vb t_vb=                   " disable audio and visual bells

set t_Co=256                        " use 256 colors
set background=light
colorscheme jellybeans
color molokai


map <m-a> ggVG

if has("gui_running")
    au GUIEnter * set vb t_vb=       " disable visual bell in gui
    set guioptions-=T                " remove gui toolbar
    set guioptions-=m                " remove gui menubar
    set linespace=2                  " space between lines
    set columns=160 lines=35         " window size

    set guioptions+=LlRrb            " crazy hack to get gvim to remove all scrollbars
    set guioptions-=LlRrb

    " set guifont=Menlo\ Regular:h15    " gui font
    set guifont=Monaco:h13 "字体 && 字号
endif


" FOLDING
"set foldenable                   " enable folding
"set foldmethod=indent            " most files are evenly indented
"set foldlevel=99

" ADDITIONAL KEY MAPPINGS

" fast saving
nmap <leader>w :up<cr>

" prevent accidental striking of F1 key
map <F1> <ESC>
imap <F1> <ESC>

" clear highlight
nnoremap <leader><space> :noh<cr>

" ignore lines when going up or down
nnoremap j gj
nnoremap k gk

" auto complete {} indent and position the cursor in the middle line
inoremap {<CR>  {<CR>}<Esc>O
inoremap (<CR>  (<CR>)<Esc>O
inoremap [<CR>  [<CR>]<Esc>O

" fast window switching
map <leader>, <C-W>w
map <leader>t :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRU<cr>

" cycle between buffers
map <leader>. :b#<cr>

" change directory to current buffer
map <leader>cd :cd %:p:h<cr>

" open file explorer
map <leader>n :NERDTreeToggle<cr>

" open selected file in nerdtree
map <leader>h :NERDTreeFind<cr>

" swap implementations of ` and ' jump to prefer row and column jumping
nnoremap ' `
nnoremap ` '

" indent visual selected code without unselecting and going back to normal mode
vmap > >gv
vmap < <gv
" indent visually with the < > keys, but without shift held.
vmap . >gv
vmap , <gv
setglobal relativenumber

"set foldcolumn=8

" Screw ex mode
:map Q <Nop>

" copy/paste to/from x clipboard
vmap <leader>y :!xclip -f -sel clip<cr>
map <leader>p :r!xclip -o<cr>

" pull word under cursor into lhs of a substitute (for quick search and replace)
nmap <leader>r :%s#\<<C-r>=expand("<cword>")<CR>\>#

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//e<cr>:let @/=''<CR>

" insert path of current file into a command
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" fast editing of the .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" allow saving when you forgot sudo
cmap w!! w !sudo tee % >/dev/null

" turn on spell checking
map <leader>spl :setlocal spell!<cr>

" spell checking shortcuts
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" window
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>
" buffer
nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>



"" ADDITIONAL AUTOCOMMANDS

" saving when focus lost (after tabbing away or switching buffers)
au FocusLost,BufLeave,WinLeave,TabLeave * silent! up

" open in last edit place
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
au QuickFixCmdPost *grep* cwindow

"" ABBREVIATIONS
" source $HOME/.vim/autocorrect.vim

"" PLUGIN SETTINGS

let g:netrw_liststyle=3  " use tree style for netrw

" Unimpaired
" bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Powerline
let g:Powerline_symbols = 'fancy'

" Ack
set grepprg=ack
nnoremap <leader>a :Ack<space>
let g:ackhighlight=1
let g:ackprg="ack -H --type-set jade=.jade --type-set stylus=.styl --type-set coffee=.coffee --nocolor --nogroup --column --ignore-dir=node_modules"

" CoffeeScript
map <leader>cc :CoffeeCompile<cr>
map <silent> <leader>cm :CoffeeMake<cr> <cr>

"" LANGUAGE SPECIFIC

" Python
au FileType python set noexpandtab
au FileType groovy set noexpandtab shiftwidth=4 tabstop=4
au FileType gsp set noexpandtab
au FileType gsp set shiftwidth=4
au FileType gsp set tabstop=4

" JavaScript
au BufRead,BufNewFile *.json set ft=javascript

"" STATUS LINE
set laststatus=2 " always hide the last status
let g:user_zen_settings = {
\    'php' : {
\        'extends' : 'html',
\    },
\    'xml' : {
\        'extends' : 'html',
\    },
\    'haml' : {
\       'extends' : 'html',
\    },
\    'gsp' : {
\        'extends' : 'html',
\    }
\}

let g:use_zenabbr_key = '-'
set relativenumber


set shortmess=atI
set tildeop

" :helptags ~/.vim/doc
map <silent> <F3> :call BufferList() <CR>
"Ctrl P
noremap <C-t> :CtrlP <CR>

" autoindent with two spaces, always expand tabs
set nu ai sw=2 sts=2 expandtab

au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.ftl         setfiletype ftl

set ts=2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

func Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

" just type cl<space>  to get console.log('<cursor stays here');
ia cl console.log('');<Left><Left><Left><C-R>=Eatchar('\s')<CR>
set number
set numberwidth=5

let g:EasyMotion_leader_key = "'"

map <space> 'w

"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|.sass-cache\|.ivy-cache\'

syntax enable

if exists('+colorcolumn')
  set colorcolumn=120              " show a right margin column
  hi ColorColumn ctermbg=234 guibg=#1c1c1c
endif

let NERDTreeMapOpenInTab='\t'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['lightblue',    'SeaGreen3'], 
    \ ['lightgreen',   'firebrick3'],
    \ ['lightcyan',    'RoyalBlue3'],
    \ ['lightred',     'SeaGreen3'], 
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'], 
    \ ['lightblue',    'firebrick3'],
    \ ['lightgreen',   'RoyalBlue3'],
    \ ['lightcyan',    'SeaGreen3'], 
    \ ['red',         'firebrick3'],
    \ ]
let g:slime_target = "tmux"
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

set mouse=a
