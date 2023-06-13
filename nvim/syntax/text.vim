:syntax match txtTitle /^[A-Z: ]*\n/
:syntax match txtNote /^[ ]*NOTE:/
:syntax match txtLookUp /^[ ]*LOOK\ UP:/ 
:syntax match txtLookUp /^[ ]*LOOK\ INTO:/
:syntax match txtTitle /^[ ]*##.*/
:syntax match txtTitle /^[ ]*Link:/
:syntax match txtTitle /^[ ]*LINK:/
:syntax match txtDash /^[ ]*- /
:syntax match txtList /^[ ]*[0-9]*)/
:syntax region txtBlkCmt start=/\"\"\"/ end=/\"\"\"/
:syntax region txtBash start=/`/ end=/`/
:syntax region txtHighlighter start=/--/ end=/--/

:highlight Normal ctermfg=white guifg=white
:highlight txtNote ctermfg=35 guifg=#f7768e
:highlight txtLookUp ctermfg=lightgreen guifg=#9ece6a
:highlight txtDash ctermfg=yellow guifg=#ff9e64
:highlight txtList ctermfg=yellow guifg=#2ac3de
:highlight txtTitle ctermfg=cyan guifg=#7dcfff
:highlight txtBlkCmt ctermfg=68 guifg=#4273ca
:highlight txtBash ctermfg=35 guifg=#bb9af7
:highlight txtHighlighter ctermfg=35 guifg=#ff9e64
