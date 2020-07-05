nnoremap Y y$

" g Leader key
nnoremap <Space> <Nop>
let g:mapleader=" "
let g:maplocalleader=","

" Better indenting
vnoremap < <gv
vnoremap > >gv

inoremap <expr> jk pumvisible() ? "<C-e>" : "<Esc>"

" Don't use shift for commands
map ; :
noremap ;; ;

" isolate current buffer in new tab
" nnoremap <silent> <TAB> :call IsolateWindow()<CR>
nnoremap <TAB> <C-W><S-T>
" kill tab
nnoremap <silent> <S-TAB> :tabclose<CR>

" Motions
nnoremap  ]b :bn<CR>
nnoremap  [b :bp<CR>
nnoremap  ]q :cn<CR>
nnoremap  [q :cp<CR>
nnoremap  ]t :tabn<CR>
nnoremap  [t :tabp<CR>
" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Navigation mappings moved to vim-tmux settings

" Use alt + hjkl to resize windows
nnoremap <silent> <DOWN>    :resize -2<CR>
nnoremap <silent> <UP>    :resize +2<CR>
nnoremap <silent> <LEFT>    :vertical resize -2<CR>
nnoremap <silent> <RIGHT>    :vertical resize +2<CR>
