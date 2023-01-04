" my stuff before plug
set nocompatible
syntax on

""set fileType
autocmd BufEnter /tmp/calcurse-* set filetype=markdown

"plug stuff 

call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'vimwiki/vimwiki'
Plug 'dermusikman/sonicpi.vim'
"Plug 'vim-scripts/AutoComplPop'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

filetype plugin on
Plug 'xuhdev/vim-latex-live-preview'
Plug 'dylanaraps/wal.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'vimwiki/vimwiki'

colorscheme wal

""""MY key bind STUFF [*= errorr]
map <C-c> "+y
map <C-v> "+p
map W :w<CR>
map Y y$
map E ge
map cp :r!xclip -o -sel <CR>
map Q :reg<CR>
map <F2> :set number<CR>
map <C-h> <C-w><Left>
map <C-j> <C-w><Down>
map <C-k> <C-w><Up>
map <C-l> <C-w><Right>
map <C-Down> <C-w><Left>
map <Down> <C-w><Down>
map <Up> <C-w><Up>
noremap <C-Up> <C-w><Right>
map <leader>t :tabnew<CR>
map <C-Tab> :tabnext<CR>
map <C-w>l :tabnext<CR>
map <C-w>h :tabprevious<CR>
map <Right> :tabnext<CR>
map <Left> :tabprevious<CR>
map <Space> <leader>
map <leader>q :sh<CR>
map <F4> :!compiler -f % -m c <CR>
map <F7> :!compiler -f % -m s <CR>
map <F5> :!shellcheck % <CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
map <Leader>z za
map zJ zk
map zK zr
"incert map
imap <F3> <C-x>s
"micros

""my shit
set showcmd
set splitright  splitbelow                       
" cursor type
let &t_ti.="\e[1 q"
let &t_SI.="\e[4 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
" Auto-start sxhkd
	autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &  
	set path+=** " fzf thingi for find command
" compile dwmblockes 
	autocmd BufWritePost ~/.local/src/git/dwmblocks/config.h !cd ~/.local/src/git//dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }  
	"" auto start ncmpcpp -s visualizer
		"autocmd BufWritePost ~/.config/ncmpcpp/config  !st -e ncmpcpp -s visualizer
" sonic pi keybinds
	autocmd BufReadPost *.son :map <Leader>r W:!xdotool key super+j sleep 0.5 key alt+r super+j enter <CR>
	autocmd  BufReadPost *.son :map <Leader>s :!xdotool key super+j sleep 0.5 key alt+s super+j enter <CR>
" Navigate the complete menu items like CTRL+n / CTRL+p would.
	inoremap <expr> <C-j> pumvisible() ? "<C-n>" :"<Down>"
	inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
	inoremap <expr> <C-k> pumvisible() ? "<C-p>" : "<Up>"
	inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
	inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
	inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
	inoremap <expr> <C-l> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
	inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
	inoremap <expr> <C-h> pumvisible() ? "<C-e>" : "<Left>" 
" Vimwiki
    let wiki_0 = {}
    let wiki_0.path = '$PERVIKIDIR'
	let wiki_0.path_html= '$PERVIKIDIR/wiki_html'
    let g:vimwiki_list = [wiki_0]
" latex
let g:livepreview_previewer = 'zathura'




"* source ~/.vim/plugin/plugins.vim
" " Leader Mappings


 " Recently edited files
 "map <Leader>h :History<CR>
"
"
     set autoread                          " Auto reload changed files
     set wildmenu                          " Tab autocomplete in command mode
     set backspace=indent,eol,start        "
     set clipboard=unnamed                 " Clipboard support (OSX)
     set laststatus=2                      " Show status line on startup
     set lazyredraw                        " Reduce the redraw frequency
     set ttyfast                           " Send more characters in fast
"     terminals
     set nowrap                            " Don't wrap long lines
     set listchars=extends:→               " Show arrow if line continues
"     rightwards
     set listchars+=precedes:←             " Show arrow if line continues
"     leftwards
     "set nobackup nowritebackup noswapfile " Turn off backup files
     set noerrorbells novisualbell         " Turn off visual and audible
"     bells
     set shiftwidth=3 tabstop=3 " Two spaces for tabs everywhere
     set history=500
     set hlsearch                          " Highlight search results
     "set ignorecase smartcase              " Search queries intelligently set
"     case
     set incsearch                         " Show search results as you type
     set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting
"
"
"     " Persistent undo
     set undodir=~/.vim/undo/
     set undofile
     set undolevels=1000
     set undoreload=10000
"
"     " Ignored files/directories from autocomplete (and CtrlP)
     set wildignore+=*.zip
"
"     "-------------------------------------------------------------------------------
"     " Interface
"     "-------------------------------------------------------------------------------
"
     set number                " Enable  line numbers
     set relativenumber        " Enable relative line numbers
     set scrolloff=5       " Leave 5 lines of buffer when scrolling
     set sidescrolloff=10  " Leave 10 characters of horizontal buffer when
		 set spell! spelllang=en_us
"     scrolling
"
"     "-------------------------------------------------------------------------------
"     " Colors & Formatting
"     "-------------------------------------------------------------------------------
"
"     colorscheme solarized
"     set background=dark
"
"     " Showcase comments in italics
     highlight Comment cterm=italic gui=italic
"
"     " Open most recently used files on start
      " autocmd VimEnter * Mru .
"
"     " Easy tab navigation
     ""nnoremap <C-Left> :tabprevious<CR>
     ""nnoremap <C-Right> :tabnext<CR>
"     " Find/replace
"      vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>
"
"
"     " let g:auto_save = 1  " enable AutoSave on Vim startup
"     " let g:auto_save_in_insert_mode = 0 " do not save in insert mode
"

"""not used cmds
""mouse in vim
"set mouse=a
""" Notes
"" cursor type for let &{etc,etc. } | Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
