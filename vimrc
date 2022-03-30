" GENERAL {{{

  " Disable compatibility with vi, which can cause unexpected issues.
  set nocompatible

  " Enable file type protection. Vim will be able to try to detect the
  " type of file in use.
  filetype on

  " Enable plugins and load plugin for the detected file type.
  filetype plugin on

  " Load an indent file for the detected file type.
  filetype indent on

  " Do not save backup files.
  set nobackup

  " Allow incrementing of numbers with leading zeros.
  set nrformats-=octal

  set foldmethod=marker

" }}}

" DISPLAY {{{

  syntax on
  set number relativenumber

  " Do not let cursor scroll below or above N number of lines when scrolling.
  set scrolloff=10
  set nowrap

  " Show typed command in last line of screen.
  set showcmd

  " Show mode on last line.
  set showmode

" }}}

" SEARCH {{{

  " Incrementally highlight matching characters while searching.
  set incsearch

  " Override ignorecase if searching for capital letters.
  set smartcase

  set showmatch
  set hlsearch

" }}}

" SPACING {{{

  " Set shift width to 2 spaces.
  set shiftwidth=2

  " Set tab width to 2 columns.
  set tabstop=2

  " Use spaces instead of tabs.
  set expandtab
"}}}

" COMMAND MODE {{{

  " Save N number of commands in history.
  set history=1000

  " Enable TAB auto-completion.
  set wildmenu

  " Emulate Bash completion in wildmenu.
  set wildmode=list:longest

  " Ignore non-plain-textfiles in wildmenu.
  set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}

" PLUGINS {{{

" }}}

" MAPPINGS {{{

  " Insert Mode {{{
    inoremap jk <Esc>
  " }}}

" }}}

" VIMSCRIPT {{{

" }}}

" STATUS LINE {{{

" }}}
