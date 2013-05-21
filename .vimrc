" General settings
" encoding
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" indent
set textwidth=79
set formatoptions+=t
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

" system
set autochdir
set showcmd
set nobackup
set noswapfile
set history=1000

" map esc key
inoremap `` <Esc>


" highlight
syntax on
set hlsearch
set showmatch
set cursorline
set colorcolumn=80

nnoremap <F4> :set hlsearch!<CR>

nmap <leader>l :set list!<CR>
set list
set listchars=tab:»\ ,trail:·

" highlight unwanted spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" line numbers
set number
nmap <F3> :set invnumber<CR>

" misc
set pastetoggle=<F8>
set wildignore+=*.so,*.swp,*.zip,*.pyc
set clipboard=unnamedplus


" Vim plugins managed by Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-powerline'
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'

Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

Bundle 'mattn/zencoding-vim'
Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'davidhalter/jedi-vim'
"Bundle 'ervandew/supertab'

Bundle 'a.vim'
Bundle 'FencView.vim'
Bundle 'taglist.vim'
Bundle 'vim-scripts/AutoTag'

filetype on
filetype plugin on
filetype plugin indent on


" Set colorscheme
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized
"colorscheme jellybeans


" Taglist settings
noremap <silent> <F7> :TlistToggle<cr>
let g:Tlist_Show_One_File=1
let g:Tlist_Use_Right_Window=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_WinWidth=40

" Powerline settings
set t_Co=256
set term=screen-256color
set laststatus=2

" CtrlP settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_height=15
let g:ctrlp_mruf_max=1000
let g:ctrlp_follow_symlinks=1

" NERDTree settings
nmap <F2> :NERDTreeToggle<CR>

" jedi settings
"let g:jedi#autocompletion_command="<tab>"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first=0

" YouCompleteMe settings
let g:ycm_key_detailed_diagnostics = '<leader>a'

" Syntastic settings
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_python_checkers=['pyflakes']

nmap <F9> :SyntasticToggleMode<CR>
nmap <F10> :Errors<CR>

