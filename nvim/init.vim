"""""""""""""""""""""""""""""""" 
" core nvim config 
""""""""""""""""""""""""""""""""
filetype plugin indent on
set linebreak
set scl=yes
set noshowmode
set foldmethod=indent
set foldnestmax=1
let mapleader=" "
set hidden
set nocompatible
set showmatch
set hlsearch
set autoindent
set number
set relativenumber
syntax on
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
colorscheme dracula
set scrolloff=8
set sidescrolloff=8
set clipboard+=unnamedplus
set list
" set listchars=tab:▶\ ,trail:·,lead:·
set mouse=a
set ignorecase
set smartcase

""""""""""""""""""""""""""""""
" keymaps
""""""""""""""""""""""""""""""

" auto create file under cursor if opened
map gf :edit <cfile><cr>

" this is for reselecting after tabbing a visual selection
vnoremap < <gv
vnoremap > >gv

" this is to open fuzzy finder quickly
nnoremap <leader>f :Files<CR>

"these are to switch buffers quickly
nnoremap <leader>o :bn<CR>
nnoremap <leader>i :bp<CR>
nnoremap <leader>x :bd<CR>

autocmd FileType python inoremap <buffer> <F2> <ESC>:w<CR>:FloatermNew! --disposable python3 "%"<CR>
autocmd FileType python nnoremap <buffer> <F2> :w<CR>:FloatermNew! --disposable python3 "%"<CR>


autocmd FileType tex inoremap <buffer> <F3> <ESC>:!xdg-open "%<.pdf";<CR><CR>
autocmd FileType tex nnoremap <buffer> <F3> :!xdg-open "%<.pdf";<CR><CR>

autocmd FileType tex inoremap <buffer> <F2> <ESC>:w<CR>:!latexmk -pdf<CR>
autocmd FileType tex nnoremap <buffer> <F2> :w<CR>:!latexmk -pdf<CR>

""""""""""""""""""""""""""""""""""""
" function definitions
""""""""""""""""""""""""""""""""""""

" get word count in latex files
function! WC()
    let filename = expand("%")
        let cmd = "detex " . filename . " | wc -w | perl -pe 'chomp; s/ +//;'"
    let result = system(cmd)
    echo result . " words"
endfunction

""""""""""""""""""""""""""""""""""""
" plugins
""""""""""""""""""""""""""""""""""""

call plug#begin(stdpath('data') . '/pluggins')

" for some reason this ruins syntax highlighting for fortran files
" source ~/.config/nvim/plugins/rainbow.vim

source ~/.config/nvim/plugins/surround.vim

source ~/.config/nvim/plugins/commentary.vim

source ~/.config/nvim/plugins/polyglot.vim

source ~/.config/nvim/plugins/floaterm.vim

source ~/.config/nvim/plugins/coc.vim

source ~/.config/nvim/plugins/lightline.vim

source ~/.config/nvim/plugins/fzf.vim

source ~/.config/nvim/plugins/netwr.vim

call plug#end()

