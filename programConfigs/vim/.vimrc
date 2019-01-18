set number
set tabstop=4

nnoremap <leader>p "+p
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>d "+dap

nnoremap k gk
nnoremap j gj

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

" Web plugins
Plug 'ap/vim-css-color'
Plug 'othree/javascript-libraries-syntax.vim'
" Typescript
Plug 'HerringtonDarkholme/yats'


" auto complete
Plug 'honza/vim-snippets'

" navigation/search file
Plug 'scrooloose/nerdtree'

" better statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git management plugin
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

PlugInstall

let g:used_javascript_libs = 'chai,vue'


" vim:foldmethod=marker:foldlevel=0


" Colors {{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable                " enable syntax processing
" colorscheme base16-default
" set background=dark
" }}} Colors

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set noexpandtab     " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:_,nbsp:☠
set list

set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
let &colorcolumn="80,".join(range(119,999),",")
" }}} UI Config

" Search {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matche
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case
                    " case-sensitive otherwise

" Leader & Mappings {{{

" edit/reload vimrc
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" better ESC
inoremap jj <esc>
inoremap jk <esc>

" insert blank line before current line without leaving insert mode
imap <leader>o <c-o><s-o>

" move up/down consider wrapped lines
nnoremap j gj
nnoremap k gk

" fix indentation
nnoremap <leader>i mzgg=G`z<CR>

" turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

" move through grep results
nmap <silent> <right> :cnext<CR>
nmap <silent> <left> :cprev<CR>

" buffers
nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
nnoremap <leader>bd :bd<CR>

" split navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" NERDTree mappings {{{
map <C-n> :NERDTreeToggle<CR>
" }}}

" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" }}}

" Functions {{{
" trailing whitespace
match ErrorMsg '\s\+$'
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
" }}}
