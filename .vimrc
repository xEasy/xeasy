set nocompatible                    " full vim
filetype off

call plug#begin()

Plug 'Lokaltog/vim-easymotion'
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
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tsaleh/vim-tmux'
Plug 'vim-scripts/Gummybears'
Plug 'vim-scripts/nerdtree-ack'
Plug 'vim-scripts/utl.vim'
Plug 'wavded/vim-stylus'
Plug 'wincent/Command-T'
Plug 'jnwhiteh/vim-golang'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
Plug 'junegunn/vim-easy-align'

" 可以使 nerdtree 的 tab 更加友好些
Plug 'jistr/vim-nerdtree-tabs'

" 可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'

" 有道词典在线翻译
Plug 'ianva/vim-youdao-translater'

" 代码自动完成，安装完插件还需要额外配置才可以使用
Plug 'Valloric/YouCompleteMe'

" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'


" 下面两个插件要配合使用，可以自动生成代码块
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" 可以在 vim 中使用 tab 补全
"Plug 'vim-scripts/SuperTab'

" 可以在 vim 中自动完成
"Plug 'Shougo/neocomplete.vim'


" 配色方案
" colorscheme neodark
Plug 'KeitaNakamura/neodark.vim'
" colorscheme monokai
Plug 'crusoexia/vim-monokai'
" colorscheme github
Plug 'acarapetis/vim-colors-github'
" colorscheme one
Plug 'rakr/vim-one'

" go 主要插件
Plug 'fatih/vim-go', { 'tag': '*' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

Plug 'ianva/vim-youdao-translater'

call plug#end()

syntax enable                       " enable syntax highlighting
set termencoding=utf8
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
set termguicolors
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

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

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
au  InsertLeave *.go,*.sh,*.php,*.rb write

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

" let NERDTreeMapOpenInTab='\t'

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

" fix tab confict
let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

set mouse=a

" vim go
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

" Nerdtree config
" 打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=0
" 打开文件时是否显示目录
let NERDTreeAutoCenter=0
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
" let NERDTreeShowBookmarks=2

" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

"==============================================================================
"  majutsushi/tagbar 插件
"==============================================================================

" majutsushi/tagbar 插件打开关闭快捷键
nmap <F9> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


"==============================================================================
"  nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeGitStatusShowIgnored = 1

" youdao translate
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>
