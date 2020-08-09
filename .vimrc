
set ff=unix " new, for compatibility

" Git Commit Help :
" autocmd Filetype gitcommit spell textwidth=72

" Run in python3
imap <f5> <Esc>:w<CR>:!clear;python3 %<CR>
map  <f5> <Esc>:w<CR>:!clear;python3 %<CR>
imap <leader>r <Esc>:w<CR>:!clear;python3 %<CR>
map  <leader>r <Esc>:w<CR>:!clear;python3 %<CR>
" Works, imap and map didn't seem to.
nnoremap <leader>r <Esc>:w<CR>:!clear;python3 %<CR>
" Python Debug with pdb
nnoremap <leader>d <Esc>:w<CR>:!clear;python3 -m pdb %<CR>

filetype off
filetype plugin indent on
set nocompatible
set modelines=0
set number
" set autoread "loads external file changes automatically
set shiftwidth=4
set softtabstop=4
set expandtab

" "Other stuff
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" "set relativenumber
" set undofile "creates undo list that works after closing the file.
" set undodir=~\vimfiles\undodir

imap jk <Esc>
imap <S-CR> <Esc>
syntax on
nnoremap ; :


let mapleader = "," "used for custom functions

" "Search Fixes
set ignorecase
set smartcase
set gdefault "defaults to global substitution. :%s/foo/bar/

" "These work together. Use ,<space> to clear highlighting.
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

"use tab instead of % for finding matching brackets
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" "Strip all trailing whitespace in the file
" nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" "HTML tag fold function ,ft
" nnoremap <leader>ft Vatzf
" "sort CSS properties
" nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
" "imitate TextMates Ctrl+Q re-hardwrap paragraphs of text
" nnoremap <leader>q gqip
" "Select recently pasted text for further commands.
" nnoremap <leader>v V']
"Open ~/.vimrc in a vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" set window size
" nnoremap <leader>gs :set lines=30 columns=100<cr>
" nnoremap <leader>gl :set lines=50 columns=100<cr>
" nnoremap <leader>gw :set lines=40 columns=179<cr>
" Open File Explorer
map <leader>k :E<cr>


"Split Window and switch
nnoremap <leader>w <C-w>v<C-w>l
"Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Colorschemes
nnoremap <leader>c1 :colorscheme default<CR>
nnoremap <leader>c2 :colorscheme moria<CR>
nnoremap <leader>c3 :colorscheme mustang<CR>
nnoremap <leader>c4 :colorscheme peaksea<CR>
nnoremap <leader>c5 :colorscheme wombat256<CR>
nnoremap <leader>c6 :colorscheme elflord<CR>
:colorscheme elflord

nnoremap <leader>cdn :cd /c/MY_DATA/notes/<CR>
"change directory to current file location
nnoremap <leader>cdc :cd %:p:h<cr>:pwd<cr>

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType matlab           let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
autocmd FileType sprak            let b:comment_leader = '# '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


" " One key <F7> does everything. Good for inter-window copying and pasting.
" "copy
" vmap <F7> "+ygv"zy`>
" "paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
" nmap <F7> "zgP
" nmap <S-F7> "zgp
" imap <F7> <C-r><C-o>z
" vmap <C-F7> "zp`]
" cmap <F7> <C-r><C-o>z
" "copy register


" " Shortcut for one handed page scrolling.
" nnoremap <leader>m zt<CR>

" " Clear any highlighting
" " :noh<cr>
" noh



" " Gundo settings
" nnoremap <F5> :GundoToggle<CR>
" let g:gundo_width = 45
" let g:gundo_preview_height = 15
" let g:gundo_right = 0
" let g:gundo_preview_bottom = 0
" let g:gundo_help = 1

