let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'raimondi/delimitMate'
Plug 'airblade/vim-rooter', {'for': ['rs', 'toml']} " cd to the nearest git repo  TODO for other langs
" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'editorconfig/editorconfig-vim'

" Color
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
Plug 'scheakur/vim-scheakur'

" Language bundles
"
" rust
Plug 'rust-lang/rust.vim', {'for': ['rs', 'toml']}

" toml
Plug 'cespare/vim-toml', {'for': ['toml']}

" typescript
Plug 'leafgarland/typescript-vim', {'for': ['ts', 'tsx']}
Plug 'HerringtonDarkholme/yats.vim', {'for': ['ts', 'tsx']}

" LaTex
Plug 'lervag/vimtex' ", {'for': 'tex'}

" Dart
Plug 'dart-lang/dart-vim-plugin', {'for': 'dart'}
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'

" OpenGL Shaders
Plug 'tikhomirov/vim-glsl'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Include user's extra bundle
if filereadable(expand("~/.vimrc.local.bundles"))
  source ~/.vimrc.local.bundles
endif

call plug#end()

" Required:
filetype plugin indent on

" source plugin config

" vim-lightline
source ~/.config/nvim/plugins/lightline.vim

" vimtex
source ~/.config/nvim/plugins/vimtex.vim
