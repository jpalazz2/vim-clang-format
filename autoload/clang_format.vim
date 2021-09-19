" vim-clang-format.vim - Function bindings for clang-format
" Maintianer:          Joe Palazzolo
" Version:             0.1

function! s:validate_pyfile() abort
  if !exists("g:clang_format_pyfile")
    echom throw "g:clang_format_pyfile is not set! Try :help clang_format_pyfile..."
  endif

  if !filereadable(g:clang_format_pyfile)
    echom throw "g:clang_format_pyfile is not readable: " . g:clang_format_pyfile
  endif
endfunction

function! clang_format#format() abort
  s:validate_pyfile()
endfunction
