
" NERDTreeGitStatusRefreshListener Error Fix
set shell=sh

" Spaces & Tabs {{{
set tabstop=5       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set relativenumber
" }}} Spaces & Tabs

" UI Config {{{
set hidden	             " opening a new file when the current buffer has unsaved
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set noswapfile
set nobackup
" }}} UI Config

" leader key defining as a space key
let mapleader = "\<Space>"
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Theme
" Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
" True snippet and additional text editing support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf', { 'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
" File System Explorer
Plug 'preservim/nerdtree'
"Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Status line
Plug 'itchyny/lightline.vim'
" Code Prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
" Colorizer
Plug 'gko/vim-coloresque'
" WakaTime
Plug 'wakatime/vim-wakatime' 


" Initialize plugin system

call plug#end()

autocmd vimenter * NERDTree
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula

nmap <leader>gd <Plug>(coc-definiton)
nmap <leader>gr <Plug>(coc-references)
map <C-p> :Files<CR>
map <C-t> :NERDTreeToggle<CR>
"nnoremap <C-p> :GFiles<CR>
let g:NERDTreeIndicatorMapCustom = {
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
