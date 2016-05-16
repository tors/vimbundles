set directory=$HOME/.vim/swapfiles
set encoding=utf-8

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" clipboard
set clipboard=unnamed
set nu

" syntax highlighting
set nocursorcolumn
set nocursorline

" colorscheme
set t_Co=256
set background=light
colorscheme base16-bright

" nerdtree
map <F2> :NERDTreeToggle \| :silent NERDTreeMirror<CR>

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" list chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
" searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

set splitright                    " Open new vertical split windows to the right of the current one, not the left.
set splitbelow                    " See above description. Opens new windows below, not above.

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" js filetypes
au BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.scss set filetype=css

" clear search after hitting return
:nnoremap <CR> :nohlsearch<cr>
set nohlsearch
