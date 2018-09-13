""""""""""""""""""""""""""
"
" Plugins
"
""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" General
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jamessan/vim-gnupg'
Plug 'godlygeek/tabular'
Plug 'lfilho/cosco.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'tpope/vim-db'
" Styling
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'tomasr/molokai'
" Ruby
Plug 'tpope/vim-liquid'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-ragtag'
" JS
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Others
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kopischke/vim-fetch'
Plug 'elzr/vim-json'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'majutsushi/tagbar'

call plug#end()

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

"""""""""""""""""""""""""""""
"
" Ultisnips
"
""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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
" FZF
"
""""""""""""""""""""""""""

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nmap ; :FZF<CR>

""""""""""""""""""""""""""
"
" Gundo
"
""""""""""""""""""""""""""

nnoremap <F5> :GundoToggle<CR>

""""""""""""""""""""""""""
"
" Mappings
"
""""""""""""""""""""""""""

nmap <F10> :read !date<CR>
nnoremap <F3> :set hlsearch!<CR>

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
""""""""""""""""""""""""""""""
"
" asyncomplete
"
""""""""""""""""""""""""""""""

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif

""""""""""""""""""""""""""""""
"
" Tagbar
"
""""""""""""""""""""""""""""""

nmap <F8> :TagbarToggle<CR>

if executable('ripper-tags')
  let g:tagbar_type_ruby = {
      \ 'kinds'      : ['m:modules',
                      \ 'c:classes',
                      \ 'C:constants',
                      \ 'F:singleton methods',
                      \ 'f:methods',
                      \ 'a:aliases'],
      \ 'kind2scope' : { 'c' : 'class',
                       \ 'm' : 'class' },
      \ 'scope2kind' : { 'class' : 'c' },
      \ 'ctagsbin'   : 'ripper-tags',
      \ 'ctagsargs'  : ['-f', '-']
      \ }
endif

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
\ }
