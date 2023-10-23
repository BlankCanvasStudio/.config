
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
" Dashed line regex
:syntax match txtGreen /^[-]*$/


" Title regex
:syntax match txtTitle /^[0-9A-Z: \\&\'\"\_\(\)]*\n/
" Equals regex
:syntax match txtDarkBlue /^[ ]*=.*/
" Remember regex
:syntax match txtNote /REMEMBER:/
" Note regex
:syntax match txtNote /NOTE:/
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
" Try regex
:syntax match txtDarkBlue /TRY:/
:syntax match txtDarkBlue /Try:/
" Tried regex
:syntax match txtPurple /TRIED:/
:syntax match txtPurple /Tried:/
" IDEA regex
:syntax match txtPurple /IDEA:/
:syntax match txtPurple /Idea:/
" Fix regex
:syntax match txtRed /Fix:/
" Question regex
:syntax match txtPurple /Question:/
:syntax match txtPurple /Questions:/
:syntax match txtPurple /QUESTION:/
:syntax match txtPurple /QUESTIONS:/
" Where regex
:syntax match txtGreen /Where:/
:syntax match txtGreen /WHERE:/
:syntax match txtGreen /where:/
" TODO regex
:syntax match txtGreen /TODO:/
:syntax match txtGreen /Todo:/
" Therefore regex
:syntax match txtDarkBlue /Therefore:/
" highlighting (?) regex
:syntax match txtRed /\V(?)/
" Issue regex
:syntax match txtRed /ISSUE:/
:syntax match txtRed /Issue:/
" Result regex
:syntax match txtHighlighter /RESULTS:/
:syntax match txtHighlighter /RESULT:/
:syntax match txtHighlighter /Result:/
:syntax match txtHighlighter /Results:/



" dashed list regex
:syntax match txtDash /^[ ]*- /
" numbered list regex
:syntax match txtList /^[ ]*[0-9\.N\+]*)/
:syntax match txtList /^[ ]*[0-9\.N\+]*).*:/


" Dashed definition regex
:syntax match txtDarkYellow /^[ ]*- .*:/


" citation / index regex
:syntax match txtIndex /\[[0-9\-\, ]*\]/


" Percent highlight regex
:syntax match txtDarkYellow /[0-9\.-]*%/
" Number regex but allow for hex codes
:syntax match txtDarkYellow /#\x\+/

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

