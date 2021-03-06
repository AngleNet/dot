"set runtimepath+=~/.vim_runtime
"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim
"source ~/.vim_runtime/vimrcs/ctrlp.vim
"try "source ~/.vim_runtime/my_configs.vim
"catch
"endtry

set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/scrooloose/nerdtree'
Plugin 'git://github.com/scrooloose/syntastic'
Plugin 'git://github.com/bling/vim-airline'
Plugin 'git://github.com/vim-airline/vim-airline-themes'
Plugin 'git://github.com/majutsushi/tagbar'
Plugin 'git://github.com/Valloric/YouCompleteMe'
Plugin 'git://github.com/vim-scripts/DoxygenToolkit.vim'
Plugin 'git://github.com/Yggdroot/indentLine'
"Plugin 'git://github.com/nathanaelkane/vim-indent-guides'
"Plugin 'git://github.com/Shougo/neocomplcache.vim'
"Plugin 'git://github.com/nanotech/jellybeans.vim'
call vundle#end()
filetype plugin indent on

" :help indentLine
" :digraphs
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239 
"let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_conceallevel = 2


set laststatus=2
let g:airline_powerline_fonts=1
let g:jellybeans_use_lowcolor_black=0
let g:NERDTreeDirArrows=0
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#whitespace#symbol='!'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1



"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
"highlight SyntasticErrorSign guifg=white guibg=green
let g:syntastic_enable_highlighting = 0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"Doxygen config

"Tagbar config
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_width=20
"let g:tagbar_autopreview = 1
let g:tagbar_sort = 1
let g:tagbar_indent=1

"You complete me
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_error_symbol = '¶'
let g:ycm_warning_symbol = '※'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
set pumheight=8 "preview menu height.

set ts=4 	"Num of tab spaces
set nu
set ai 		"Set auto indenting on
set foldmethod=indent
"za
"zf
"zR
"zM
" NERDTree need this
nnoremap <silent> <F4> :NERDTree<CR>
let NERDTreeWinSize=20
set encoding=utf-8
filetype on
filetype indent on
set cursorline
set cindent 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

"Set colorscheme
"colorscheme distinguished
colorscheme monoacc
"colorscheme solarized8_dark
"Make your cursor always be center vertically
set scrolloff=8
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
set autoread
set previewheight=5
"Ctags
"

"Man pages
":Man echo
"\K
runtime! ftplugin/man.vim
"Digraph
"Ctrl-K pp
":digraphs

"Tab
":tabe
":tabc
"Open nerdtree when vim starts
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
set nu
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"