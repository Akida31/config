source ~/.config/nvim/plugins.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/visual.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/languages.vim

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"" Autocmd Rules
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END


"" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"CoC
source ~/.config/nvim/plugin_config/coc.vim

" vim-airline
source ~/.config/nvim/plugin_config/airline.vim

" for latex
" let g:vimtex_compiler_progname = 'nvr'
" let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
" let g:vimtex_compiler_latexrun
