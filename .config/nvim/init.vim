" set termguicolors

syntax on
set autoindent
set number

if 0 | endif

filetype off

filetype plugin indent on     " required!

" using clipboard in yank
set clipboard=unnamed
set clipboard+=unnamed
set clipboard-=autoselect

set cursorline
set smartindent
set ignorecase
set smartcase
set incsearch


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/hitoshi-ma/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/hitoshi-ma/.config/nvim/dein')
  call dein#begin('/Users/hitoshi-ma/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/hitoshi-ma/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('tomtom/tcomment_vim')
  call dein#add('Shougo/vimshell')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neocomplcache')
  call dein#add('davidhalter/jedi-vim') " python
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('vim-airline/vim-airline') " powerline
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('kaicataldo/material.vim')  " material theme
  call dein#add('scrooloose/nerdtree')
  call dein#add('numirias/semshi')  " syntax highlight for python
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


" material theme
colorscheme material
" let g:material_theme_style = 'palenight'
let g:airline_theme = 'default'


" nerdtree
" autocmd VimEnter * execute 'NERDTree'  " auto run NERDTree
let NERDTreeShowHidden = 1  " show hidden files
nmap :tree :NERDTreeToggle
nnoremap :treec :NERDTreeClose


" Unite.vim
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nnoremap <silent> <buffer> <expr> <C-t> unite#do_action('tabnew')
au FileType unite inoremap <silent> <buffer> <expr> <C-t> unite#do_action('tabnew')
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q


" indentline
let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
let g:indentLine_char = '' "use ¦, ┆ or
"
" let g:indentLine_color_term = 111
" let g:indentLine_color_gui = '#708090'
" let g:indentLine_char = '' "use ¦, ┆ or │


" indent guide
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
" let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'tagbar', 'unite']


" powerline
" set laststatus=2
" set showtabline=2


" prevent from inserting strange characters via paste in iterm2
set t_BE=
