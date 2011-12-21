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

