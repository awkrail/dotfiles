" syntax highlight
:syntax on

set ignorecase
set smartcase
set incsearch
set hlsearch

cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

set shiftround
set hidden
set switchbuf=useopen
set showmatch
set matchtime=3

set matchpairs& matchpairs+=<:>

set autoindent
:set tabstop=8
:set shiftwidth=8
:set expandtab

set backspace=indent,eol,start
set clipboard& clipboard+=unnamedplus

set nowritebackup
set nobackup
set noswapfile


set number
set wrap
set textwidth=0

inoremap jj <Esc>
nmap <silent> <Esc><Esc> :nohlsearch<CR>
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap <Tab> %
vnoremap <Tab> %

nnoremap <C-l> gt
nnoremap <C-h> gT

nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>

cmap w!! w !sudo tee > /dev/null %
set encoding=utf-8

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/root/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/root/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
call dein#add('whatyouhide/vim-gotham')
call dein#add('scrooloose/nerdtree')
call dein#add('ervandew/supertab')
call dein#add('itchyny/lightline.vim')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#add('airblade/vim-gitgutter')
call dein#add('sheerun/vim-polyglot')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" nerdtree
nnoremap <Space><Space> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='v'
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

" color scheme should be written after dein.vim
colorscheme gotham256

" lightline
set laststatus=2

" vim git
set signcolumn=yes
" update time
set updatetime=100
" disable default key mapping
" override color
augroup vimrc_vim_gitgutter
  autocmd!
  " sign column bg color
  autocmd VimEnter,ColorScheme * highlight SignColumn guibg=bg ctermbg=bg

  " sign column color
  autocmd VimEnter,ColorScheme * highlight GitGutterAdd guifg=#000900 ctermfg=2
  autocmd VimEnter,ColorScheme * highlight GitGutterChange guifg=#bbbb00 ctermfg=3
  autocmd VimEnter,ColorScheme * highlight GitGutterDelete guifg=#ff2222 ctermfg=1
augroup END
let g:gitgutter_map_keys = 0

" abbr
abbr _sh #!/bin/bash

" terminal bottom bterm
cabbrev bterm bo term
root@mobileone-0-0:~#
root@mobileone-0-0:~# ls
PytorchOCR  init.sh  installer.sh
root@mobileone-0-0:~# ls
PytorchOCR  init.sh  installer.sh
root@mobileone-0-0:~# cat ~/.vimrc
" syntax highlight
:syntax on

set ignorecase
set smartcase
set incsearch
set hlsearch

cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

set shiftround
set hidden
set switchbuf=useopen
set showmatch
set matchtime=3

set matchpairs& matchpairs+=<:>

set autoindent
:set tabstop=8
:set shiftwidth=8
:set expandtab

set backspace=indent,eol,start
set clipboard& clipboard+=unnamedplus

set nowritebackup
set nobackup
set noswapfile


set number
set wrap
set textwidth=0

inoremap jj <Esc>
nmap <silent> <Esc><Esc> :nohlsearch<CR>
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap <Tab> %
vnoremap <Tab> %

nnoremap <C-l> gt
nnoremap <C-h> gT

nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>

cmap w!! w !sudo tee > /dev/null %
set encoding=utf-8

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/root/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/root/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
call dein#add('whatyouhide/vim-gotham')
call dein#add('scrooloose/nerdtree')
call dein#add('ervandew/supertab')
call dein#add('itchyny/lightline.vim')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#add('airblade/vim-gitgutter')
call dein#add('sheerun/vim-polyglot')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" nerdtree
nnoremap <Space><Space> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='v'
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

" color scheme should be written after dein.vim
colorscheme gotham256

" lightline
set laststatus=2

" vim git
set signcolumn=yes
" update time
set updatetime=100
" disable default key mapping
" override color
augroup vimrc_vim_gitgutter
  autocmd!
  " sign column bg color
  autocmd VimEnter,ColorScheme * highlight SignColumn guibg=bg ctermbg=bg

  " sign column color
  autocmd VimEnter,ColorScheme * highlight GitGutterAdd guifg=#000900 ctermfg=2
  autocmd VimEnter,ColorScheme * highlight GitGutterChange guifg=#bbbb00 ctermfg=3
  autocmd VimEnter,ColorScheme * highlight GitGutterDelete guifg=#ff2222 ctermfg=1
augroup END
let g:gitgutter_map_keys = 0

" abbr
abbr _sh #!/bin/bash

" terminal bottom bterm
cabbrev bterm bo term
