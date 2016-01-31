"Configuración para vim:
"Mapear la tecla de Bloq Mayus por el ESC
"Modificar el delay de repetición de teclas
 
"Pathogen plugin manager
execute pathogen#infect()

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
"Documentación C++ (K):
autocmd FileType cpp setlocal keywordprg=cppman


"Plugins

"NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Cerrar vim si solo queda el arbol