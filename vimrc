execute pathogen#infect()	
"let allows us to change the variable value.set allows us to read or change an
"option value.map allows us to create new keymappings by setting the output of
"one key combimation to produce the value of another key combination"
"options are treated as a variable using the option with an '&'.
"like most of the languages,variables have their scope too.scope being defined
"by the symbol ':' and the variable name.
"Different scopes are b:,w:,t:,g:,l:,s:,a:,v:.
"functions in Vimscript
"function <functionname>()
"	<function body>
"endfunc
"one can create a function and put in this very file and then use or run it by
"using the :call <functionname()> 
"mapping is done for calling a function as in lines 37 and 38 using key
"combination
"Key maps are not for only the normal mode but for every mode.if we prefix the
"command with the first letter of the mode then it will map the key for that
"mode ..nmap for normal mode...vmap for visual mode...imap for insert
"mode.However they are not very safe to use because an infinite loop might be
"created. 
syntax on
syntax enable	"setting up syntax highlighting while the colorscheme can be used to change the colorscheme

"set number "this turns line numbering on
"set relativenumber "this sets the relative number.however i don't know why
"turn that on
function! Hi(name)
	echo "Hello" a:name
endfunc
function! Numbers()
	set number 
endfunc
function! Currentline()
		set cursorline
endfunc
function! NoCurrentline()
		set nocursorline
endfunc
function! NoNumbers()
	set nonumber
endfunc
set tabstop=4	
"setting the tabstop=4"
map <c-m> :call NoNumbers()<cr>
map <c-n> :call Numbers()<cr>
map <c-l> :call Currentline()<cr>
map <c-o> :call NoCurrentline()<cr>
"utilises ctrl+n or ctrl+m for calling functions
let g:name="Suyash Garg" "setting my name,don't need to explitily specify that its global variable.
filetype plugin indent on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set numberwidth=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
syntax on


cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev wQ wq
cnoreabbrev QW wq
cnoreabbrev qw wq
cnoreabbrev W w

" Mapping for some useful tricks
let mapleader=","
nnoremap <c-p> :FZF<CR> 
nnoremap tn :tabnew
nnoremap tt :tabnew<CR>:FZF<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprevious<CR>
nnoremap nh :nohlsearch<CR>
filetype indent plugin on
