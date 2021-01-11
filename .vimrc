"======================================
"   STANDARD SETTINGS
"======================================

"disable vi compatibility
set nocompatible

"enable syntax highlighting
syntax on

"show line numbers
set number
set relativenumber
set nu

"encoding
set encoding=utf-8

"better command-line completition
set wildmenu

"use bash as the default shell
set shell=/bin/bash

"using jj instead of ESC for command mode
inoremap jj <Esc>

"ignore compiled files
set wildignore=*.pyc,*class

"change the terminal's title but restore old title after leaving vim
set title
set titleold=

"disable beep sound
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"set max length for linux
set colorcolumn=80

"highlight search words as soon as you start typing
set incsearch

"start scrolling 8 lines before reaching the bottom of the screen
set scrolloff=8

"don't wrap text if a line is too long
set nowrap



"======================================
"   INDETATION  AND BRACKET SETTING
"======================================

"setting indentation
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
"set smartindent
"set softtabstop=4
"set shiftwidth=4
"set expandtab
"set autoindent

"proper tabbing and bracket insertion
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

"automatic bracket setting
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i



"======================================
"   TABS AND WINDOWS
"======================================

"navigating tabs using Ctrl-h and Ctrl-l
nnoremap <C-h> gT
nnoremap <C-l> gt

"navigating windows using H,J,K,L
nnoremap <silent> <S-h> :wincmd h<CR>
nnoremap <silent> <S-j> :wincmd j<CR>
nnoremap <silent> <S-k> :wincmd k<CR>
nnoremap <silent> <S-l> :wincmd l<CR>

"resizing windows using - and +
nnoremap <silent> <up> :res +5<CR>
nnoremap <silent> <down> :res -5<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>



"======================================
"   BUFFERS
"======================================

"go to the next buffer
noremap <C-n> :bn<CR>

"go to the previous buffer
noremap <C-p> :bp<CR>

"delete buffer
noremap <C-d> :bd<CR>

"list buffers
noremap <C-l> :buffers<CR>



"======================================
"   VUNDLE
"======================================
set nocompatible              "be iMproved, required
filetype off                  "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"VS code theme
Plugin 'tomasiser/vim-code-dark'
"powerline
Plugin 'vim-airline/vim-airline'
"fugitive
Plugin 'tpope/vim-fugitive'
"nerdtree
Plugin 'preservim/nerdtree'
"undotree
Plugin 'mbbill/undotree'

"all of your Plugins must be added before the following line
call vundle#end()            "required
filetype plugin indent on    "require



"======================================
"   VS CODE THEME
"======================================

"enabling the theme
colorscheme codedark



"======================================
"   AIRLINE
"======================================

"enable powerline fonts
let g:airline_powerline_fonts = 1



"======================================
"   NERDTREE 
"======================================

"set ctrl + t to open nerdtree
noremap <C-t> :NERDTreeToggle<CR>



"======================================
"  UNDOTREE 
"======================================

"few history tweeks
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undodir//
set undofile

"set ctrol + u to open undotree
noremap <C-u> :UndotreeToggle<CR>



"=====================================
"   USEFUL FUNCTIONS
"=====================================

"Highlights repeated words
function! HighlightRepeats() range
  let lineCounts = {}
  let lineNum = a:firstline
  while lineNum <= a:lastline
    let lineText = getline(lineNum)
    if lineText != ""
      let lineCounts[lineText] = (has_key(lineCounts, lineText) ? lineCounts[lineText] : 0) + 1
    endif
    let lineNum = lineNum + 1
  endwhile
  exe 'syn clear Repeat'
  for lineText in keys(lineCounts)
    if lineCounts[lineText] >= 2
      exe 'syn match Repeat "^' . escape(lineText, '".\^$*[]') . '$"'
    endif
  endfor
endfunction

command! -range=% HighlightRepeats <line1>,<line2>call HighlightRepeats()
