"Modificar el delay de repetición de teclas
"Mapear la tecla Bloq Mayus por la ESC

"Pathogen plugin manager
execute pathogen#infect()

"Tabs options -----------------------
set ignorecase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"Buffer options ---------------------
set hidden "Permitir cambiar buffer

"Folding ----------------------------
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
set foldmethod=manual

"Random stuff -----------------------
let mapleader=","
set wildignore=*.o,*.out "Ignorar ciertos ficheros a la hora de autocompletar

"Personalization --------------------
colorscheme gruvbox
set background=dark
set hlsearch
set number
set paste
set listchars=tab:▸\ ,eol:¬
set linebreak "No cortar palabras al cambiar de linea
"Configuración tabs según ficheros
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 noet
autocmd FileType make setlocal ts=4 sts=4 sw=4 noet
autocmd FileType haskell setlocal ts=4 sts=4 sw=4 noet

"Mappings ---------------------------
nnoremap <silent> <C-l> :<C-l>nohlsearch<CR><C-l>| "Limpiar los highlights
nnoremap <BS> <C-^>| "Edit alternate file
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>| "Remove espaces at the end of lines
nmap <leader>v :tabedit $MYVIMRC<CR>| "Open .vimrc
"Moving lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
"Tabs
map <C-S-tab> gt
map <C-tab> gT
nnoremap <C-t> :tabnew<CR>

"Commands --------------------------
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif
autocmd FileType cpp setlocal keywordprg=cppman "Documentación C++ (K)

"Plugins ----------------------------
"Gundo
nnoremap <F4> :GundoToggle<CR>
"NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Cerrar vim si solo queda el arbol
