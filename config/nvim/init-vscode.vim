call plug#begin('~/.config/nvim/plugged') 

Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/vim-peekaboo'

Plug 'alvan/vim-closetag'
Plug 'wellle/targets.vim'
Plug 'tommcdo/vim-exchange'
Plug 'terryma/vim-expand-region'

Plug 'folke/which-key.nvim'
Plug 'justinmk/vim-gtfo'

Plug 'ggandor/lightspeed.nvim'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'matze/vim-move'

Plug 'nelstrom/vim-visual-star-search'

Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'

call plug#end()

let mapleader=","

" vim-closetag
let g:closetag_filetypes = 'ftl,html,xhtml,jsx,javascript,javascript.tsx,freemarker'
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,tsx,javascript.tsx,js,javascript'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap <space>t <Plug>(EasyAlign)
nmap <space>t <Plug>(EasyAlign)

" fugitiv
nmap <space>b :GBrowse<CR>gg)
nmap <space>g :Git<CR>gg)
nmap <Leader>gb :Gblame<CR>
nnoremap <space>d :Gdiff<CR>
let g:fubitive_domain_pattern = 'git\.swisscom\.com'

" Lightspeed_f
map f <Plug>Lightspeed_f
map F <Plug>Lightspeed_s
map t <Plug>Lightspeed_t
map T <Plug>Lightspeed_T

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
nnoremap <leader><leader> <c-^>
