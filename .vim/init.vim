set langmenu=en_US
let $LANG = 'en_US'

"  |  \   |  \      |      \      |  \     /  \
"  | $$   | $$       \$$$$$$      | $$\   /  $$
"  | $$   | $$        | $$        | $$$\ /  $$$
"   \$$\ /  $$        | $$        | $$$$\  $$$$
"    \$$\  $$         | $$        | $$\$$ $$ $$
"     \$$ $$         _| $$_       | $$ \$$$| $$
"      \$$$         |   $$ \      | $$  \$ | $$
"       \$           \$$$$$$       \$$      \$$
"


" ---- Basic Settings ----------------------------------------------------------

set shell=powershell                        " set default shell
set noswapfile                                  " no swap files
syntax enable                                   " enable syntax
filetype plugin indent on
set mouse=a                                     " enable mouse
set updatetime=30                               " time before updates
set number relativenumber                       " line numbers
set history=1000                                " command history
set signcolumn=yes numberwidth=6                " signcolumn and available width
set linebreak                                   " text wrap wont break words
set textwidth=100                               " line length
set title                                       " window title current file
set spell                                       " spell check
set nocompatible                                " no vi compatibility
set smartcase ignorecase incsearch              " searching and highlighting
set foldmethod=indent foldlevel=2 foldcolumn=2  " code folding
set foldlevelstart=99 foldopen+=jump nofoldenable " auto fold open/close
set clipboard=unnamedplus                       " clipboard register
set tabstop=8 softtabstop=0                     " tab settings
set expandtab shiftwidth=2 smarttab
set breakindent                                 " smart wrapping indentation
set breakindentopt=shift:2,min:40,sbr
set showbreak=>>                                " shows line break
set ruler                                       " always show cursor
set wrap                                        " enable text wrapping
set scrolloff=5                                 " lines above/below cursor when scrolling
set showcmd                                     " key strokes in command line
set splitbelow splitright                       " new windows split right/bottom
set wildmenu wildmode=longest:full,full         " command autocompletion
set timeoutlen=1000 ttimeoutlen=1000            " timeout for keybind presses
set autowrite                                   " auto save
set confirm                                     " prompt to save not error
set noerrorbells                                " no ring on error
set undofile undodir=~/.vim/undo-dir            " persistent undo
set listchars=tab:>-                            " no endline chars
set hidden                                      " hide buffers instead of close
set autochdir                                   " relative filepaths
set completeopt=noinsert                        " dont insert automatically in completion
set nobackup
set nowritebackup
if has("nvim")
  set termguicolors                             " better colors
endif

call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'wlangstroth/vim-racket'
  Plug 'sheerun/vim-polyglot'
  Plug 'rust-lang/rust.vim'
  Plug 'luochen1990/rainbow'
  Plug 'vim-syntastic/syntastic'
  Plug 'morhetz/gruvbox'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'cdelledonne/vim-cmake'
  "Plug 'itchyny/lightline.vim'
  Plug 'tpope/vim-surround'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'tommcdo/vim-lion'
  Plug 'Shirk/vim-gas'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'ryanoasis/vim-devicons'               " fancy icons
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'blueyed/vim-diminactive'
  Plug 'stevearc/dressing.nvim'               " prettier boxes like on rename
  Plug 'airblade/vim-rooter'
  "Plug 'jamestthompson3/nvim-remote-containers'
  if has("vim-8.2.1978") || has("nvim")
    Plug 'psliwka/vim-smoothie'
  endif
call plug#end()

" Get syntax files from config folder
set runtimepath+=~/.config/nvim/syntax

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = 'left'     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :NERDTreeFind<CR>

nnoremap ø :bp<cr>
nnoremap å :bn<cr>
nnoremap <c-k><c-w> :bd<cr>

nnoremap <c-k><c-k> :CocCommand clangd.switchSourceHeader<cr>

" Create default mappings
let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

map <c-k><c-c> <plug>NERDCommenterToggle
map <c-k><c-u> <plug>NERDCommenterUncomment
map <c-k><c-a> <plug>NERDCommenterAppend

map <c-k><c-o> :e $MYVIMRC<cr>
map <c-k><c-p> :source $MYVIMRC<cr>

" Quality-of-life settings from video
set clipboard=unnamedplus
set showtabline=2

vnoremap < <gv
vnoremap > >gv
" End of Qol settings

" Telescope
nnoremap <c-p> :Telescope find_files<cr>
inoremap <c-p> <esc>:Telescope find_files<cr>
vnoremap <c-p> :Telescope find_files<cr>

" Theme
colorscheme gruvbox

" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" Remap C-c to <esc>
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" default file encoding
set encoding=utf-8

set laststatus=2

autocmd TermOpen * setlocal nonumber norelativenumber

let g:rooter_patterns = ['build/', 'include/', 'src/']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"  airline {
  " stops other insert modes from showing
  let g:airline_mode_map = {}
  let g:airline_mode_map['ic'] = 'INSERT'
  " display all buffers if one tab open
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#tab_nr_type = 2  " buffer/tab number
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  " how file paths are shown (they're not)
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline_powerline_fonts = 1             " powerline integration
  let g:airline_theme='bubblegum'               " status bar theme
  let g:airline#extensions#tagbar#enabled = 1   " show where in file you are
  let g:airline#extensions#tagbar#flags = 'f'
  let g:airline#extensions#coc#enabled = 1
  let g:airline_detect_modified = 0             " stop color change of filepath
  let g:airline_section_c = airline#section#create(["%{expand('%:p:~:h:h:t')}/%{expand('%:p:h:t')}/%{expand('%:t')}"])
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  let g:airline_symbols.modified = ''

" stop changing tab color when not saved, unless its not the selected tab
autocmd VimEnter *
   \ let g:airline#themes#bubblegum#palette.tabline = {
   \    'airline_tabmod':       ['#000000','#afd787',231,88,''],
   \    'airline_tabmod_unsel': ['#000000','#87afd7',231,52,''],
   \ } | :AirlineRefresh
