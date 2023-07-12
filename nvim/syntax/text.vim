
" block comments. Usually used for REAL code
:syntax region txtBlkCmt start=/\"\"\"/ end=/\"\"\"/
" Green block comments used for bash
:syntax region txtGreen start=/`/ end=/`/
" Gold highlighted region
:syntax region txtHighlighter start=/--/ end=/--/
" Purple block region
:syntax region txtPurple start=/=>/ end=/<=/
" Red block comments
:syntax region txtRed start=/\~\~/ end=/\~\~/


" Gold inline regex
:syntax match txtHighlighter /##.*/
" Bash inline regex
:syntax match txtGreen /^[ ]*\$.*/
" Purple inline regex
:syntax match txtPurple /^[ ]*>.*/
" red inline regex
:syntax match txtRed /!!.*/
" dark blue inline regex
:syntax match txtDarkBlue /^[ ]*\/\/.*/
:syntax match txtDarkBlue /\s\/\/.*/


" Title regex
:syntax match txtTitle /^[0-9A-Z: \\\/&\'\"\-]*\n/
" Note regex
:syntax match txtNote /NOTE:/
" Question regex
:syntax match txtRed /QUESTION:/
:syntax match txtRed /Question:/
" Look up regex
:syntax match txtGreen /LOOK\ UP:/ 
:syntax match txtGreen /LOOK\ INTO:/
" Link regex
:syntax match txtTitle /Link:/
:syntax match txtTitle /LINK:/
" Helpful regex
:syntax match txtDarkBlue /HELPFUL:/
" Example regex
:syntax match txtDarkBlue /Ex:/
" highlighting (?) regex
:syntax match txtRed /\V(?)/


" dashed list regex
:syntax match txtDash /^[ ]*- /
" numbered list regex
:syntax match txtList /^[ ]*[0-9]*)/


" Dashed definition regex
:syntax match txtDarkYellow /^[ ]*- .*:/


" citation / index regex
:syntax match txtIndex /\[[0-9\-\, ]*\]/


" Percent highlight regex
:syntax match txtDarkYellow /[0-9\.-]*%/

" Highlighting the arrow is nice
:syntax match txtDarkBlue /->/

" Prevent end of line spaces
:syntax match txtFullRed /\s\{2,}$/




:highlight Normal ctermfg=white guifg=white
:highlight txtNote ctermfg=35 guifg=#f7768e
:highlight txtGreen ctermfg=lightgreen guifg=#9ece6a
:highlight txtDash ctermfg=yellow guifg=#ff9e64
:highlight txtList ctermfg=yellow guifg=#2ac3de
:highlight txtTitle ctermfg=cyan guifg=#7dcfff
:highlight txtBlkCmt ctermfg=68 guifg=#4273ca
:highlight txtBash ctermfg=lightgreen guifg=#9ece6a
:highlight txtPurple ctermfg=35 guifg=#bb9af7
:highlight txtHighlighter ctermfg=35 guifg=#ff9e64
:highlight txtIndex ctermfg=35 guifg=#bb9af7
:highlight txtDarkYellow ctermfg=yellow guifg=#e0af68
:highlight txtDarkBlue ctermfg=yellow guifg=#2ac3de
:highlight txtRed ctermfg=35 guifg=#f7768e
:highlight txtFullRed ctermfg=35 guifg=#f7768e guibg=#f7768e

