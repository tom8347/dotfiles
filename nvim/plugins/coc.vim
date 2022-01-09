Plug 'neoclide/coc.nvim', {'branch': 'release'}

autocmd FileType python let b:coc_root_patterns = ['.git', '.venv']
autocmd FileType fortran let b:coc_root_patters = ['.git', '.fortls']
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)


