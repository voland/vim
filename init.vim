let mapleader = ";"

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'https://github.com/dracula/vim.git'
Plug 'OmniSharp/omnisharp-vim'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'https://github.com/voland/vim-csharp.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'vim-airline/vim-airline'
" Plug 'tpope/vim-fugitive'
"Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/liuchengxu/vim-which-key.git'
Plug 'voldikss/vim-translator'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()

let g:UltiSnipsExpandTrigger="<c-.>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

nnoremap <silent> <leader> :WhichKey ';'<CR>

"    _    _     _____ 
"   / \  | |   | ____|
"  / _ \ | |   |  _|  
" / ___ \| |___| |___ 
"/_/   \_\_____|_____|
" let g:ale_linters = { 'c': ['gcc'] }
" let g:ale_linters = { 'lua': ['luac'] }
" " Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1

source ~/.vim/coc.vim
"disable linters for c if coc is used
"##############################################################
"#  AirLine                                                   #
"##############################################################
let g:airline_section_warning =""
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"##############################################################
"#  Nerd Tree                                                 #
"##############################################################
map <Leader>n :NERDTreeToggle<CR>

"##############################################################
"#  FZF                                                       #
"##############################################################
set rtp+=~/sdb/src/.fzf
map <Leader>ft :Tags<CR>
map <Leader>fc :Commands<CR>
map <Leader>ff :Files<CR>
map <Leader>fb :Buffers<CR>
map <Leader>fl :BLines<CR>
map <Leader>fL :Lines<CR>
" map <Leader>he :Helptags<CR>
map <Leader>fw :Windows<CR>
map <leader>fs :Ag <C-R>=expand("<cword>")<CR><CR>
map <leader>fg :Ag 
"let g:fzf_action = { 'ctrl-l': 'tab split', 'ctrl-j': 'split', 'ctrl-k': 'vsplit' }
let g:fzf_layout ={ 'down': '40%'}

"##############################################################
"#  EasyMotion                                                #
"##############################################################
map <space> <Plug>(easymotion-prefix)

"##############################################################
"#                                                            #
"#  Async Complete                                            #
"#                                                            #
"##############################################################
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
" imap <c-space> <Plug>(asyncomplete_force_refresh)

"  Translator
let g:translator_target_lang='pl'

source ~/.vim/other.vim
source ~/.vim/omnisharp.vim

if has('win32')
set pythonthreedll=C:\Users\arek\AppData\Local\Programs\Python\Python38\python38.dll
set pythonthreehome=C:\Users\arek\AppData\Local\Programs\Python\Python38\
endif
