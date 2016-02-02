" Plugins
" Install github junegunn/vim-plug first
" After install, run :PlugInstall and :PlugStatus
runtime vim-plug/plug.vim
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'

call plug#end()


set encoding=utf-8
syntax on
" set tab characters apart: from dahlia/vimrc
set listchars=tab:▫\
" Disable neovim mouse
set mouse=


" Recovers cursor position on reopen
set shada='10,\"100,:20,%

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END


" Softtab -- use spaces instead tabs: from dahlia/vimrc
set expandtab
set tabstop=4 shiftwidth=4 sts=4
set autoindent nosmartindent


" Use \n for newline when possible: from dahlia/vimrc
if !exists("vimpager")
  set fileformat=unix
endif


" Different indents for different languages: from dahlia/vimrc
au FileType ruby   setl ts=2 sw=2 sts=2
au FileType yaml   setl ts=2 sw=2 sts=2
au FileType lua    setl ts=2 sw=2 sts=2
au FileType make   setl ts=4 sw=4 sts=4 noet


"Keep 80 columns. from dahlia/vimrc
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
autocmd WinEnter * match OverLength /\%81v.\+/


" Monokai (Molokai) colors
"colo molokai
colo seoul256


" Airline specific settings
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'light'
let g:airline_theme = 'luna'
"let g:airline_theme = 'wombat'
"let g:airline_theme = 'base16'
"let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
