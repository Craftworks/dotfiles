" detect filetype
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  autocmd!
  autocmd BufRead,BufNewFile *.sql  setfiletype mysql
  autocmd BufRead,BufNewFile *.t    setfiletype perl
  autocmd BufRead,BufNewFile *.psgi setfiletype perl
  autocmd BufRead,BufNewFile *.tx   setfiletype xslate
augroup END
