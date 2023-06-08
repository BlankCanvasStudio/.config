:syntax match txtNote /NOTE:/
:syntax match txtLookUp /LOOK\ UP:/ 
:syntax match txtLookUp /LOOK\ INTO:/
:syntax match txtTitle /#.*/
:syntax match txtTitle /Link:/
:syntax match txtTitle /LINK:/
:syntax match txtTitle /^[A-Z]*\n/
:syntax match txtDash / - /

:highlight txtNote ctermfg=red guifg=red
:highlight txtLookUp ctermfg=lightgreen guifg=lightgreen
:highlight txtDash ctermfg=magenta guifg=magenta
:highlight txtTitle ctermfg=cyan guifg=cyan

