syntax on
"exec pathogen#infect()
set foldmethod=indent
set foldnestmax=2
set foldlevel=9
set tw=80
"set fo+=t
set fo+=l
"set fo-=t
set colorcolumn=80
set wildmode=longest,list
set t_Co=256
"set cursorline

set scrolloff=9999

nnoremap <space> za

vnoremap <space> zf

"augroup CursorLineOnlyInActiveWindow
"    autocmd!
"    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"    autocmd WinLeave * setlocal nocursorline
"augroup END

set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
set cindent

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guioptions-=e  "change gui tab style to term tab style
set sessionoptions+=tabpages,globals


vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

set nu
set relativenumber
"" JEDI
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
set noswapfile
""au BufWinLeave * mkview
""au BufWinEnter * silent loadview

"powerline

let mapleader = ","
set laststatus=2

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>



" Easier formatting paragraphs
vmap Q gq
nmap Q gqap


 vnoremap < <gv  " better indentation
 vnoremap > >gv  " better indentation
 vnoremap <Leader>s :sort<CR>
" Quicksave command
noremap <Leader>z :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
 inoremap <C-Z> <C-O>:update<CR>


"" " Quick quit command
noremap <Leader>q :quit<CR>  " Quit current window
noremap <Leader>Q :qa!<CR>   " Quit all windows
filetype off
filetype plugin indent on

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

autocmd! bufwritepost .vimrc source %


let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1
nnoremap <silent> <Leader>b :TagbarToggle<CR>

let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
map <Leader>t :NERDTreeToggle<CR>

set background=dark

inoremap <Leader>c <Esc>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
map <c-j> <c-w>j
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <Leader>l :TlistToggle<CR>
map <C-N><C-N> :set relativenumber<CR>


set guifont:Droid\ Sans\ Mono\ 10


" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
