"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    John Tramm's Vim Configuration File
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible           " get rid of Vi compatibility mode.
filetype plugin indent on  " filetype detection[ON] plugin[ON] indent[ON]
syntax enable              " enable syntax highlighting
set sw=4                   " indent/outdent by 4 columns
set ts=4                   " tab spacing (1 tab = 4 spaces)
set ls=2                   " status line even when one only window is open
set ruler                  " Always show info along bottom.
set wmnu                   " enables 'wildmenu' for inputting commands
set wildignore=*.o,*~      " Ignore object and swap files
set smarttab               " Be smart when using tabs
set nohlsearch             " Don't continue to highlight searched phrases.
set incsearch              " But do highlight as you type your search.
set tabpagemax=20          " Increases maximum number of tabs open at once
set cinkeys-=0#            " Indent #pragma lines as you would regular code

" To help break my bad habbit
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let fortran_free_source=1  " Fortran stuff
let fortran_do_enddo=1
let fortran_fold=1
let fortran_fold_conditionals=1
let fortran_more_precise=1

set foldmethod=syntax      " Function folding. 'za' to roll, 'zi' to disable

let mapleader = ","        " Set leader to , (useful for below mappings)
let g:mapleader = ","

" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
