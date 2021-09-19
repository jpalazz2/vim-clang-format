" vim-clang-format.vim - Mappings for clang-format
" Maintianer:          Joe Palazzolo
" Version:             0.1

if exists("g:loaded_clang_format") || &cp
  finish
endif
let g:loaded_vim_clang_format = 1

command! ClangFormat call clang_format#format()

augroup clang_format_aug
  autocmd!
  autocmd FileType c,cpp,objc,java,javascript,proto nnoremap <buffer> <C-f> :ClangFormat<cr>
augroup END
