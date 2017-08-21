" Turn on Pathogen
"execute pathogen#infect()
syntax on
filetype plugin indent on

" Lets do modelines
set modeline

" Lets use a decent colour scheme
colorscheme elflord

" Set leader to backslash
let mapleader = "\\"

" .vimrc editing and sourcing
:nnoremap <leader>ev :split $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" lazy exit insert mode
:inoremap jk <esc>
":inoremap <esc> <nop>

" insert fav modeline
:iabbrev mmm <cr># vim: tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent:

