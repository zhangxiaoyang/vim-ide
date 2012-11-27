"""""""""""""""""""""""""""""""""""
"    get vundle & install plugins
"""""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

"""""""""""""""""""""""""""""""""""
"    required
"""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


"""""""""""""""""""""""""""""""""""
"    my bundle
"""""""""""""""""""""""""""""""""""
" http://vim-scripts.org/vim/scripts.html

" vim doc
" <:help>
Bundle 'liangfeng/vimcdoc.git'

" jump to where the function defined 
" must install ctags before
" <CTRL+T> <CTRL+]>
Bundle 'ctags.vim'

" quickly view class, struct etc.
" <:Tlist>
Bundle 'taglist.vim'

" file explore
" <wm> 
Bundle 'winmanager'

" super ctags.vim
" <:cs add /home/XX/cscope.out /home/XX>
Bundle 'cscope.vim'

" shift from .c to .h
" <:A>
Bundle 'a.vim'

" code completion using TAB-KEY
" <TAB>
Bundle 'SuperTab'

" edit more than one file
" <:bp> <:bn>
Bundle 'minibufexplorerpp'

" c code tool
Bundle 'c.vim'

" look for keyword in project
Bundle 'grep.vim'

" powerline
Bundle 'Lokaltog/vim-powerline.git'

" make every colorschemes work
" must install vim-gtk before
" version 4.00 may have some problem
Bundle 'zhangxiaoyang/CSApprox-stable.git'

"""""""""""""""""""""""""""""""""""
"    required
"""""""""""""""""""""""""""""""""""
filetype plugin indent on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

" appearance
colorscheme freya
syntax enable
syntax on
set nu
set autoindent
set backspace=2
set sw=4
set ts=4
set expandtab
set smarttab
inoremap ( ()<LEFT> 
inoremap { {}<LEFT> 
inoremap [ []<LEFT> 
inoremap " ""<LEFT> 
set hlsearch 
set incsearch 
set foldenable 
set foldmethod=manual 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

