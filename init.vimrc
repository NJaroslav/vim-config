syntax on
filetype plugin indent on
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set number
set relativenumber
set laststatus=2
set shortmess+=I
set backspace=indent,eol,start
set ignorecase
set smartcase
set mouse+=a




call plug#begin()
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'gruvbox-community/gruvbox'
call plug#end()


colorscheme gruvbox


function! s:check_bash_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction


inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


inoremap jk <esc>
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
