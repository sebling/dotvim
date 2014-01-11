
set nocompatible
 
filetype off
execute pathogen#infect()

set expandtab
" set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set foldmethod=indent
set foldlevel=99

set visualbell


set hlsearch
set incsearch
nmap <silent> <Leader>/ :nohlsearch<CR>
set showmatch

set number

set wildignore=*.swp,*.bak,*.pyc,*.class

syntax on

set background=dark
set gfn=Monaco:h12
colorscheme jellybeans

let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" map T :TaskList<CR>
" map P :TlistToggle<CR>

if has("autocmd")
    filetype on
    filetype plugin on
    filetype plugin indent on

    augroup vimrc_autocmds
        autocmd!
        autocmd filetype python set expandtab
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd vimenter * if !argc() | NERDTree | endif
        " highlight characters past column 80
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%80v.*/
        autocmd FileType python set nowrap
    augroup END
endif

"Markdown to HTML  
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr></cr></leader>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Select all text in current buffer
map <Leader>a ggVG

" Toggle NERDTree on and off
map <Leader>nt :NERDTreeToggle<CR>

