" Use <Leader> in global plugin.
let g:mapleader = "\<Space>"
" Use <LocalLeader> in filetype plugin.
let g:maplocalleader = ','

set ttyfast
set ttimeout
set backspace=indent,eol,start
set matchpairs+=<:>

set encoding=utf-8
set mouse=a
set mousehide

set number
set relativenumber
set colorcolumn=79
set laststatus=2

set hidden
set history=1000
set nocursorline

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set wrapscan
set shiftround

set autowrite
set nobackup
set noswapfile
set nowritebackup
set signcolumn=yes

set hlsearch
set incsearch
set ignorecase
set infercase
set smartcase

set shortmess=aFc
set completefunc=emoji#complete
set completeopt=longest,menu
set completeopt+=preview
filetype plugin indent on     " required!

"Better display for messages
set cmdheight=2
set noshowmode
set noruler
set noshowcmd

set splitbelow
set splitright

set wildmenu
set wildmode=longest:full,full

set clipboard+=unnamedplus
set updatetime=300

set whichwrap+=h,l,<,>,[,],b,s,~
if exists('+breakindent')
    let &showbreak = '↳ '
    set breakindent
    set wrap
else
    set nowrap
endif

" Switching Buffers
noremap <leader>[ :bp<return>
noremap <leader>] :bn<return>

" Themes
" Enable 256 color terminal
set t_Co=256
" Enable true color
if has('termguicolors')
	set termguicolors
endif

" Switch
" colorscheme cosmic_latte
colorscheme gruvbox
let g:gruvbox_italic = 1
if strftime('%H') >= 7 && strftime('%H') < 16
  set background=light
else
  set background=dark
endif


highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

hi Whitespace ctermfg=96 guifg=#725972 guibg=NONE ctermbg=NONE

hi NeomakeVirtualtextError ctermfg=124 guifg=#af0000 guibg=NONE ctermbg=NONE

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
for f in split(glob('~/.config/nvim/rc/ftplugin/*.vim'), '\n')
    exe 'source' f
endfor

" netrw
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_liststyle=3
let g:netrw_localrmdir='rm -r'

nnoremap <leader>n :Lexplore<CR>


" windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Don't lose selection when shifting sidewards
xnoremap <  <gv
xnoremap >  >gv
