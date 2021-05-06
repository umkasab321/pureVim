filetype plugin on
set number
set cursorline
if has('win32')
    let ostype = "Win"
elseif has('mac')
    let ostype = "Mac"
	set clipboard+=unnamed
else
    let ostype = system("uname")
	set clipboard&
	set clipboard^=unnamedplus
	set columns=150
	set lines=45
endif
let commentCharacter={'c':'\/\/', 'c++':'\/\/', 'vim':'"', 'python':'#' }
set incsearch
set wildmenu wildmode=list:full
set title
set showmatch
syntax on
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set cindent
set ignorecase
set smartcase
set wrapscan
inoremap { {}<left>
inoremap <silent> jj <ESC>
vnoremap <silent> dv <ESC>
nnoremap j gj
nnoremap k gk
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-e> <Delete>
inoremap <S-j> J
nnoremap <Tab> >>
nnoremap <S-Tab> <<
nnoremap <2-LeftMouse> <Nop>
nnoremap dj <C-w>j
nnoremap dk <C-w>k
nnoremap dl <C-w>l
nnoremap dh <C-w>h
nnoremap ; :
nnoremap fd <S-v>%zf
nnoremap go :<C-u>call append(expand('.'), '')<Cr>j
set tabstop=4
set mouse=a
set ttymouse=xterm2
set tags=tags;~

"augroup ctags
"	autocmd!
"	autocmd BufWritePost * call system("ctags -R")
"augroup END

""""""""""""""""
"NETRWa
""""""""""""""""
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:netrw_browse_spl = 4
let g:netrw_keepdir = 0
