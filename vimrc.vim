call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
        
set statusline=[%n]\ %F%=L\ %l/%L\ \ C\ %c\ 
" nerdtree
set modifiable

autocmd BufEnter *html* set tabstop=2|set shiftwidth=2
autocmd BufEnter *.ex set tabstop=2|set shiftwidth=2
autocmd BufEnter *.exs set tabstop=2|set shiftwidth=2
autocmd BufEnter *.eex set tabstop=2|set shiftwidth=2
autocmd BufEnter *.c set tabstop=2|set shiftwidth=2
autocmd BufEnter *.py set tabstop=4|set shiftwidth=4|colorscheme dw_green
autocmd BufEnter *.r set tabstop=4|set shiftwidth=4
autocmd BufEnter *js* set tabstop=2|set shiftwidth=2
autocmd BufEnter */controllers/*.*ex* colorscheme antares   
autocmd BufEnter */models/*.*ex* colorscheme black_angus
autocmd BufEnter */views/*.*ex* colorscheme jellybeans 
autocmd BufEnter */templates/*.*ex* colorscheme jellybeans 
autocmd BufEnter */assets/css/*.*ex* colorscheme base16-atelierlakeside 
autocmd FileType python nnoremap <silent> <F12> :!clear; python3 %<CR>
autocmd FileType javascript nnoremap <silent> <F10> :!clear; node %<CR>
autocmd FileType r nnoremap <silent> <F8> :!clear;Rscript %<CR>

" set mouse mode so it scrolls properly in tmux
set mouse=a

" set colorscheme to terminal default
set termguicolors

" macros
let mapleader=","
nmap <leader>ne :NERDTree<cr>
nmap <Left> gT
nmap <Right> gt
map <Leader>nn <plug>NERDTreeTabsToggle<CR>
syntax on

" cursor modes

let &t_SI = "\<Esc>]12;yellow\x7"
let &t_SR = "\<Esc>]12;red\x7"
let &t_EI = "\<Esc>]12;blue\x7"

