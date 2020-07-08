let s:enable_whichkey = dein#tap('vim-which-key')

nnoremap  ]b :<C-u>bp<CR>
nnoremap  [b :<C-u>bn<CR>

if dein#tap('vim-airline-themes')
    nnoremap <silent> <Leader>bo call CloseAllBuffersButCurrent()<CR>
    " Works for both buffers (when no tabs) and tabs
    nmap <a-1> <Plug>AirlineSelectTab1
    nmap <a-2> <Plug>AirlineSelectTab2
    nmap <a-3> <Plug>AirlineSelectTab3
    nmap <a-4> <Plug>AirlineSelectTab4
    nmap <a-5> <Plug>AirlineSelectTab5
    nmap <a-6> <Plug>AirlineSelectTab6
    nmap <a-7> <Plug>AirlineSelectTab7
    nmap <a-8> <Plug>AirlineSelectTab8
    nmap <a-9> <Plug>AirlineSelectTab9
    nmap <a-0> <Plug>AirlineSelectTab0
    if s:enable_whichkey
        let g:which_key_map.b = { 'name': '+buffer' }
        let g:which_key_map.b.o = 'keep current buffer'
    endif
endif

nnoremap <Leader>tn :set number!<CR>
nnoremap <Leader>tr :set relativenumber!<CR>
if s:enable_whichkey
    let g:which_key_map.t = { 'name': '+toggle' }
    let g:which_key_map.t.n = 'Number toggle'
    let g:which_key_map.t.r = 'Relnumber toggle'
endif

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
