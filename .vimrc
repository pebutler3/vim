execute pathogen#infect()
" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"""""""""""""""""""""""""
" smartindent
"""""""""""""""""""""""""
" set autoindent

"""""""""""""""""""""""""
" NERDTree

" 1.) Auto-open vim
"     with NERDTree
" 2.) Toggle NERDTree
"""""""""""""""""""""""""
" au VimEnter *  NERDTree
nnoremap <C-e> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1

""""""""""""""""""""""""
" Mouse Support
""""""""""""""""""""""""
set mouse=a

""""""""""""""""""""""""
" VIM UI
"""""""""""""""""""""""""
colorscheme deep-space
let base16colorspace=256
set background=dark
set encoding=utf-8
syntax enable
set so=7         "set 7 lines to the cursor - when moving vertically using j/k
set splitright   "Open splits to the right
set expandtab    "Makes tabs spaces
set shiftwidth=1 "Controls > indenting
set laststatus=2
set wildmenu     "better command line completion
set ts=2

let g:airline_powerline_fonts = 1
let g:airline_theme='deep_space'

"""
" Style Vim tab/bar
"""
hi TabLineSel ctermfg=324 ctermbg=999 cterm=bold
hi TabLineFill ctermfg=111 ctermbg=222 cterm=none


" Changed VertSplit from tilde to • and changed color to hide characters
set fillchars+=vert:•  " Changes character used in vertical splits
hi vertsplit ctermfg=white ctermbg=white

" Highlight matching parens/brackets in white
hi MatchParen cterm=none ctermbg=none ctermfg=white

""""""""""""""""""""
" Gutters
"""""""""""""""""""
set number       "Show line numbers
set numberwidth=4
" set foldcolumn=1
" hi FoldColumn ctermbg=blue
highlight LineNr term=bold ctermfg=lightBlue

:set wrap
:set linebreak
:set nolist  " list disables linebreak
""""""""""""""""""""""""""
" => No noises!
""""""""""""""""""""""""""
set visualbell
set t_vb=

"""""""""""""""
" Disable netrw
"""""""""""""""
let loaded_netrwPlugin = 1

set list
set list listchars=tab:\|_,trail:·
set noswapfile

"let g:auto_save = 1
let g:user_emmet_leader_key='<tab>'

"React highlighting"
let g:jsx_ext_required = 0
