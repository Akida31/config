set noshowmode

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ ],
      \             [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ ],
      \              [ 'lineinfo' ],
      \              [ 'percent', 'fileformat' ] ]
      \ },
      \ }

let g:lightline.separator = {
            \ 'left'  : '',
            \ 'right' : ''
            \ }

let g:lightline.subseparator = {
            \ 'left'  : '',
            \ 'right' : ''
            \ }
