:syntax on
:autocmd FileType *      set formatoptions=tcql nocindent comments&
:autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
:
:set autoindent
:set autowrite
:set autoread
:ab #d #define
:ab #i #include
:ab #b /********************************************************
:ab #e ********************************************************/
:ab #l /*------------------------------------------------------*/
:set sw=4
:set notextmode
:set notextauto
:set hlsearch
:set incsearch
":set textwidth=75
:set ignorecase
:set smartcase
:set nu

:set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " vim will interpret it to be having
                    " a width of 4.

:set shiftwidth=4    " Intents will have a width of 4

:set softtabstop=4   " Sets the number of columns for a TAB

:set expandtab       " Expand TABs to spaces

:set fileencodings=utf-8

:inoremap kj <Esc>

":colorscheme desert
:colorscheme ir_black

"if has('gui_running')
"    :set guifont=Inconsolata:h11:cANSI
"endif

" Syntax highlighting for mxml, actionscript
:au BufNewFile,BufRead *.mxml set filetype=mxml
:au BufNewFile,BufRead *.as set filetype=actionscript

" Looks for tags file, recursively up to root
:set tags=./tags;/

" Get rid of menu and toolbar in GVIM
if has('gui_running')
    set guioptions-=T   " Get rid of toolbar
    set guioptions-=m   " Get rid of menu
endif

