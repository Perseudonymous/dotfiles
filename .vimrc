" Install vim-plug if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'https://github.com/tpope/vim-sensible'
Plug 'https://github.com/tpope/vim-fugitive'

Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/python-mode/python-mode.git'

call plug#end()

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

set relativenumber

inoremap fd <Esc>

