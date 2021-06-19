
"##############################################################
"#                                                            #
"#  Rest of my config
"#                                                            #
"##############################################################
" set cursorline

set guifont=Liberation_Mono:h10:cEASTEUROPE:qDRAFT
set number
set foldcolumn=1
set go="Lrm"
set go+=m

set hlsearch
set nowrap
"encodint
set fileencodings=utf8-bom,utf-8,iso-8859-2,iso-8859-15,utf-16,ucs-bom,ucs-bom,default,latin1
set cindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
" set mouse=a
set autoread

map <F3> :grep -r  --exclude-dir=.git --exclude-dir=bin --exclude-dir=out --exclude=tags --include=*.cpp --include=*.cs --include=*.c --include=*.h --include=*.s --include=Makefile  .<C-Left><Left>
map <F2> :grep -r --exclude-dir=.git --exclude-dir=bin --exclude-dir=out --exclude=tags --include=*.cpp --include=*.cs --include=*.c --include=*.h --include=*.s --include=Makefile <C-R>=expand("<cword>")<CR> .<CR><CR>

"mapowanie przemieszczania sie po funkcjach
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>

"noremap <C-J> <C-W>w
"noremap <C-K> <C-W>W
"noremap <C-H> :tabN<cr>
"noremap <C-L> :tabn<cr>

fu! SetRnu()
    set rnu
    map <Leader>re :call SetNoRnu()<CR>
endfunction
fu! SetNoRnu()
    set nornu
    map <Leader>re :call SetRnu()<CR>
endfunction
map <Leader>r :call SetRnu()<CR>
call SetRnu()

" set previewheight=4
fu! PrevOpen()
	exe "ptjump " . expand("<cword>")
	map <space>p :call PrevClose()<CR>
endfunction
fu! PrevClose()
	pc
	map <space>p :call PrevOpen()<CR>
endfunction
map <space>p :call PrevOpen()<CR>

if (findfile(".ctags")==".ctags")
	map <space>t :!ctags<CR><CR> 
else
	if (finddir(".git")==".git")
		map <space>t :!ctags $(git ls-tree --full-tree -r --name-only HEAD)<CR><CR>
	else
		map <space>t :!ctags -R *<CR><CR> 
	endif
endif

map <leader>v :tabe ~/.vim/init.vim<CR>

set tags+=./tags
highlight PmenuSel ctermbg=4
highlight TabLineSel ctermbg=4
syntax on
set backspace=indent,eol,start "potrzebne aby dzialal backspace od vim 8.2
" set clipboard=unnamedplus
set completeopt=longest,menuone
set path+=**/
set wildmenu
" if $TERM == "xterm"
	set t_Co=256
" endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"""""" color theme config """""
let g:gruvbox_contrast_dark = "hard"
set bg=dark
colo gruvbox
map gP :mak! mth program<cr>
map gK :mak! mth <cr>
map <C-n> :cn<cr>
map <C-p> :cN<cr>
map <space>l :!lazygit<cr>
map <C-h> :vertical resize +2<cr>
map <C-l> :vertical resize -2<cr>
map <C-j> :horizotnal resize +2<cr>
map <C-k> :horizotnal resize -2<cr>
map <leader>x :!firefox --new-tab https://duckduckgo.com/?q=<C-R>=expand("<cword>")<CR>&t=h_&va=a&ia=web<cr>
map g; :tag <C-R>=expand("<cword>")<CR><CR>
au BufReadPost,BufNewFile *iso-8859-1.* e ++enc=iso-8859-1
au BufReadPost,BufNewFile *iso-8859-15.* e ++enc=iso-8859-15
au BufReadPost,BufNewFile *iso-8859-2.* e ++enc=iso-8859-2
