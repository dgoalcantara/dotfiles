set encoding=utf-8
scriptencoding utf-8
language en_US.utf-8

if !has('nvim')
    " Change cursor shapes based on whether we are in insert mode,
    " see https://vi.stackexchange.com/questions/9131/i-cant-switch-to-cursor-in-insert-mode
    let &t_SI = "\<esc>[6 q"
    let &t_EI = "\<esc>[2 q"
    if exists('&t_SR')
        let &t_SR = "\<esc>[4 q"
    endif

    " The number of color to use
    set t_Co=256
endif

filetype plugin indent on
syntax enable

set laststatus=2
set noswapfile

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set ignorecase smartcase
set linebreak
set showbreak=↪
set wildmode=list:full
set cursorline
set colorcolumn=100
set noshowmode
set confirm
set novisualbell noerrorbells
set incsearch
set wildmenu
set nocursorcolumn
set backspace=indent,eol,start

let mapleader=','

inoremap <silent> jk <esc>
inoremap <silent> kj <esc>
nnoremap <silent> ^ g^
nnoremap <silent> 0 g0
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_ 

nnoremap <silent> <leader>w :update<CR>
nnoremap <silent> <leader>q :x<CR>
nnoremap <silent> <leader>Q :qa<CR>

call plug#begin()
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'ziglang/zig.vim'
call plug#end()

colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
