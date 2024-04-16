" Editor-Settings{{{
" Encoding{{{
" 全体的なエンコーディングには utf-8 を使用します。
set encoding=utf-8
scriptencoding utf-8

" ファイルの書き込みには utf-8 を使用します。
set fileencoding=utf-8

" ロード時にファイルエンコーディングを使用します。
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
" }}}

" 改行コードを自動認識します。
set fileformats=unix,dos

" キャッシュ用のディレクトリパスを宣言
let s:cache_dir = expand('~/.cache/vim')

" backupfileをキャッシュ用のディレクトリに置くようにします
let s:backupdir = s:cache_dir . '/backup'
if !isdirectory(s:backupdir)
  call mkdir(s:backupdir, 'p')
endif
execute 'set backupdir=' . s:backupdir
set backup

" swapfileをキャッシュ用のディレクトリに置くようにします
let s:swapdir = s:cache_dir . '/swap'
if !isdirectory(s:swapdir)
  call mkdir(s:swapdir, 'p')
endif
execute 'set directory=' . s:swapdir
set swapfile

" undofileをキャッシュ用のディレクトリに置くようにします
let s:undodir = s:cache_dir . '/undo'
if !isdirectory(s:undodir)
  call mkdir(s:undodir, 'p')
endif
execute 'set undodir=' . s:undodir
set undofile

" 東アジアの曖昧な文字幅の問題。
set ambiwidth=single

" 編集中のファイルを自動的に読み込みます
set autoread

" カーソルを行末の 1 文字前に移動します
set virtualedit=block

" レジスタにシステムクリップボードを使用します。
set clipboard+=unnamed

" diff vertical view
set diffopt+=vertical,algorithm:histogram,indent-heuristic

" no beep
set visualbell t_vb=

" }}}

" Display{{{
" 行番号を表示します。
set number

" 相対的な行番号を表示します。
set relativenumber

" 現在の行のカーソルラインを表示します。
set cursorline

" }}}

" Folding{{{
" 3連続中括弧で囲まれた範囲を折り畳めるようにします
set foldmethod=marker
set foldlevel=0
set foldcolumn=3
" }}}

" Search{{{
" 検索結果をハイライト表示する
set hlsearch

" インクリメンタル検索。
" 検索ワードの最初の文字を入力すると検索が開始されます。
set incsearch

" 検索では大文字と小文字が区別されません
set ignorecase

" 小文字で検索すると大文字と小文字が無視されます
set smartcase

" ファイルの最後まで検索が進んだ場合は、再度ファイルの先頭から検索してください。
set wrapscan
" }}}

" Indent{{{
" スマートインデント。
set smartindent

" 半角スペースを入れてタブを挿入します。
set expandtab

" 各コマンドまたはスマート インデントで挿入する空白スペースの量。
set shiftwidth=2

" スペース 2 個を含むタブ幅。
set tabstop=2

" 半角スペース2分のタブを挿入します。
set softtabstop=2

augroup filetypeIndent
  autocmd!
  autocmd FileType html   setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType css    setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType php    setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" }}}

" Statusline{{{
" ステータスラインを表示します。
set laststatus=2

" コマンドラインの補完。
set wildmenu

" コマンド履歴。
set history=5000
" }}} 

" Invisible characters{{{
" 見えない文字を表示します
set list

" タブ/終了行スペース/終了行/ブレーキスペースなし。
set listchars=tab:»-,space:･,trail:･,nbsp:%,eol:↲,extends:»,precedes:«
" }}}

" Normal Mode:{{{
" カーソル下のファイル名を開きます。
nnoremap gf gF

" 検索結果のハイライトを無効にします。
nnoremap <C-l> <Cmd>nohlsearch<Bar>diffupdate<CR><C-l>

" }}}

" Insert Mode:{{{

" 挿入モードを終了します。
inoremap jj <ESC>

" <C-h>で<BS>のため、それの反対
inoremap <C-l> <Del>

" }}}

filetype plugin indent on
syntax on
