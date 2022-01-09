Plug 'itchyny/lightline.vim'

let g:lightline = {
      \ 'component_function': {
      \ 'fileformat': 'LightlineFileformat',
      \ 'filetype': 'LightlineFiletype',
      \ 'fileencoding': 'LightlineFileencoding',
      \ 'status': 'LightlineGitBlame',
      \ },
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ],
      \              [ 'status' ] ]
      \ },
\ }

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 50 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 50 ? &fileencoding : ''
endfunction

function! LightlineGitBlame() abort
  let status = get(b:, 'coc_git_status', '')
  return winwidth(0) > 50 ? status : ''
endfunction
