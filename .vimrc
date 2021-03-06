call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

:set shiftwidth=4    " Indents will have a width of 4

:set softtabstop=4   " Sets the number of columns for a TAB

:set expandtab       " Expand TABs to spaces

:set fileencoding=utf-8
:set fileencodings=utf-8

:colorscheme desert

if has('gui_running')
    ":set guifont=Inconsolata:h11:cANSI
    :set guioptions-=m
    :set guioptions-=T
    :colorscheme ir_black
endif

" Detect filetypes for syntax highlighting, and autocmds 
:au BufNewFile,BufRead *.mxml set filetype=mxml
:au BufNewFile,BufRead *.as set filetype=actionscript
:au BufRead,BufNewFile *.scss set filetype=scss
:au BufRead,BufNewFile *.markdown set filetype=markdown

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
 
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
 
  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType php setlocal ts=2 sts=2 sw=2 expandtab

  " Useful for textformatting during blogging
  "autocmd FileType markdown setlocal fo+=a
 
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" Looks for tags file, recursively up to root
:set tags=./tags;/

let g:user_zen_settings = {
\   'css' : {
\       'filters': 'html, css, fc',
\   },
\   'scss': {
\       'extends' : 'css',
\       'filters' : 'css, fc',
\    },
\}

" If you need root permissions to save
cmap w!! w !sudo tee % >/dev/null

" Settings for CloseTag plugin
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
