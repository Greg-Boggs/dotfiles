set nu
syntax on
set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set nobackup

colorscheme railscasts
set noantialias
set guifont=Courier\ New:h12

call pathogen#infect()
map <F2> :NERDTreeToggle<CR>

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'}]%h%m%r\ %l/%L,%c\ %P\ %{fugitive#statusline()}

let mapleader=','

" switch Command-t options so that enter opens a file in a new tab, and ctrl-tab in the same window.
let g:CommandTAcceptSelectionMap = '<C-Tab>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

map X dd " single-key delete line

cnoreabbrev W w " make :W actually do something

autocmd BufRead,BufNewFile *.hlp,*.nws,*.ahelp,*.evt,*.txt set cc=80

set hlsearch " Highlight searches
set list listchars=tab:»·,trail:· " highlight tabs and extra whitespaces

" jump to last position when re-opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
