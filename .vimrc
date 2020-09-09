set encoding=UTF-8
set autoindent                          " Respect indentation when starting a new line.
set expandtab                           " Expand tabs to spaces. Essential in Python.
set tabstop=4                           " Number of spaces tab is counted for.
set shiftwidth=4                        " Number of spaces to use for autoindent.
set backspace=2                         " Fix backspace behavior on most terminals.
set noswapfile                          " Disable swap files
filetype plugin indent on               " Enable filetype based indentation

let mapleader=","                       " Remap <leader> to  ','
set formatoptions-=cro                  " Disable automatic commenting

" make buffer switching easier
map gn :bn<cr>
map gp :bp<cr>

""""""""""""""""""""""""
" vim-plug             "
""""""""""""""""""""""""
call plug#begin()

Plug 'dracula/vim', { 'name': 'dracula'  }
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'qpkorr/vim-bufkill'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
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
Plug 'ryanoasis/vim-devicons'

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
let g:dracula_italic = 0
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
packadd! dracula
syntax enable
colorscheme dracula
highlight Normal ctermbg=None
if (has("termguicolors"))
    set termguicolors
endif

"""""""""""""""""""""""""
" Plugin nerdtree       "
"""""""""""""""""""""""""
"let NERDTreeShowHidden=1
nmap <C-e> :NERDTreeToggle<CR>

"""""""""""""""""""""""""
" Plugin vim-devicons   "
"""""""""""""""""""""""""
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
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
" Add `:Format` command to format current buffer.
 command! -nargs=0 Format :call CocAction('format')

" Triger `autoread` when files changes on disk
" "
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" "
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
\ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

