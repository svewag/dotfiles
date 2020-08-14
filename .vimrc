syntax enable
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme tomorrow
"set background=dark
set tabstop=2
set softtabstop=2
set expandtab
set number
set cursorline
set ignorecase
set wrap
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set mouse=a
" Change mapleader
let mapleader=","
" Show the cursor position
set ruler
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
execute pathogen#infect()
call pathogen#helptags()

" NerdTree
" CTRL+e to toggle the view
" CTRL+ww to switch between the system and the file viewer
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Give a shortcut key to NERD Tree
nnoremap <C-e> :NERDTreeToggle<CR>
au FileType gitcommit set tw=72
