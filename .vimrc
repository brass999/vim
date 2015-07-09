" Original vim file
" =================
set incsearch
set ignorecase
set hlsearch
set autoindent
set complete=.,w,b,u,t,i,kspell

" colorscheme molokai
colorscheme default
syntax on
let mapleader=","
let maplocalleader=","
" ===== Mappings ====
" use noremap, imap, vmap
" or no, ino, vno (these will not be overridden by plugins)
" underline line on which the cursor is
nnoremap <f5> yyp0v$r=<cr>
nnoremap <f6> yyp0v$r-<cr> 
inoremap <f5> <esc>yyp0v$r=<cr>
inoremap <f6> <esc>yyp0v$r-<cr> 
" these mappings are from shawn biddle (see github: usr:shawncplus
" custom comma motion mapping
nnoremap di, f,dt,
nnoremap ci, f,ct,
nnoremap da, f,ld2f,i,<esc>l "delete argument
nnoremap ca, f,ld2f,i,<esc>a "delete arg and insert
nnoremap <leader>ev :vsplit $myvimrc<cr>
nnoremap <leader>sv :so $myvimrc<cr>

" alternative <esc> sequence using '
inoremap <esc> <nop>
inoremap jk <esc>

" functions to insert current date and time at cursor
nnoremap <f4> "=strftime("%c")<cr>p
inoremap <f4> <c-r>=strftime("%c")<cr>

" select test in visual mode and put quotes around it
" Note - boundaries of visual selected text in NORMAL MODE can be moved to usine `< and `>
vnoremap <leader>" <esc>`<i"<esc>`>a"

" select test in visual mode and put single quotes around it
vnoremap <leader>' <esc>`<i'<esc>`>a'

" select test in visual mode and put <> around it
vnoremap <leader><> <esc>`<i<<esc>`>a>

" select test in visual mode and put [] around it
vnoremap <leader>[] <esc>`<i[<esc>`>a]

"Map 'H' to move to beginning of the line
nnoremap <S-h> 0
nnoremap <S-l> $
