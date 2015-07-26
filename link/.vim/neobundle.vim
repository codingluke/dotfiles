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
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'chrisbra/Recover.vim'
NeoBundle 'ivalkeen/vim-ctrlp-tjump'
NeoBundle 'dag/vim-fish'
NeoBundle 'christoomey/vim-tmux-navigator'
"NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'rking/ag.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-endwise'
"NeoBundle 'vim-scripts/DoxygenToolkit.vim'
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'vim-scripts/octave.vim'
NeoBundle 'rkulla/pydiction'
NeoBundle 'vim-scripts/closetag.vim'
"NeoBundle 'peterhoeg/vim-qml'
NeoBundle 'hail2u/vim-css3-syntax'
"NeoBundle 'vim-scripts/vim-creole'
"NeoBundle 'vim-scripts/scons.vim'
"NeoBundle 'vim-scripts/SingleCompile'
"NeoBundle 'tikhomirov/vim-glsl.git'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'junegunn/rainbow_parentheses.vim'
"NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'pangloss/vim-javascript'
"NeoBundle 'xsbeats/vim-blade'
"NeoBundle 'vim-pandoc/vim-pandoc'
"NeoBundle 'vim-pandoc/vim-pandoc-syntax'
NeoBundle 'StanAngeloff/php.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'niklasl/vim-rdf'
"NeoBundle 'terryma/vim-multiple-cursors'

" vim-scripts repos
"NeoBundle 'L9'
NeoBundle 'rails.vim'
NeoBundle 'n3.vim'

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

