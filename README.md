# Introduction
My first personal configuration of Vim for web development. 

# Manual installation
1. Check out the source form github:

        git clone https://github.com/sducamp/dotfiles.git ~/.vim 
        
2. Create symlinks for vimrc:

        ln -s ~/.vim/.vimrc ~/.vimrc 

3. Clone vundle repository inside the bundle folder:

        git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim

4. Open Macvim and install the plugins with the following command line:

        :PluginInstall

5. Compile [Vimproc](https://github.com/Shougo/vimproc.vim)

        cd ~/.vim/bundle/vimproc.vim
        make

# Plugins
All plugins here are clone of their original repository. Vundle is being used as a plugins manager.

* [NerdTree](https://github.com/scrooloose/nerdtree): A tree explorer plugin fon Vim.
* [Snipmate](https://github.com/garbas/vim-snipmate): TexteMate's snippets for Vim.
* [Unite](https://github.com/Shougo/unite.vim): Search and display form arbitrary sources like files, buffers, recents used files or registers.
* [Phpcomplete-extended](https://github.com/m2mdas/phpcomplete-extended): Autocomplete plugin for PHP.
* [Php.vim](https://github.com/StanAngeloff/php.vim): PHP syntax.
* [neocomplete](https://github.com/Shougo/neocomplete.vim): Next generation completion framework after neocomplcache.
* [supertab](https://github.com/ervandew/supertab): Perform all your vim insert mode completion with Tab.
* [ctrlp](https://github.com/kien/ctrlp.vim): Fuzzy file, buffer, mru, tag, etc finder.
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter): A vim plugin which shows a git diff in the gutter and stages/reverts hunks.
* [vim-fugitive](https://github.com/tpope/vim-fugitive): a Git wrapper so awesome, it should be illegal. 
* [vim-airline](https://github.com/bling/vim-airline): lean & mean status/tabline for vim that's light as air.
* [vmustache](https://github.com/tobyS/vmustache): Mustache template system for VIMScript
* [ultisnips](https://github.com/SirVer/ultisnips): The ultimate snippet solution for vim.
* [pdv](https://github.com/tobyS/pdv): PHP Documentor for Vim.
* [tagbar](https://github.com/majutsushi/tagbar): Vim plugin that displays tags in a window, ordered by scope.
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgosmic commenting
* [ag](https://github.com/rking/ag.vim): Vim plugn for the_silver_searcher, 'ag' a replacement for the Perl module / CLI script 'ack'
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim.
* [Stupid-EasyMotion](https://github.com/joequery/Stupid-EasyMotion): A dumbed down version of EanyMotion that aids navigation no che current line.
* [base16-vim](https://github.com/chriskempson/base16-vim): Base 16 for Vim.
* [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): True Sublime Text style multiple selections for Vim.
* [tpope/vim-surround] (https://github.com/tpope/vim-surround): The plugin provides mappings to easily delete, change and add such surroundings in pairs.
* [yonchu/accelerated-smooth-scroll] (https://github.com/yonchu/accelerated-smooth-scroll): Vim plugin for accelerated smooth scroll.
* [wookiehangover/jshint.vim] (https://github.com/wookiehangover/jshint.vim): JSHint fork of jslint.vim

# Mapping
tab navigation like Firefox
```
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-s> :tabnext<CR>
```
turn off search highlight 
```
nnoremap <Leader><Space> :nohlsearch<CR>
```
space open/close folds 
```
nnoremap <Space> za
```
move vertically by visual line 
```
nnoremap j gj
nnoremap k gk
```
move to beginning/end of the line 
```
nnoremap B ^
nnoremap E $
```
reset $/^
```
nnoremap $ <Nop>
nnoremap ^ <Nop>
```
highlight last inserted text
```
nnoremap gV `[v`] 
```
jk is escape
```
inoremap jk <Esc>
```
Set leader key to ,
```
let mapleader=","
```
php annotations
```
map <C-f> :call pdv#DocumentWithSnip()<CR>
```
show/hide methode and parameters
```
map <C-R> :TagbarToggle<CR>
```
NerdTree 
```
map <C-n> nNERDTree<cr>
```
Toggle the relative number
```
nnoremap rn :call NumberToggle()<cr>
```
Fugitive configuration
```
map <leader>gw :Gwrite<cr>
map <leader>gs :Gstatus<cr>
map <leadeR>gc :Gcommit<cr>
map <leader>gd :Gdiff<cr>
map <leader>gp :Gpull<cr>
map <leader>gg :Gpush<cr>
map <leader>gm :Git mergetool<cr>
```
Vim Multi Cursors
```
let g:multi_cursor_next_key='<C-c>'
let g:multi_cursor_prev_key='<C-P>'
let g:multi_cursor_skip_key='<C-X>'
let g:multi_cursor_quit_key='<Esc>'
```

# Thanks
A special thank you to [Nicholas](https://github.com/nicholasc). 
