syntax on
set number
set ignorecase
set tabstop=3
set shiftwidth=3
set expandtab
"retab
set hlsearch
set paste
set wildignore=*.o
highlight search ctermbg=grey
"Limpiar los highlights:
nnoremap <silent> <C-l> :<C-l>nohlsearch<CR><C-l> 
"Documentación C++:
autocmd FileType cpp setlocal keywordprg=cppman  
