
" Plugins {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'
Plugin 'tobyS/pdv'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'joequery/Stupid-EasyMotion'
Plugin 'chriskempson/base16-vim'

" Language files
Plugin 'StanAngeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'plasticboy/vim-markdown'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}
" UI config {{{  
colorscheme base16-ocean " My colorscheme
set background=dark
set transparency=5
set guifont:Menlo\ Regular:h14 " change the font size
set number " show line numbers
set showcmd " show command in the bottom bar 
set cursorline " highlight current line 
set wildmenu " visual autocomplete for command menu 
" tab navigation like Firefox
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-s> :tabnext<CR>
" Relative number / number
function! NumberToggle()
    if(&relativenumber == 1)
        set relativenumber!
    else
        set relativenumber
    endif
endfunction

nnoremap rn :call NumberToggle()<cr>

" }}}
" Indentations {{{
set autoindent " automatic indentation
set smartindent
set tabstop=4 " number of spaces per tab
set softtabstop=4 " number of spaces in tab when editing 
set expandtab " tabs are spaces 
set shiftwidth=4 
" }}}
" Search {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off search highlight 
nnoremap <Leader><Space> :nohlsearch<CR>
"}}}
" Folds configurations {{{
set foldenable " enable folding 
set foldlevelstart=10 " open most folds by default 
set foldnestmax=10 " 10 nested fold max 
" space open/close folds 
nnoremap <Space> za
set foldmethod=indent " fold based on indent level
" }}}
" Movements {{{
" move vertically by visual line 
nnoremap j gj
nnoremap k gk
" move to beginning/end of the line 
nnoremap B ^
nnoremap E $
" reset $/^
nnoremap $ <Nop>
nnoremap ^ <Nop>
" }}}
" Shorcuts {{{
" highlight last inserted text
nnoremap gV `[v`] 
" jk is escape
inoremap jk <Esc>
let mapleader="," " Set a new leader key
" php annotations
map <C-f> :call pdv#DocumentWithSnip()<CR>
" show/hide methode and parameters
map <C-R> :TagbarToggle<CR>
" }}}
" Backups {{{
" Set the backup files 
set backup 
set backupdir=~/.vim-tmp,$/tmp,/var/tmp/,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/tmp,/var/tmp$,/tmp
set writebackup 
" }}}
" CtrP {{{
" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window=0
let g:ctrlp_switch_buffer=0
let g:ctrlp_path_mode=0
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
" }}}
" Syntastic {{{
" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Git {{{
" Git settings 
let g:gitgutter_max_signs = 500
" }}}
" Fugitive {{{
" Fugitive configuration
map <leader>gw :Gwrite<cr>
map <leader>gs :Gstatus<cr>
map <leadeR>gc :Gcommit<cr>
map <leader>gd :Gdiff<cr>
map <leader>gp :Gpull<cr>
map <leader>gg :Gpush<cr>
map <leader>gm :Git mergetool<cr>
" }}}
" NERDTree {{{
" NERDTree settings 
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen = 1
map <C-n> :NERDTree<cr>
" }}}
" Modelines {{{
set modelines=1 " activate the modelines 
" }}}
" Snippets {{{
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" }}}
" ExpendTab {{{
" set expandtab
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
" }}}
" NeoComplete {{{
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" }}}
" vim:foldmethod=marker:foldlevel=0
