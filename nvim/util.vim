" this defines global variable.
" g:dir_opened is opened dir and;
" if the opened is a file, it is dir of the file.
" And the variable is the dir if it is dir.

let s:args=argv()

if len(s:args) > 0
  let g:dir_opened=fnamemodify(s:args[0],':p:h')
else
  let g:dir_opened=getcwd()
endif

