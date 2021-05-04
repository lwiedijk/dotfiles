set nocompatible

set laststatus=2

syntax on

 " this 1st one below toggles number off with rnu and nu (other one feels better)
 " nmap <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR> 
set nu " number lines
set rnu " relative line numbering
nnoremap <C-n> :set rnu!<CR>  " toggle relative numbering

set mouse+=a

set showmatch

set autochdir " automatically set current directory to directory of last opened file

filetype plugin indent on " enable file type detection
set autoindent

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set incsearch " incremental search (as string is being typed)
set hls " highlight search

" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu

set splitright

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

if has('gui_running')
    colorscheme solarized
    let g:lightline = {'colorscheme': 'solarized'}
elseif &t_Co < 256
    colorscheme default
    set nocursorline " looks bad in this mode
else
    set background=dark
    let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
    colorscheme solarized
    " customized colors
    highlight SignColumn ctermbg=234
    highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
    highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
    let g:lightline = {'colorscheme': 'dark'}
    highlight SpellBad cterm=underline
    " patches
    highlight CursorLineNr cterm=NONE
endif

" nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" disable audible bell
set noerrorbells visualbell t_vb=
