"" Make Vim more useful
set nocompatible
syntax on
colorscheme lucius
set background=dark
set gfn=Monaco:h14

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
"set smartindent
"set autoindent
set linespace=8

set hlsearch
"set incsearch
"set showmatch

"set number

filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete

autocmd FileType python set omnifunc=pythoncomplete#Complete
inoremap <C-space> <C-x><C-o>

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%79v.\+/
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

