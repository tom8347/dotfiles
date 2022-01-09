let g:netrw_banner = 1
let g:netrw_liststyle = 0

"load netrw on start if nvim isn't given any arguements
augroup InitNetrw
  autocmd!
  autocmd VimEnter * if expand("%") == "" | edit . | endif
augroup END
