" setting up runtime to use CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" powerline settings
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

" setting up pathogen as the default plugin module for vim
" syntax and file coloring settings
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme seti

" display whitespace characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" highlight search results
set hlsearch 

" define path for search 
set path=$PWD/**

" define tab and shift tab definitions
" default usage is in tabs
" use :set expandtabs when you want to convert tabs to spaces
set tabstop=4
set shiftwidth=4
" set expandtab

" save vim when lost focus
autocmd BufLeave,FocusLost,VimResized,WinLeave * silent! wall

" reload vim when regaining focus
autocmd FocusGained,BufEnter * silent! checktime
"
" save vim when ESC is pressed
" inoremap <Esc> <Esc>:w<CR>

" checks on pressing F7 if the file has been updated outside vim
:map <F7> :checktime<CR>
:map! <F7> <C-O>:checktime<CR>
