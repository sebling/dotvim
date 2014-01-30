
set nocompatible
 
filetype off
execute pathogen#infect()

" set textwidth=79
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set foldmethod=indent
set foldlevel=99
set backspace=indent,eol,start

set visualbell
set history=100

" highlight search matches
set hlsearch
" search ahead while typing
set incsearch
" unhighlight found items
nmap <silent> <Leader>/ :nohlsearch<CR>
set showmatch

set number

" ignore these file types
set wildignore=*.swp,*.bak,*.pyc,*.class

syntax on

set background=dark
set gfn=Monaco:h12
colorscheme jellybeans

if has("autocmd")
    filetype on
    filetype plugin on
    filetype plugin indent on

    augroup filetype_autocmds
        autocmd!
        autocmd Filetype python set expandtab
	    autocmd Filetype python set softtabstop=4
	    autocmd Filetype python set shiftwidth=4
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        " highlight characters past column 80
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%80v.*/
	    " don't let lines auto wrap
        autocmd FileType python set nowrap
	    " translate my retrun into return
	    autocmd FileType python abbr retrun return
    augroup END

    " nerdtree autocmds
    augroup nerdtree_group
        autocmd!
        " open nerdtree automatically if vim started with no file
        autocmd vimenter * if !argc() | NERDTree | endif
    augroup END

    " auto reload .vimrc when it changes
    augroup reload_vimrc
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END
    
endif

" Markdown to HTML  
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr></cr></leader>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Select all text in current buffer
map <Leader>a ggVG

" Toggle NERDTree on and off
map <Leader>nt :NERDTreeToggle<CR>

" Toggle Tagbar
nmap <Leader>tb :TagbarToggle<CR>

