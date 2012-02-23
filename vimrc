set nu
syntax on
set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set nobackup
set nocompatible

colorscheme railscasts
set noantialias
set guifont=Courier\ New:h12

map <F2> :NERDTreeToggle<CR>

set laststatus=2

let mapleader=','

" switch Command-t options so that enter opens a file in a new tab, and ctrl-tab in the same window.
let g:CommandTAcceptSelectionMap = '<C-Tab>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" trigger CommandTFlush when returning to vim or when writing a buffer
augroup CommandTExtension
  autocmd!
  autocmd FocusGained * CommandTFlush
  autocmd BufWritePost * CommandTFlush
augroup END

map X dd " single-key delete line

let g:Powerline_symbols = 'unicode'

cnoreabbrev W w " make :W actually do something

autocmd BufRead,BufNewFile *.hlp,*.nws,*.ahelp,*.evt,*.txt set cc=80

set hlsearch " Highlight searches
set list listchars=tab:»·,trail:· " highlight tabs and extra whitespaces

" jump to last position when re-opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Vundle config
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'int3/vim-extradite'
Bundle 'majutsushi/tagbar'

filetype plugin indent on     " required! 


" ==============================
" Window/Tab/Split Manipulation
" ==============================
" Move between split windows by using the four directions H, L, I, N
" (note that  I use I and N instead of J and K because  J already does
" line joins and K is mapped to GitGrep the current word
nnoremap <silent> H <C-w>h
nnoremap <silent> L <C-w>l
nnoremap <silent> I <C-w>k
nnoremap <silent> M <C-w>j

" Use numbers to pick the tab you want (like iTerm)
map <silent> <D-1> :tabn 1<cr>
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>
map <silent> <D-8> :tabn 8<cr>
map <silent> <D-9> :tabn 9<cr>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

"open the tagbar using ,t
nnoremap <silent> ,T :TagbarToggle<CR>
