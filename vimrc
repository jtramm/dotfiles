" John Tramm's Vim Configuration File

set nocompatible           " get rid of Vi compatibility mode.
filetype plugin indent on  " filetype detection[ON] plugin[ON] indent[ON]
syntax enable              " enable syntax highlighting

set sw=4                   " indent/outdent by 4 columns
set ts=4                   " tab spacing (1 tab = 4 spaces)
set ls=2                   " status line even when one only window is open
set ruler                  " Always show info along bottom.
set wmnu                   " enables 'wildmenu' for inputting commands
set smarttab               " Be smart when using tabs

set nohlsearch             " Don't continue to highlight searched phrases.
set incsearch              " But do highlight as you type your search.

let fortran_free_source=1  " Fortran stuff
let fortran_do_enddo=1
let fortran_fold=1

set foldmethod=syntax      " Function folding. 'za' to roll, 'zi' to disable

:set cinkeys-=0#           " Indent #pragma lines as you would regular code

set tabpagemax=20          " Increases maximum number of tabs open at once
