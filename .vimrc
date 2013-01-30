set nocompatible
filetype off

" initialize Vundle
set rtp+=~/.vim/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Align'
Bundle 'Shougo/neocomplcache'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'pekepeke/titanium-vim'
Bundle 'motemen/xslate-vim'
Bundle 'mojo.vim'
Bundle 'nginx.vim'

filetype plugin indent on
syntax on

set modeline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set ignorecase
set smartcase
set showcmd
set nobackup
set directory-=.

set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

inoremap <C-k> <ESC>
nnoremap <PageUp> :<C-u>tabp<Return>
nnoremap <PageDown> :<C-u>tabn<Return>
nnoremap <C-p> :<C-u>tabp<Return>
nnoremap <C-n> :<C-u>tabn<Return>

nnoremap <C-k><C-k> :<C-u>set nohlsearch<Return>
nnoremap / :<C-u>set hlsearch<Return>/
nnoremap ? :<C-u>set hlsearch<Return>?
nnoremap * :<C-u>set hlsearch<Return>*
nnoremap # :<C-u>set hlsearch<Return>#

autocmd FileType perl setlocal dictionary=$VIMRUNTIME/syntax/perl.vim
autocmd FileType perl setlocal complete+=k
autocmd FileType perl setlocal iskeyword+=:
autocmd FileType perl nnoremap <buffer> K :Perldoc<Return>
autocmd FileType perl nnoremap <buffer> <Up> :<C-u>!perl -I./lib -I./t/lib -I./extlib/lib/perl5 -I./extlib/lib/perl5/x86_64-linux-gnu-thread-multi -wc %<Return>
autocmd FileType perl nnoremap <buffer> <Down> :<C-u>!perl -I./lib -I./t/lib -I./extlib/lib/perl5 -I./extlib/lib/perl5/x86_64-linux-gnu-thread-multi %<Return>
autocmd FileType perl nnoremap <buffer> <Left> :<C-u>!prove -v -I./lib -I./t/lib -I./extlib/lib/perl5 -I./extlib/lib/perl5/x86_64-linux-gnu-thread-multi %<Return>

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType javascript.titanium setlocal ts=2 sts=2 sw=2
autocmd FileType css    setlocal ts=2 sts=2 sw=2
autocmd FileType xslate setlocal ts=2 sts=2 sw=2
autocmd FileType xslate inoremap <buffer> << </<C-p>>

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

augroup vimrc-auto-mkdir  " {{{
  autocmd!
  autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'))
  function! s:auto_mkdir(dir)  " {{{
    if !isdirectory(a:dir)
      call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
    endif
  endfunction  " }}}
augroup END  " }}}

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
