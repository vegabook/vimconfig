" TODO
" change F key mappings for execution and auto-detect language including RUST
" Elixir integration somehow
" better terminal in nvim (stays across tabs)
" better colours for language server
" install treesitter
" LUA integration different colours for blocks (long term)


call plug#begin('~/.vim/plugged')
Plug 'mechatroner/rainbow_csv'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kassio/neoterm'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mlochbaum/BQN', {'rtp': 'editors/vim'}
Plug 'git@git.sr.ht:~detegr/nvim-bqn'
call plug#end()

" this changes coc.nvim colours on provide colour change
func! s:my_colors_setup() abort
  highlight CocFloating ctermbg=grey
  highlight CocErrorFloat ctermfg=yellow 
endfunc

augroup colorscheme_coc_setup | au!
  au ColorScheme * call s:my_colors_setup()
augroup END

augroup colorscheme_coc_setup2 | au!
  au VimEnter * call s:my_colors_setup()
augroup END


" END of co.nvim colour change
        
set statusline=[%n]\ %F%=L\ %l/%L\ \ C\ %c\ 
" nerdtree
set modifiable

" numbers on the side
set number
" specific file color schemes

" elixir 
autocmd BufEnter */controllers/*.*ex* colorscheme antares   
autocmd BufEnter */models/*.*ex* colorscheme black_angus
autocmd BufEnter */views/*.*ex* colorscheme jellybeans 
autocmd BufEnter */templates/*.*ex* colorscheme jellybeans 
autocmd BufEnter */assets/css/*.*ex* colorscheme base16-atelierlakeside 

" generic
autocmd BufEnter *html* set tabstop=2|set shiftwidth=2
autocmd BufEnter *.ex set tabstop=2|set shiftwidth=2|colorscheme antares
autocmd BufEnter *.exs set tabstop=2|set shiftwidth=2
autocmd BufEnter *.eex set tabstop=2|set shiftwidth=2
autocmd BufEnter *.heex set tabstop=2|set shiftwidth=2
autocmd BufEnter *.c set tabstop=2|set shiftwidth=2
autocmd BufEnter *.py set tabstop=4|set shiftwidth=4|colorscheme argonaut
autocmd BufEnter *.r set tabstop=4|set shiftwidth=4|colorscheme dw_cyan
autocmd BufEnter *js* set tabstop=2|set shiftwidth=2

autocmd BufEnter sagb.r colorscheme gruvbox
autocmd BufEnter gyields.r colorscheme night_vision
autocmd BufEnter gneural.r colorscheme CandyPaper
autocmd BufEnter asw.r colorscheme VIvid
autocmd BufEnter ndf.r colorscheme 3dglasses

autocmd FileType python nnoremap <silent> <F8> :T IPYTHONDIR=$HOME ipython --nosep -i % \|\| echo -e "\e[41mFailed...\e[0m" && exit<CR>
autocmd FileType python nnoremap <silent> <F12> :T python3 % \|\| echo -e "\e[41mFailed...\e[0m" && read -p "Press Enter..." && exit<CR>
autocmd FileType python nnoremap <silent> <C-\> :Tclose \| :w! \| :T IPYTHONDIR=$HOME ipython --nosep -i % \|\| echo -e "\e[41mFailed...\e[0m" && exit<CR>
autocmd FileType python inoremap <silent> <C-\> <esc> \| :w! \| :Tclose \| :T IPYTHONDIR=$HOME ipython --nosep -i % \|\| echo -e "\e[41mFailed...\e[0m" && exit<CR>
autocmd FileType bqn nnoremap <silent> <C-\> :Tclose \| :w \| :T BQN -f % && echo && read -n 1 -s -r -p "Press any key to continue" && exit <CR>
autocmd FileType bqn inoremap <silent> <C-\> <esc> :Tclose \| :w \| :T BQN -f % && echo && read -n 1 -s -r -p "Press any key to continue" && exit<CR>
autocmd FileType rust inoremap <silent> <C-\> <esc> \| :w \| :T clear && cargo run % \|\| echo -e "\e[41mFailed...\e[0m" && read -p "Press Enter..." && exit<CR>
autocmd FileType rust nnoremap <silent> <C-\> :w \| :T clear && cargo run % \|\| echo -e "\e[41mFailed...\e[0m" && read -p "Press Enter..." && exit<CR>
" make ctrl-K work as with TMUX vim navigator
autocmd FileType python tnoremap <silent> <C-k> <C-\><C-n><C-w>k

" javascript and R and Rust runners
autocmd FileType javascript nnoremap <silent> <F12> :T node %<CR>
autocmd FileType r nnoremap <silent> <F12> :T R < % --no-save --interactive && read -rsn1 -p"Press any key to continue" && exit<CR>
autocmd FileType rust nnoremap <silent> <F12> :T cargo run \|\| echo -e "\e[41mFailed...\e[0m" && read -p "Press Enter..." && exit<CR>

" set mouse mode so it scrolls properly in tmux
set mouse=a

" set colorscheme to terminal default
set termguicolors

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" tabs as spaces
set expandtab

" cursorline
set cursorline

" macros
let mapleader=","
nmap <leader>ne :NERDTree<cr>
nmap <Left> gT
nmap <Right> gt
map <Leader>nn <plug>NERDTreeTabsToggle<CR>

" switch off F1 help key binding
nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

syntax on

" neo term config bottom terminal instead of new screen
let g:neoterm_default_mod='botright' 
let g:neoterm_autoscroll = '1'
let g:neoterm_size = 44
let g:neoterm_autoinsert = '1'
let g:neoterm_keep_term_open = 0

" nerdtree close on open a file
let g:NERDTreeQuitOnOpen = 1



