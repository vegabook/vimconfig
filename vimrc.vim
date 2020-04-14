call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-scripts/CSApprox'
Plug 'vim-scripts/vim-polyglot'
Plug 'easymotion/vim-easymotion'
call plug#end()
        
set number 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab
set backspace=indent,eol,start
set expandtab
set ruler
set noerrorbells
set visualbell
set guioptions-=T
set t_Co=256
set clipboard=unnamed
set laststatus=2
set statusline=[%n]\ %F%=L\ %l/%L\ \ C\ %c\ 
if system("uname -m") == "armv7l\n"
  set nocursorline
else
  set cursorline
endif

" nerdtree
set modifiable

autocmd BufEnter *.r colorscheme alduin
autocmd BufEnter sagb.r colorscheme revolutions
autocmd BufEnter gyields.r colorscheme night_vision
autocmd BufEnter gneural.r colorscheme CandyPaper
autocmd BufEnter asw.r colorscheme VIvid
autocmd BufEnter ndf.r colorscheme 3dglasses
autocmd BufEnter *.py colorscheme 256-jungle
autocmd BufEnter *.c colorscheme billw
autocmd BufEnter *html* set tabstop=2|set shiftwidth=2
autocmd BufEnter *.ex set tabstop=2|set shiftwidth=2
autocmd BufEnter *.exs set tabstop=2|set shiftwidth=2
autocmd BufEnter *.eex set tabstop=2|set shiftwidth=2
autocmd BufEnter *.c set tabstop=2|set shiftwidth=2
autocmd BufEnter *.py set tabstop=4|set shiftwidth=4
autocmd BufEnter *.r set tabstop=4|set shiftwidth=4
autocmd BufEnter *js* set tabstop=2|set shiftwidth=2
autocmd BufEnter */controllers/*.*ex* colorscheme antares   
autocmd BufEnter */models/*.*ex* colorscheme black_angus
autocmd BufEnter */views/*.*ex* colorscheme jellybeans 
autocmd BufEnter */templates/*.*ex* colorscheme jellybeans 
autocmd BufEnter */assets/css/*.*ex* colorscheme base16-atelierlakeside 
autocmd BufEnter *.css colorscheme base16-atelierlakeside 
autocmd BufEnter */lib/*.*ex* colorscheme dw_green
autocmd BufEnter *js* colorscheme blackboard
autocmd BufEnter *html* colorscheme gruvbox
autocmd FileType python nnoremap <silent> <F9> :!clear;python2 %<CR>
autocmd FileType python nnoremap <silent> <F12> :!clear;python3 %<CR>
autocmd FileType javascript nnoremap <silent> <F10> :!clear;node %<CR>
autocmd FileType r nnoremap <silent> <F8> :!clear;Rscript %<CR>

colorscheme random

" set mouse mode so it scrolls properly in tmux
set mouse=a

" macros
let mapleader=","
nmap <leader>ne :NERDTree<cr>
nmap <Left> gT
nmap <Right> gt
map <Leader>nn <plug>NERDTreeTabsToggle<CR>
syntax on

" cursor modes
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
