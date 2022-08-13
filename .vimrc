"    Author: Pitnitus
"    Created: 2022-01-01
" LastChange: 2022-05-08

"iGENERAL SETTINGS: {{{1
" To use VIM settings, out of VI compatible mode.
set nocompatible
" Enable file type detection.
filetype plugin indent on
" Syntax highlighting.
syntax on
" Setting colorscheme
" Other settings.
set   autoindent
set   autoread
set   autowrite
set   background=dark
set   backspace=indent,eol,start
set nobackup
set   cindent
set   cinoptions=:0
set   cursorline
set   completeopt=longest,menuone
set noexpandtab
set   fileencodings=utf-8,gb2312,gbk,gb18030
set   fileformat=unix
set   foldenable
set   foldmethod=marker
set   guioptions-=T
set   guioptions-=m
set   guioptions-=r
set   guioptions-=l
set   helpheight=10
set   helplang=cn
set   hidden
"set   history=100
set   hlsearch
set   ignorecase
set   incsearch
set   laststatus=2
set   mouse-=a
set   number
set   paste
set   pumheight=10
set   ruler
set   scrolloff=5
set   shiftwidth=4
set   showcmd
set   smartindent
set   smartcase
set   tabstop=4
set   termencoding=utf-8
set   textwidth=80
set   whichwrap=h,l
set   wildignore=*.bak,*.o,*.e,*~
set   wildmenu
set   wildmode=list:longest,full
set nowrap
"""""""""""""""""""""""""""""""""""""
"1 Vundle manage
set nocompatible 	"be iMproved, required
filetype off		"required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'Vundle.vim'

"All of your Plugins must be added before the following line
call vundle#end()	" required
filetype plugin indent on "required


"""""""""""""""""""""""""""""""""""""'
"ctags manage
"sudo apt-get install ctags
"Use :
"    Process use command "ctags -R"
"	ctrl+] --> 
"	ctrl+T <--
:set tags=tags

""""""""""""""""""""""""""""""""""""
"cscope manage
"sudo apt-get install cscope
"
"cscope : build-in datalib:cscope-Rbq;
"	F5 : find c char;
"	F6 : find a string
"	F7 : find handle's define
"	F8 : find it who used handle
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set nocsverb
	"add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif
:set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <silent> <F5> :cs find s <C-R>=expand("<cword>") <CR><CR>
nmap <silent> <F6> :cs find t <C-R>=expand("<cword>") <CR><CR>
nmap <silent> <F7> :cs find c <C-R>=expand("<cword>") <CR><CR>
nmap <silent> <F8> :cs find d <C-R>=expand("<cword>") <CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'majutsushi/tagbar' " Tag bar"
" Tagbar
let g:tagbar_width=40
autocmd BufReadPost *.cpp,*.c,*.h,*.cc,*.cxx call tagbar#autoopen()

""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
" NetRedTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeWinSize=30
let NERDTreeShowLineNumbers=5
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tools for language rules to check
Plugin 'w0rp/ale'

let g:ale_sign_columm_always=1
let g:ale_sign_error = 'X'
let g:ale_sign_sign_warning = 'w'
let g:ale_statusline_format = ['X %d', '~~ %d', '\/ OK']
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'

set number



