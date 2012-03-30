call pathogen#infect()
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
" defaults
"set ts=4 sw=4 autoindent
set pastetoggle=<F11>
set nocompatible
set incsearch
set ignorecase
set smartcase
set wildmode=longest,list
set scrolloff=4
set mouse=a
set ruler
set laststatus=2
set backspace=2
set backupdir=~/.vim/swp,.,/tmp
set directory=~/.vim/backup,.,./.backup,/tmp
set clipboard=unnamed
set colorcolumn=80
set number
set enc=utf-8
"Highlight current line
set cursorline
"ONLY FOR UBUNTU
set t_Co=256
colorscheme ir_black 
hi LineNr ctermfg=yellow
"hi StatusLineNC ctermfg=darkgrey ctermbg=black 
syntax on
" Automatically chmod +x Shell and Perl scripts
autocmd BufWritePost    *.sh    !chmod +x %
autocmd BufWritePost    *.pl    !chmod +x %
"Custom color for Comment types
"hi Comment ctermfg=yellow cterm=italic

"phpDoc
source ~/.vim/plugin/php-doc1.1.vim 
let g:pdv_cfg_Author = "Allan Chappell <achappell@allplayers.com>"
let g:pdv_cfg_Copyright = "2012 AllPlayers.com"
let g:pdv_cfg_License = ""
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

"Custom color for tabs

"Custom color for Omnicomplete Menu
"hi Pmenu ctermbg=brown

" Autocomplete for php
"autocmd FileType php 
set omnifunc=phpcomplete#CompletePHP

" read/write a .viminfo file, don't store more than 1000 lines of registers
set viminfo='20,\"1000


"Open file at last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif
"Add Jquery syntax
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
"---------+
" Comments \
"-----------+

map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>
"map ,> :s/^/> /<CR>
map ,! :s/^/!/<CR>
map ,; :s/^/;/<CR>
map ,- :s/^/--/<CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>
map ,_ :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
map ,> :lnext<CR>
map ,< :lprevious<CR>
" Common Command Typos
command! Q  quit    " converts ... :Q  => :q
command! W  write   " converts ... :W  => :W
command! Wq wq      " converts ... :Wq => :wq
command! Wn wn      " converts ... :Wn => :wn
command! WN wN      " converts ... :WN => :wN

let g:svndiff_autoupdate = 1
hi DiffAdd      ctermfg=0 ctermbg=green guibg='green' 
hi DiffDelete   ctermfg=0 ctermbg=red  guibg='red' 
hi DiffChange   ctermfg=0 ctermbg=darkyellow  guibg='darkyellow' 

hi diffAdded    ctermfg=green ctermbg=none  guifg=green guibg=none
hi diffRemoved  ctermfg=red ctermbg=none  guifg=red guibg=none

"Nerd Tree support
nnoremap <silent> <F9> :NERDTreeToggle<CR>

"tell Syntastic to use the Drupal coding standards when running PHP CodeSniffer
let g:syntastic_phpcs_conf=" --standard=DrupalCodingStandard --extensions=php,module,inc,install,test,profile,theme"
let g:syntastic_enable_signs=1 
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on

map  <F8>   <Plug>ShowFunc 
map! <F8>   <Plug>ShowFunc
