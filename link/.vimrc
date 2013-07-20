set nocompatible               " Be iMproved
let mapleader=","

syntax on
set t_Co=256
colorscheme grb256-approx

map <Leader>p :NERDTreeToggle<CR>

" Mapps jump between splitscreens
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Mapps narrow/ wide splitscreen
"map <Leader>j <C-w><  
"map <Leader>k <C-w>>  



runtime neobundle.vim

