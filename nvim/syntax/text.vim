:syntax match txtNote /NOTE:/
:syntax match txtLookUp /LOOK\ UP:/ 
:syntax match txtLookUp /LOOK\ INTO:/
:syntax match txtTitle /##.*/
:syntax match txtTitle /Link:/
:syntax match txtTitle /LINK:/
:syntax match txtTitle /^[A-Z: ]*\n/
:syntax match txtDash /^[ ]*- /
:syntax match txtList /[0-9]*)/
:syntax region txtBlkCmt start=/\"\"\"/ end=/\"\"\"/
:syntax region txtBash start=/`/ end=/`/

:highlight Normal ctermfg=white guifg=white
:highlight txtNote ctermfg=red guifg=red
:highlight txtLookUp ctermfg=lightgreen guifg=lightgreen
:highlight txtDash ctermfg=magenta guifg=magenta
:highlight txtList ctermfg=35 guifg=#00af5f
:highlight txtTitle ctermfg=cyan guifg=cyan
:highlight txtBlkCmt ctermfg=68 guifg=#4273ca
:highligh txtBash ctermfg=35 guifg=#bb9af7
