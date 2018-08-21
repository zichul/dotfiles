"""""""""""""""""""""""""""""
"
" Vundle configuration
"
"""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""
"
" Additional Plugins
"
""""""""""""""""""""""""""
" General
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/archive'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'jamessan/vim-gnupg'
Plugin 'godlygeek/tabular'
Plugin 'lfilho/cosco.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-db'
" Styling
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'whatyouhide/vim-gotham'
" Code completion
" Plugin 'Shougo/deoplete.nvim'
" Plugin 'roxma/nvim-yarp'
" Plugin 'roxma/vim-hug-neovim-rpc'
" Ruby
Plugin 'tpope/vim-liquid'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-ragtag'
Plugin 'mattn/emmet-vim'
" JS
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elmcast/elm-vim'
Plugin 'avh4/elm-format'
" Others
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'kopischke/vim-fetch'
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'
Plugin 'slashmili/alchemist.vim'
Plugin 'elzr/vim-json'

" Plugin 'klen/python-mode' # needs configuration
" Plugin 'm2ym/rsense'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""
"
" Color Schemes
"
""""""""""""""""""""""""""""""

colorscheme molokai
set t_Co=256
let g:rehash256 = 1

""""""""""""""""""""""""""""""
"
" Deoplete
"
""""""""""""""""""""""""""""""

let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = "omnifunc"

""""""""""""""""""""""""""""""
"
" Alchemist(elixir)
"
""""""""""""""""""""""""""""""

let g:alchemist#elixir_erlang_src = "/Users/konradkozicki/src"

""""""""""""""""""""""""""""""
"
" Airline configuration
"
""""""""""""""""""""""""""""""

let g:airline_theme="bubblegum"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2 "to appear all the time

"""""""""""""""""""""""""""""
"
" auto-pairs configuration
"
""""""""""""""""""""""""""""""

let g:AutoPairsShortcutBackInsert = "<c-b>"

"""""""""""""""""""""""""""""
"
" Syntastic configuration
"
""""""""""""""""""""""""""""""

" let g:syntastic_check_on_wq = 0
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_error_symbol = "âœ—"
" let g:syntastic_warning_symbol = "âš "
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }

""""""""""""""""""""""""""""""
"
" Cosco configuration
"
"""""""""""""""""""""""""""""""

autocmd FileType javascript,css nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>

""""""""""""""""""""""""""""""
"
" Column 100 colorization
"
""""""""""""""""""""""""""""""

if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

""""""""""""""""""""""""""""""
"
" Indent Guides
"
""""""""""""""""""""""""""""""

let g:indent_guides_auto_colors = 0
" let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#171919   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#1d1e1e ctermbg=237
let g:indent_guides_enable_on_vim_startup = 1

""""""""""""""""""""""""""
"
" CtrlP configuration
"
""""""""""""""""""""""""""

let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*build/*
set wildignore+=*dist/*
set wildignore+=*.egg-info/*
set wildignore+=*/coverage/*
set wildignore+=*bower_components/*
set wildignore+=*node_modules/*
set wildignore+=*tmp/*
set wildignore+=*electron-builds/*

""""""""""""""""""""""""""
"
" NERDTree
"
""""""""""""""""""""""""""

silent! nmap <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

" let g:NERDTreeMapActivateNode="<F4>"
" let g:NERDTreeMapPreview="<F5>"

""""""""""""""""""""""""""
"
" NERDCommenter
"
""""""""""""""""""""""""""

let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""
"
" Rails
"
""""""""""""""""""""""""""

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" highlight Pmenu ctermbg=238 gui=bold " improve autocomplete menu color

""""""""""""""""""""""""""
"
" Python configuration
"
""""""""""""""""""""""""""

" map <Leader>g :call RopeGotoDefinition()<CR>
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "snew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_virtualenv = 1
" let g:pymode_rope_show_doc_bind = '<Leader>g'

""""""""""""""""""""""""""
"
" Binding
"
""""""""""""""""""""""""""

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

""""""""""""""""""""""""""
"
" Mappings
"
""""""""""""""""""""""""""

nmap <F10> :read !date<CR>
nnoremap <F3> :set hlsearch!<CR>
nmap <ladder>t :!mix test
""""""""""""""""""""""""""""""
"
" Vim options
"
""""""""""""""""""""""""""""""

"change tabs to spaces
set tabstop=8
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

"Linux kernel settings
" set tabstop=8
" set softtabstop=8
" set shiftwidth=8
" set noexpandtab

set number
set history=700
set undolevels=700
syntax on
set hlsearch
set relativenumber

set nobackup
set nowritebackup
set noswapfile
set foldmethod=manual
set guifont=Sauce\ Code\ Powerline\ Regular\ 10
set guioptions=agit
set listchars=eol:\\,tab:>-,trail:~,extends:>,precedes:<
set backspace=indent,eol,start

" Jbuilder syntax
au BufNewFile,BufRead *.json.jbuilder set ft=ruby

" Autoformat elixir
" autocmd BufWritePost *.exs silent :!mix format %
" autocmd BufWritePost *.ex silent :!mix format %
" set autoread
let g:mix_format_on_save = 1
" let g:mix_format_silent_errors = 1

"

" Markdown preview settings
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
