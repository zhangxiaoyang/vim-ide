"""""""""""""""""""""""""""""""""""
"    get vundle & install plugins
"""""""""""""""""""""""""""""""""""
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

"""""""""""""""""""""""""""""""""""
"    required
"""""""""""""""""""""""""""""""""""
set nocompatible
set fileencodings=utf-8-bom,ucs-bom,utf-8,cp936,gb18030,ucs,big5
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
"Bundle 'ctags.vim'

" quickly view class, struct etc.
" <:Tlist>
Bundle 'taglist.vim'

" file explore
" <wm> 
Bundle 'winmanager'

" super ctags.vim
" <:cs add /home/XX/cscope.out /home/XX>
"Bundle 'cscope.vim'

" shift from .c to .h
" <:A>
"Bundle 'a.vim'

" code completion using TAB-KEY
" <TAB>
"Bundle 'SuperTab'

" edit more than one file
" <:bp> <:bn>
Bundle 'minibufexplorerpp'

" c code tool
"Bundle 'c.vim'

" golang highlight
Bundle 'fatih/vim-go'

" scala highlight
Bundle 'derekwyatt/vim-scala'

" html
Bundle 'mattn/emmet-vim'

" less
Bundle 'groenewege/vim-less'

" look for keyword in project
"Bundle 'grep.vim'

" powerline
Bundle 'Lokaltog/vim-powerline.git'

" make every colorschemes work
" must install vim-gtk before
" version 4.00 may have some problem
Bundle 'zhangxiaoyang/CSApprox-stable.git'

" awesome auto complete plugin
Bundle 'Valloric/YouCompleteMe'

" javascript auto complete
Bundle 'marijnh/tern_for_vim'

" syntastic detection
Bundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_python_checkers=['pylint']
let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'

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

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" appearance
colorscheme freya
"color desert
syntax enable
syntax on
set nu
set autoindent
set backspace=2
set sw=4
set ts=4
set expandtab
set smarttab
set pastetoggle=<F12>
set modeline
set cursorline
"hi cursorline term=bold cterm=bold guibg=grey40
set cursorcolumn
"hi cursorcolumn term=bold cterm=bold guibg=grey40

inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>
function ClosePair(char)
    if getline('.')[col('.')-1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

set foldmethod=indent
set hlsearch
set incsearch 
set foldenable 
set foldmethod=manual 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

autocmd FileType javascript setlocal sw=2 ts=2 expandtab
