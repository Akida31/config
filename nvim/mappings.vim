"" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Search mappings: center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" move visual lines when wrapped
nnoremap k gk
nnoremap j gj
vnoremap k gk
vnoremap j gj

" NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" Quick-save
nmap <C-s> :w<CR>

" Copy-Paste with Leader c or p
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>


" Open hotkeys
" toggle between buffers
nnoremap <leader>b <c-^> 
" open bufferlist
nmap <leader><leader> :Buffers<CR> 


"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif


" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h


" open files
nnoremap <leader>o :Files<CR>
nnoremap <leader>O :GFiles<CR>

nnoremap <C-f> :BLines<CR>
" recursive search
noremap <leader>f :Rg<CR>
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)



" Latex
nnoremap <leader>tc :VimtexCompile<CR>
nnoremap <leader>ts :VimtexStopAll<CR>
nnoremap <leader>tf :VimtexTocToggle<CR>

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

" count words
command! Wc :!wc %

" enable german spell checking
command! Spell :setlocal spell spelllang=de_de

" enable soft wrapping
command! Wrap :setlocal wrap linebreak nolist
