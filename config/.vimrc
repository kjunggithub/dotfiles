syntax on
set number
set wrap
set backup
set history=500
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
colorscheme sunburst
set t_Co=256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
set clipboard=unnamed

let g:airline_theme='term'
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:syntastic_php_checkers = ['php']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

:imap jj <Esc>
let mapleader=" "
noremap <Leader>s :update<CR>
