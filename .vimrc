filetype plugin indent on               " Enable filetype based indentation
set autoindent                          " Respect indentation when starting a new line.
set expandtab                           " Expand tabs to spaces. Essential in Python.
set tabstop=4                           " Number of spaces tab is counted for.
set shiftwidth=4                        " Number of spaces to use for autoindent.
set backspace=2                         " Fix backspace behavior on most terminals.
set noswapfile                          " Disable swap files

let mapleader=","                       " Remap <leader> to  ','
set formatoptions-=cro                  " Disable automatic commenting

" make buffer switching easier
map gn :bn<cr>
map gp :bp<cr>

""""""""""""""""""""""""
" vim-plug             "
""""""""""""""""""""""""
call plug#begin()

Plug 'cocopon/iceberg.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'qpkorr/vim-bufkill'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'Yggdroot/indentLine'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'puremourning/vimspector'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'cdelledonne/vim-cmake'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

packloadall " Load all plugins
silent helptags ALL


"""""""""""""""""""""""""
" Color scheme          "
"""""""""""""""""""""""""
syntax on                               " Enable syntax highlighting
highlight Pmenu ctermbg=gray guibg=gray " Change popup menu color
colorscheme iceberg

"""""""""""""""""""""""""
" Plugin nerdtree       "
"""""""""""""""""""""""""
let NERDTreeShowHidden=1

"""""""""""""""""""""""""
" Plugin fzf            "
"""""""""""""""""""""""""
nnoremap <silent> <C-p> :Files<CR> 

"""""""""""""""""""""""""
" Plugin vim-airline    "
"""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""
" Plugin vim-easymotion "
"""""""""""""""""""""""""
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"""""""""""""""""""""""""
" Plugin vimspector     "
"""""""""""""""""""""""""
let g:vimspector_enable_mappings = 'HUMAN'


"""""""""""""""""""""""""
" Plugin vimspector     "
"""""""""""""""""""""""""
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']

"""""""""""""""""""""""""
" Plugin vim-codefmt    "
"""""""""""""""""""""""""
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

"""""""""""""""""""""""""
" Plugin coc.nvim       "
"""""""""""""""""""""""""
nmap <silent> gd <Plug>(coc-definition)

