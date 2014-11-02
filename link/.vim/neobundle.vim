if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'Lokaltog/vim-easymotion'
"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'tpope/vim-eunuch'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'bling/vim-airline'
NeoBundle 'chrisbra/Recover.vim'
NeoBundle 'ivalkeen/vim-ctrlp-tjump'
NeoBundle 'dag/vim-fish'
NeoBundle 'christoomey/vim-tmux-navigator'
"NeoBundle 'wting/rust.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'rking/ag.vim'
"NeoBundle 'matze/vim-move'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'vim-scripts/DoxygenToolkit.vim'
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'aklt/vim-line_length'
NeoBundle 'vim-scripts/octave.vim'
NeoBundle 'rkulla/pydiction'
NeoBundle 'vim-scripts/closetag.vim'


" Colorschemes
"NeoBundle '29decibel/codeschool-vim-theme'
"NeoBundle 'vim-scripts/summerfruit256.vim'
"NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'jonathanfilip/vim-lucius'
"NeoBundle 'endel/vim-github-colorscheme'

" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'rails.vim'
"NeoBundle 'octave.vim'

" Non github repos
"NeoBundle 'git://git.wincent.com/command-t.git'

" gist repos
" NeoBundle 'gist:Shougo/656148', {
" \ 'name': 'everything.vim',
" \ 'script_type': 'plugin'}
" Non git repos
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

