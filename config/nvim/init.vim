call plug#begin('~/.config/nvim/plugged') 

Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-rhubarb'
Plug 'machakann/vim-highlightedyank'
Plug 'machakann/vim-highlightedundo'
Plug 'tpope/vim-git'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'lambdalisue/gina.vim'
Plug 'lingceng/z.vim'
Plug 'airblade/vim-rooter'
Plug 'chaquotay/ftl-vim-syntax'
Plug 'andreshazard/vim-freemarker'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'hdiniz/vim-gradle' 
Plug 'gletort/vimConfigFiles' 
Plug 'alvan/vim-closetag'
Plug 'wellle/targets.vim'
Plug 'tommcdo/vim-exchange'
Plug 'terryma/vim-expand-region'
Plug 'modille/groovy.vim'
Plug 'chrisbra/csv.vim'
Plug 'kevinhwang91/nvim-bqf'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'jdhao/better-escape.vim'

" nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/which-key.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'yamatsum/nvim-cursorline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" files
" Plug 'tpope/vim-vinegar'
Plug 'dhruvasagar/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'justinmk/vim-gtfo'
Plug 'editorconfig/editorconfig-vim'
Plug 'andrewferrier/vim-wrapping-softhard'
Plug 'vim-crystal/vim-crystal'
Plug 'elorest/vim-slang'

" features
Plug 'vim-utils/vim-ruby-fold'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'justincampbell/vim-eighties'
Plug 'mhinz/vim-startify'
" Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-repeat'
Plug 'matze/vim-move'
Plug 'gioele/vim-autoswap'
Plug 'junegunn/vim-slash'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'cristianoliveira/vim-react-html-snippets'
Plug 'mlaursen/vim-react-snippets'
" Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-smooth-scroll'
Plug 'nelstrom/vim-visual-star-search'
Plug 'uiiaoo/java-syntax.vim'
Plug 'AndrewRadev/tagalong.vim'

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'
Plug 'ekalinin/Dockerfile.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tmux-plugins/vim-tmux'
Plug 'othree/yajs.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" ui
Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-after-object'
" Plug 'noscript/cSyntaxAfter'
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }

" colorschemes
Plug 'reedes/vim-colors-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'dim13/smyck.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'endel/vim-github-colorscheme'
Plug 'liuchengxu/space-vim-theme'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'arcticicestudio/nord-vim'
Plug 'pineapplegiant/spaceduck'
Plug 'adrian5/oceanic-next-vim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
call wilder#setup({'modes': [':', '/', '?']})

lua require('nvim-autopairs').setup()
lua require('gitsigns').setup()

lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" use jj to escape insert mode.
let g:better_escape_shortcut = "jk"

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38; ;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let g:embark_terminal_italics = 1
set background=dark
let g:dracula_colorterm=0 " disable dracula background, use term color
colorscheme dracula

set spelllang=de,en
autocmd BufRead,BufNewFile *.md setlocal spell

let g:vim_markdown_folding_disabled = 0
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 0
let g:vim_jsx_pretty_disable_js = 0

set diffopt+=internal,algorithm:patience
set encoding=UTF-8
set shell=/bin/bash
let $SHELL = "/bin/bash"
" set shell=/usr/local/bin/fish
" let $SHELL = "/usr/local/bin/fish"
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set cmdheight=2
set showcmd
set regexpengine=1
set ignorecase smartcase
let mapleader=","
set t_ti= t_te=
set t_Co=256
set termguicolors

filetype plugin indent on

let euid=$EUID

" Tagalong
let g:tagalong_additional_filetypes = ['ftl']
autocmd BufEnter * :TagalongInit

" vim-closetag
let g:closetag_filetypes = 'ftl,html,xhtml,jsx,javascript,javascript.tsx,freemarker'
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,tsx,javascript.tsx,js,javascript'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap <space>t <Plug>(EasyAlign)
nmap <space>t <Plug>(EasyAlign)

nnoremap <Leader>ws :SoftWrapMode<CR>
nnoremap <Leader>wh :HardWrapMode<CR>
nnoremap <Leader>wt :ToggleWrapMode<CR>

" indentline
autocmd! User indentLine doautocmd indentLine Syntax

" ultisnip 
let g:UltiSnipsExpandTrigger="<c-u><c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-u><c-i>"
let g:UltiSnipsJumpBackwardTrigger="<c-u><c-y>"
let g:UltiSnipsEditSplit='context' 
nmap <space>u :UltiSnipsEdit<CR>gg<c-n>

" rooter
let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'build.gradle', 'package.json']
" let g:rooter_patterns = ['.git']

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
endif

" mouse
silent! set ttymouse=xterm2
set mouse=a

" Keep the cursor on the same column
set nostartofline

" qq to record, Q to replay
nnoremap Q @q

" Zoom
function! s:zoom()
  if winnr('$') > 1
    tab split
  elseif len(filter(map(range(tabpagenr('$')), 'tabpagebuflist(v:val + 1)'),
                  \ 'index(v:val, '.bufnr('').') >= 0')) > 1
    tabclose
  endif
endfunction
nnoremap <silent> <leader>z :call <sid>zoom()<cr>

nnoremap ]q :cnext<cr>zz
nnoremap [q :cprev<cr>zz
nnoremap ]l :lnext<cr>zz
nnoremap [l :lprev<cr>zz

set t_ZH=[3m
set t_ZR=[23m

nnoremap <silent> <Leader>g :GitGutterLineHighlightsToggle<CR>

" Lightline
let g:lightline = { 'colorscheme': 'embark', 'mode_map': { 'c': 'NORMAL' }, 'active': {   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ] }, 'component_function': {   'modified': 'LightlineModified',   'readonly': 'LightlineReadonly',   'fugitive': 'LightlineFugitive',   'filename': 'LightlineFilename',   'fileformat': 'LightlineFileformat',   'filetype': 'LightlineFiletype',   'fileencoding': 'LightlineFileencoding',   'mode': 'LightlineMode', }, 'separator': { 'left': '?', 'right': '?' }, 'subseparator': { 'left': '?', 'right': '?' } }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '?' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') . (&ft == 'vimfiler' ? vimfiler#get_status_string() :  &ft == 'unite' ? unite#get_status_string() :  &ft == 'vimshell' ? vimshell#get_status_string() : '' != expand('%:t') ? expand('%:t') : '[No Name]') . ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? '? '.branch : ''
  endif
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:rspec_command = "!dotenv rspec --drb {spec}"

" Mapps jump between splitscreens
let g:tmux_navigator_no_mappings = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

nnoremap <silent> <c-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <c-j> :TmuxNavigateDown<CR>
nnoremap <silent> <c-k> :TmuxNavigateUp<CR>
nnoremap <silent> <c-l> :TmuxNavigateRight<CR>
nnoremap <silent> <c-p> :Files<CR>
nnoremap <silent> <c-t> :GFiles<CR>
nnoremap <silent> <c-o> :Buffers<CR>
nnoremap <silent> <c-g><c-r> :FzfPreviewProjectMruFiles<CR>
nnoremap <silent> <c-g><c-m> :GitMasterFiles<CR>
nnoremap <silent> <c-g><c-h> :GitHeadFiles<CR>
nnoremap <silent> <c-g><c-p> :GitHeadHeadFiles<CR>
nnoremap <silent> <c-q> :bd<CR>

"So I can move around in insert
inoremap <C-k> <C-o>gk
inoremap <C-h> <C-o>b
inoremap <C-l> <C-o>e<right>
inoremap <C-j> <C-o>gj
inoremap <C-w> <C-o>diw
inoremap <C-d> <C-o>db

" autocmd! BufWritePost * Neomake

let g:netrw_winsize=30
let g:netrw_alto=1
let g:netrw_liststyle=3

" Can't be bothered to understand ESC vs <c-c> in insert mode
" imap <c-c> <esc>

" Mapps copy paste
map <leader>y "+y
map <leader>p "+p

" let g:move_key_modifier = ','

" Move visual block
" vnoremap J :m '>+1<CR>gv
" vnoremap K :m '<-2<CR>gv

" Move to the previous buffer
nnoremap H :bprevious<CR>
" Move to the next buffer
nnoremap L :bnext<CR>
" Replace H and L
nnoremap zh H
nnoremap zl L
" AND/OR
" nnoremap + H
" nnoremap _ L

" Edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
noremap <leader>vs :!code %<CR>

nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>
vnoremap <silent> <Leader>ag y:Ag <C-R>0<CR>

nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>
vnoremap <silent> <Leader>rg y:Rg <C-R>0<CR>

nmap <space>b :GBrowse<CR>gg)
nmap <space>g :Git<CR>gg)
nmap <Leader>gb :Gblame<CR>
nnoremap <space>d :Gdiff<CR>
imap <c-x><c-k> <plug>(fzf-complete-word-ag)
imap <c-x><c-f> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line-ag)
nmap <leader><tab> <plug>(fzf-maps-n)
inoremap <expr> <c-x><c-k> fzf#complete('cat /usr/share/dict/words')

" let $FZF_DEFAULT_COMMAND= 'ag -g ""'
" let $FZF_DEFAULT_COMMAND= 'rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_history_dir = '~/.local/share/fzf-history'

command! -bang -nargs=* Hist call fzf#vim#history(fzf#vim#with_preview())

command! -nargs=1 Locate call fzf#run( {'source': 'locate <q-args>', 'sink': 'e', 'options': '-m'})
let g:fzf_files_options = '--preview "highlight -O ansi {}; or cat {} 2> /dev/null | head -'.&lines.'"'

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], preview window, [toggle keys...]])
"   * Preview script requires Ruby
"   * Install Highlight or CodeRay to enable syntax highlighting
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>,                 <bang>0 ? fzf#vim#with_preview('up:60%')                         : fzf#vim#with_preview('right:50%:hidden', '?'),                 <bang>0)

command! -bang -nargs=* Spec call fzf#vim#ag('spec',                 <bang>0 ? fzf#vim#with_preview('up:60%')                         : fzf#vim#with_preview('right:50%:hidden', '?'),                 <bang>0)

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

command! -nargs=* GitMasterFiles call fzf#run( {'source': 'git diff master --name-only'.shellescape(<q-args>), 'sink': 'e', 'options': '-m --prompt "FilesMaster> "'})
command! -nargs=* GitHeadFiles call fzf#run( {'source': 'git diff HEAD^ --name-only'.shellescape(<q-args>), 'sink': 'e', 'options': '-m --prompt "FilesHead^> "'})
command! -nargs=* GitHeadHeadFiles call fzf#run( {'source': 'git diff HEAD^^ --name-only'.shellescape(<q-args>), 'sink': 'e', 'options': '-m --prompt "FilesHead^^> "'})

" ToggleSpec
function! s:toggle_spec()
  let extension = expand("%:e")
  let name = expand("%:t")
  let folder = expand("%:h:t")
  if stridx(name, '_spec') == -1
    return '/' . folder . '/' . substitute(name, '.' . extension, '_spec.' . extension, '')
  else
    return '/' . folder . '/' . substitute(name, '_spec.' . extension, '.' . extension, '')
  endif
endfunction
command! -bang -nargs=? -complete=dir ToggleSpec call fzf#vim#files('', {'options': '-q"' . s:toggle_spec() .'$ "'})
nnoremap <silent> <c-s> :ToggleSpec<CR>

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

nnoremap <silent> <Leader><Enter> :call fzf#run({   'source':  reverse(<sid>buflist()),   'sink':    function('<sid>bufopen'),   'options': '+m',   'down':    len(<sid>buflist()) + 2 })<CR>

" au BufNewFile,BufRead *.html.erb set filetype=html

" STRIP TRAILING WHITESPACES ON SAVE
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction
autocmd FileType c,cpp,java,php,ruby,python,javascript,markdown,html,erb autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" OPEN FILES IN DIRECTORY OF CURRENT FILE
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
nnoremap <leader><leader> <c-^>

let g:fubitive_domain_pattern = 'git\.swisscom\.com'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"Fugitive bindings
"
function! Grb()
  execute ":Git pull origin " . fugitive#head(0)
endfunction

function! Gwb()
  execute ":Git push origin " . fugitive#head(0)
endfunction

command! -bang -nargs=* Gpullb call Grb()
command! -bang -nargs=* Gpushb call Gwb()

" ----------------------------------------------------------------------------
" goyo.vim + limelight.vim
" ----------------------------------------------------------------------------

let g:goyo_width = "50%"
let g:goyo_height = "70%"
let g:goyo_linenr = 1

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Java
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F5> <Plug>(JavaComplete-Imports-Add)

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <Leader>G :Goyo<CR>

" Smooth scroll
noremap <silent> <a-k> :call smooth_scroll#up(4, 0, 3)<CR>
noremap <silent> <a-j> :call smooth_scroll#down(4, 0, 3)<CR>

" XML beautify
function! XmlBeautify()
  exec ":%s/></space>\r</g"
  normal gg=G
endfunction
command! -bang -nargs=* XmlBeautify call XmlBeautify()

set nofoldenable
let ruby_fold = 1
let ruby_operators = 1
let ruby_foldable_groups = 'def'
let ruby_operators = 1

" map <c-t> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeCWD<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let g:NERDTreeWinSize=35
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1

autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ', ',', '{', '[')

" Visual macro fix
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" CSyntaxAfter
" autocmd! FileType c,cpp,java,php call CSyntaxAfter()

" COC-VIM 
" ----------------------------------------

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

let g:coc_global_extensions = [
  \ 'coc-json', 
  \ 'coc-fzf-preview', 
  \ 'coc-prettier', 
  \ 'coc-actions', 
  \ 'coc-yaml', 
  \ 'coc-xml', 
  \ 'coc-tsserver', 
  \ 'coc-java', 
  \ 'coc-html', 
  \ 'coc-python', 
  \ 'coc-css', 
  \ 'coc-snippets',
  \ 'coc-solargraph',
  \ 'coc-tailwindcss',
  \ ]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" if has('patch8.1.1068')
"   " Use `complete_info` if your (Neo)Vim version supports it.
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

inoremap <silent> <CR> <C-r>=<SID>coc_confirm()<CR>
function! s:coc_confirm() abort
  if pumvisible()
    return coc#_select_confirm()
  else
    return "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  endif
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> ggd <Plug>(coc-definition)
nmap <silent> ggy <Plug>(coc-type-definition)
nmap <silent> ggi <Plug>(coc-implementation)
nmap <silent> ggr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <space>f  <Plug>(coc-format-selected)
nmap <space>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <space>a  <Plug>(coc-codeaction-selected)
nmap <space>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <space>a   <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <space>qf  <Plug>(coc-fix-current)
" Renname symbol
nmap <space>r <Plug>(coc-rename)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <silent> <space>F  :!bundle exec standardrb --fix<cr>
nnoremap <silent> <space>f  :<C-u>CocCommand prettier.formatFile<cr>
" Mappings using CoCList:
  " Show all diagnostics.
nnoremap <silent> <space>D  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-g>'

" FzfPreview
let g:fzf_preview_use_dev_icons = 1

augroup fzf_preview
  autocmd!
  autocmd User fzf_preview#initialized call s:fzf_preview_settings()
augroup END

function! s:fzf_preview_settings() abort
  let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command
  let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' . g:fzf_preview_grep_preview_cmd
endfunction


" highlightedundo
nmap u     <Plug>(highlightedundo-undo)
nmap <C-r> <Plug>(highlightedundo-redo)
nmap U     <Plug>(highlightedundo-Undo)
nmap g-    <Plug>(highlightedundo-gminus)
nmap g+    <Plug>(highlightedundo-gplus)

" Sneak
map f <Plug>Sneak_s
map F <Plug>Sneak_S

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Barbar
nnoremap <silent> <Space>n :BufferOrderByBufferNumber<CR>
