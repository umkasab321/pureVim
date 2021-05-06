"VSP and Size
vsp
"Set PRJROOT
let g:VIM_PRJROOT = expand("<sfile>:h")
echo "HELLO"
echo VIM_PRJROOT
"Open netrw
edit .
"Set g:netrw_chgwin
let g:netrw_chgwin = 2
nmap <buffer> <2-LeftMouse> <Nop>
nnoremap <buffer> dj <C-w>j
nnoremap <buffer> dk <C-w>k
nnoremap <buffer> dl <C-w>l
nnoremap <buffer> dh <C-w>h
"Reload current directory when cliced or enter
"Buffer List Plugin. Get Buffer List. Background hilight at current buffer. 
"Command BufferSelector
"1.Event Buff Open, Write, etc... Reload Buffer List and status => get :ls string?
"2.Display BuffId, saved or not saved, filename
"3.Event Click, get Cursor Line string
"4.split line string by space and get buffId
"5.Open buffId at winnr=3?
"Event Mouse Move, Cursor trace mouse.
"Set ctags
