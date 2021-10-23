if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'


" for update => :NeoBundleUpdate vimfiler
" for delete => :NeoBundleClean vimfiler

call neobundle#end()

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleCheck
" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" ============================
" for NerdTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
syntax enable

set t_Co=256

colorscheme tequila-sunrise

set bg=dark

"行番号表示
set number

"タイトル表示
set title

"消音
set visualbell

"コマンド表示
set showcmd

"カーソル位置の強調
set cursorline
set cursorcolumn

"対応カッコを強調
set showmatch
"強調時間１秒
set matchtime=1

"タブ幅
set shiftwidth=2
set tabstop=2

"タブをスペースで埋める
set expandtab

"Makefileだけはタブのまま
let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif

"自動インデント
set smartindent

"末尾+1まで移動可能
set virtualedit=onemore

"文字コード
set fenc=utf-8

"行が折り畳まれても一行ずつ移動
nnoremap j gj
nnoremap k gk

"ecs２連打でハイライトキャンセル
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"jj change normal mode from insert mode
inoremap <silent> jj <ESC>

"検索時に大文字小文字区別しない
set ignorecase

"大文字が打たれたら区別する
set smartcase

"検索途中から結果を表示
set incsearch

"bottomまで検索したらtopに戻る
set wrapscan

"検索結果をハイライト
set hlsearch

"クリップボード
set clipboard&
set clipboard=unnamed

"swapファイルなどを作成しない
set nowritebackup
set nobackup
set noswapfile

filetype on
filetype plugin indent on

"拡張子ごとにタブ幅を変える
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 shiftwidth=4 expandtab
  autocmd BufNewFile,BufRead *.cpp setlocal tabstop=2 shiftwidth=2 expandtab
augroup END
