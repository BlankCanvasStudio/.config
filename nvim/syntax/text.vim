:syntax region txtBlkCmt start=/\"\"\"/ end=/\"\"\"/
:syntax region txtGreen start=/`/ end=/`/
:syntax region txtHighlighter start=/--/ end=/--/
:syntax region txtPurple start=/=>/ end=/<=/
:syntax region txtRed start=/\~\~/ end=/\~\~/
:syntax match txtTitle /^[A-Z: ]*\n/
:syntax match txtNote /NOTE:/
:syntax match txtGreen /LOOK\ UP:/ 
:syntax match txtGreen /LOOK\ INTO:/
:syntax match txtTitle /Link:/
:syntax match txtTitle /LINK:/
:syntax match txtDash /^[ ]*- /
:syntax match txtList /^[ ]*[0-9]*)/
:syntax match txtHighlighter /##.*/
:syntax match txtGreen /^[ ]*\$.*/
:syntax match txtPurple /^[ ]*>.*/
:syntax match txtIndex /\[[0-9\-\, ]*\]/
:syntax match txtRed /^[ ]*!!.*/
:syntax match txtRed /\V(?)/
:syntax match txtDarkYellow /[0-9\.-]*%/
:syntax match txtDarkYellow /^[ ]*- .*:/
:syntax match txtDarkBlue /HELPFUL:/

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
