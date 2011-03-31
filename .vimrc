set nu
set guifont=Monospace\ 9
set go-=m
filetype plugin on
syntax on
set t_Co=256 
colorscheme herald
color bclear
set ttyfast " tell vim we're using a fast terminal for redraws
set title " Set window title with the vim file
set mouse=a
set background=light
hi LineNr guibg=white guifg=black

" Indent
" -----------
set autoindent " Auto indenting
set smartindent " Smart indenting 
set wildmenu 
set wildmode=list:longest

" keybindings
" -------------

" fast saving ESC+w :]
map w :w<Enter>
" fast refresh vimrc :)
nmap r :source ~/.vimrc<Enter>
" auto close html tags (with autoclose.vim)
imap > ><C-_><C-Left><C-Left><Left><Left>


" tab(\t) stop
set shiftwidth=2
set softtabstop=2
set shiftwidth=2

set tabstop=2
set expandtab

" tabs controls
" --------------

map <C-t> <Esc>:tabnew<CR>
map <M-Right> <Esc>:tabn<CR>
map <M-Left> <Esc>:tabp<CR>


" selection with shift + arrow
" --------------

set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive

" some useful scripts :P
" --------------
source ~/.vim/scripts/closetag.vim
source ~/.vim/scripts/autoclose.vim
source ~/.vim/plugin/c.vim


" folding
" ---------------

set foldmethod=syntax

" ======== ctrl+c ctrl+v ctrl+x =====
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" " CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" " CTRL-V and SHIFT-Insert are Paste
map <C-V>     "+gP
cmap <S-Insert>   <C-R>+


" pydiction
"
let g:pydiction_location = '~/.vim/after/pydiction/complete-dict'
let g:pydiction_menu_height = 5

" moves normal mode cursor
imap <Esc> <Esc><Right>
