set number
set tabstop=4

nnoremap <leader>p "+p
nnoremap <leader>d "+dap

nnoremap k gk
nnoremap j gj

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Initialize plugin system
call plug#end()

PlugInstall
