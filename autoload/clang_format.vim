" vim-clang-format.vim - Function bindings for clang-format
" Maintianer:          Joe Palazzolo
" Version:             0.1

" Validate whether the clang_format command was provided and is executable
function! s:validate_pyfile() abort
  if exists("s:command_avialable") && s:command_available
    return
  end

  if !exists("g:clang_format_pyfile")
    throw "g:clang_format_pyfile is not set! Try :help clang_format_pyfile..."
  endif

  if !executable(g:clang_format_pyfile)
    throw "g:clang_format_pyfile is not executable: " . g:clang_format_pyfile
  endif

  " Only run once per session
  let s:command_available = 1
endfunction

function! clang_format#format() abort
  call s:validate_pyfile()

  let l:lines = "all"
  execute "pyf" g:clang_format_pyfile
endfunction
