"行選択状態のみ仕様可能
"優先順位
"0.gcc一つでトグル可能に。 正規表現のマッチが空文字でないと判断するかどうか。=>複数行の内、コメントと非コメント行が混在すると厄介。
"1.Normal modeでカーソル行のコメント化
"2.通常選択の範囲をブロックコメント化
"(3.矩形選択範囲をブロックコメント化)
function! CommentTgl1() range
	"echo visualmode()
	let commentChar = ""
	if &filetype == "vim"
		let	commentChar = "\""
	elseif &filetype == "c"
		let commentChar = "\\\/\\\/"
	elseif &filetype == "python"
		let commentChar = "#"
	endif
	if visualmode() ==# "V"
		execute "'<,'>s/^/" . commentChar . "/g"
	elseif visualmode() ==# "v"
"			execute "'<,'>s/\%V/" . commentChar . "\t/g"
"			execute "'<,'>s/\%V/" . commentChar . "\t/g"
		execute "vmap _a '<i" . commentChar . "<esc>"
	endif

endfunction
command! -range  CommentTgl call CommentTgl1()
vnoremap gcc :CommentTgl<CR>
nnoremap gcc :CommentTgl<CR>
vmap gvv :s/^\/\/\\|^[#"%!;]//g<CR>:nohlsearch<CR>
