set nu

:filetype plugin on
:syntax on

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'elmcast/elm-vim'
Plug 'itspriddle/vim-shellcheck'
Plug 'dag/vim-fish'
call plug#end()

" Nerdtree
map <C-b> :NERDTreeToggle<CR>
" autoclose Nertree when its the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open NerdTree when directory is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | exe 'NERDTree' | endif

" Switch splits with Ctrl + Arrow Keys
map <C-Left>  <C-W>h<C-W>_
map <C-Right> <C-W>l<C-W>_
map <C-Up> <C-W>k<C-W>_
map <C-Down> <C-W>j<C-W>_

" relative line numbering
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END