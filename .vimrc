"Modificar el delay de repetición de teclas
"Mapear la tecla Bloq Mayus por la ESC

"Pathogen plugin manager
execute pathogen#infect()

"syntax on
colorscheme gruvbox
set background=dark
set number
set ignorecase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set hlsearch
set paste
set wildignore=*.o
set hidden "No bloquear el cambio de buffer aunque esté modificado
set listchars=tab:▸\ ,eol:¬
set linebreak "No cortar palabras al cambiar de linea
"Limpiar los highlights:
nnoremap <silent> <C-l> :<C-l>nohlsearch<CR><C-l>
"Edit alternate file
nnoremap <BS> <C-^>
"Moving lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
"Eliminar espacios final lineas
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

let mapleader=","

if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <leader>v :tabedit $MYVIMRC<CR>


autocmd FileType cpp setlocal keywordprg=cppman "Documentación C++ (K)

"Configuración tabs según ficheros
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 noet
autocmd FileType make setlocal ts=4 sts=4 sw=4 noet
autocmd FileType haskell setlocal ts=4 sts=4 sw=4 noet

"Tabs
map <C-S-tab> gt
map <C-tab> gT
"nnoremap <C-t>     :tabnew<CR>

"Windows
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l



"Plugins

"NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Cerrar vim si solo queda el arbol
