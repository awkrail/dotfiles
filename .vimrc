" syntax highlight
:syntax on
" 大文字小文字を区別しない
set ignorecase         
" 検索文字に大文字がある場合は大文字小文字を区別
set smartcase           
" インクリメンタルサーチ
set incsearch           
" 検索マッチテキストをハイライト
set hlsearch            

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

" '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set shiftround          " 補完時に大文字小文字を区別しない set infercase           
" バッファを閉じる代わりに隠す（Undo履歴を残すため）
set hidden              
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen   
" 対応する括弧などをハイライト表示する
set showmatch           
" 対応括弧のハイライト表示を3秒にする
set matchtime=3         

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>

" インデントをスペース2つにする
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

" クリップボードでコピーを可能にする
set clipboard& clipboard+=unnamedplus

" バックアップファイルを作らない, swapファイルも作らない
set nowritebackup
set nobackup
set noswapfile


" 表示関係
" 行番号の表示
set number              
" 長いテキストの折り返し
set wrap                
" 自動的に改行が入るのを無効化
set textwidth=0         

" macro, key設定
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" TABにて対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %

" tabの移動
nnoremap <C-l> gt
nnoremap <C-h> gT

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

" T + ? で各種設定をトグル
nnoremap [toggle] <Nop>
nmap T [toggle]
nnoremap <silent> [toggle]s :setl spell!<CR>:setl spell?<CR>
nnoremap <silent> [toggle]l :setl list!<CR>:setl list?<CR>
nnoremap <silent> [toggle]t :setl expandtab!<CR>:setl expandtab?<CR>
nnoremap <silent> [toggle]w :setl wrap!<CR>:setl wrap?<CR>

" w!! でスーパーユーザーとして保存（sudoが使える環境限定）
cmap w!! w !sudo tee > /dev/null %

" ファイルエンコーディング
set encoding=utf-8

" Dein.vim
" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/home/awkrail/.vim/dein'

" Set Dein source path (required)
let s:dein_src = '/home/awkrail/.vim/dein/repos/github.com/Shougo/dein.vim'

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
call dein#add('ryanoasis/vim-devicons')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

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

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif

" nerdtree
" 2回スペースを打つと消える
nnoremap <Space><Space> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='v'

" color scheme should be written after dein.vim
colorscheme gotham256

" lightline
set laststatus=2
