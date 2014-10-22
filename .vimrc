filetype plugin indent on

"====================
" ウィンドウサイズ変更
"====================
noremap <C-w>+ <C-w>3+
noremap <C-w>- <C-w>3-
"noremap <C-w>> <C-w>3>
"noremap <C-w><lt> <C-w>3<lt>


"====================
" カーソル移動
"====================
noremap <Space>h ^
noremap <Space>l $
noremap 9 $
noremap j gj
noremap k gk
noremap! <C-A> <Home>
noremap! <C-E> <End>
noremap! <C-F> <Right>
noremap! <C-B> <Left>
noremap! <C-D> <Del>


"====================
" tagジャンプ
"====================
nnoremap <C-]> g<C-]>

"====================
" バッファ切り替え
"====================
nnoremap <C-j> <C-^>


"====================
" ; を : で置き換え
"====================
noremap ; :


"====================
" color
"====================
syntax enable
"colorscheme evening
"set background=dark


"====================
" TAB 幅とインデント
"====================
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent


"====================
" 行番号表示
"====================
set number


"====================
" インクリメンタルサーチ
"====================
set incsearch


"====================
" エンコーディング
"====================
set encoding=utf-8
set fileencodings=utf-8


"====================
" ステータスラインを常に表示
"====================
set laststatus=2


"====================
" NeoBundle
"====================
set nocompatible

if has('vim_starting')
		set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'unix' : 'make -f make_unix.mak',
\     'mac' : 'make -f make_mac.mak',
\     },
\ }

NeoBundle 'vim-scripts/buftabs'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
"NeoBundle 'mattn/zencoding-vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim' }
NeoBundle 'houtsnip/vim-emacscommandline'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'basyura/TweetVim'
NeoBundle 'tyru/open-browser.vim'
"NeoBundle 'tyru/skk.vim'
NeoBundle 'basyura/twibill.vim'
"NeoBundle 'hdima/python-syntax'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'mfumi/battery.vim'
NeoBundle 'yuratomo/w3m.vim'

filetype plugin indent on


"====================
" VimFiler
"====================
autocmd VimEnter * VimFiler


"====================
" NERDTree
"====================
nmap <Leader>n :NERDTreeToggle<CR>


"====================
" jedi-vim
"====================
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures = 1
autocmd FileType python let b:did_ftplugin = 1

"====================
" Taglist.vim
"====================
nnoremap <Leader>t :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1


"====================
" buftabs
"====================
let buftabs_only_basename=1 
"let buftabs_in_statusline=1 


"====================
" zen-conding
"====================
let g:user_zen_settings = {
\  'html' : {
\    'indentation' : '    '
\  },
\}

"====================
" indent-guides
"====================
let g:indent_guides_auto_colors = 0
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
"let g:indent_guides_color_change_percent = 100
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=7
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=7


"====================
" unite.vim
"====================
" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Space>u [unite]

nnoremap <silent> [unite]c :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
"nnoremap <silent> [unite]b :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\ buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]o :<C-u>Unite outline<CR>
nnoremap <silent> [unite]f :<C-u>Unite -buffer-name=resume resume<CR>
nnoremap <silent> [unite]d :<C-u>Unite -buffer-name=files -default-action=lcd directory_mru<CR>
nnoremap <silent> [unite]ma :<C-u>Unite mapping<CR>
nnoremap <silent> [unite]me :<C-u>Unite output:message<CR>
nnoremap  [unite]f  :<C-u>Unite source<CR>


"====================
" TweetVim
"====================
"let g:tweetvim_display_icon = 1


"====================
" neocomplcache
"====================
let g:neocomplcache_enable_at_startup = 1
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns = {
            \ 'python': '\h\w*\|[^. \t]/./w*'
            \ }
let g:neocomplcache_omni_functions = {
            \ 'python': 'jedi#completions'
            \ }


"====================
" VimShell
"====================
let g:my_vimshell_prompt_counter = -1
"function! g:my_vimshell_dynamic_prompt()
"  let g:my_vimshell_prompt_counter += 1
"  let anim = [
"          \        "(´･_･`)",
"          \        "( ´･_･)",
"          \        "(  ´･_)",
"          \        "(   ´･)",
"          \        "(    ´)",
"          \        "(     )",
"          \        "(     )",
"          \        "(`    )",
"          \        "(･`   )",
"          \        "(_･`  )",
"          \        "(･_･` )",
"          \    ]
"  return anim[g:my_vimshell_prompt_counter % len(anim)]
"endfunction
"let g:vimshell_prompt_expr = 'g:my_vimshell_dynamic_prompt()." > "'
"let g:vimshell_prompt_pattern = '^([ ´･_･`]\{5}) > '

"====================
" skk
"====================
"map! <C-j> <Plug>(skk-toggle-im)
"let g:skk_large_jisyo = expand('~/SKK-JISYO.L')


