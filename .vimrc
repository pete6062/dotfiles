" ~/.vimrc

" REFERENCES {{{
" https://www.youtube.com/watch?v=XA1WjJbmmoM - How to do 90% of what plugins do (with just vim) 

" }}}

" GENERAL {{{
" abandon vi
set nocompatible

" enable syntax and plugins for netrw
syntax enable
filetype plugin on

" FUZZY FILE SEARCH {{{
" search down into subfolders
" provide tab-completion for all file-related tasks
set path+=**

" enable enhanced tab autocomplete.
set wildmenu

" complete until longest string, then open wildmenu.
set wildmode=list:longest,full

" NOW WE CAN:
" - hit tab to :find by partial match
" - use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer.
           
" }}}

" TAG JUMPING {{{
" create the 'tags' file (make sure ctags is installed first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use <C-]> to jump to tag under cursor
" - Use g<C-]> for ambiguous tags
" - Use <C-t> to jump back up the tag stack

" THINGS TO CONSIDER:
" - doesn't help if you want a visual list of tags
" }}}

" AUTOCOMPLETE {{{
" <C-p> in insert mode to pop dictionary.
set complete+=kspell 

" set autocomplete menu properties.
set completeopt=menuone,longest

" prevent status messages when autocompleting.
set shortmess+=c

" good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - <C-x><C-n> for JUST this file
" - <C-x><C-f> for filenames (works with our path trick!)
" - <C-x><C-]> for tags only
" - <C-n> for anything specified by the 'complete' option

" NOW WE CAN:
" - use <C-n> and <C-p> to go back and forth in the suggestion list

" }}}

" FILE BROWSING {{{
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" }}}

" FORMATTING {{{

set number	            " enable line numbers.
set relativenumber      " enable relative number
set tabstop=4           " set tab spacing.
set shiftwidth=4        " set indent size.
set expandtab           " tab key inserts spaces instead of tab characters.
set foldmethod=marker   " enable folding.
set incsearch           " dynamically move to first match while searching.
set cmdheight=5         " set height of command-line window.

" }}}

" MOUSE INPUT {{{
set mouse=a     " enable mouse:

" }}}

" }}}

" PLUGINS {{{
" Manage plugins with vim-plug. Install vim-plug if it's not already installed.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" VIM-VINEGAR {{{
Plug 'tpope/vim-vinegar'

" }}}

" CTRL-P {{{
Plug 'ctrlpvim/ctrlp.vim'

" }}}

" ACK {{{
Plug 'mileszs/ack.vim'

" }}}

" VIM-EASYMOTION {{{
Plug 'easymotion/vim-easymotion'	 

" }}}

" VIM-COMMENTARY {{{
Plug 'tpope/vim-commentary'
" gcc     comment out a line
" gc      comment out target of a motion (e.g. gcap) or selection in 
"         visual mode.

" }}}

" NERDTREE {{{
Plug 'preservim/nerdtree'
" <S-r>     refresh NERDTree.

" }}}

" ALE {{{
" add syntax checking.
Plug 'dense-analysis/ale'

" }}}

"  VIM-PLUG {{{
" add vim-plug help pages.
Plug 'junegunn/vim-plug'

" }}}

" VIM-FUGITIVE {{{
" use git within vim. 
Plug 'tpope/vim-fugitive'

" }}}

" VIMSPECTOR {{{
" debugger
Plug 'puremourning/vimspector'

" make sure GNU debugger (gdb) package is installed. 

" }}}

" VIM-MAXIMIZER {{{
" toggle maximizing split windows.
Plug 'szw/vim-maximizer'

" }}}

" VIM-TMUX-NAVIGATOR {{{
" seamless movement between vim panes and tmux splits
Plug 'christoomey/vim-tmux-navigator'  

" }}}

" VIM-SYSTEM-COPY {{{
Plug 'christoomey/vim-system-copy'

" }}}

" VIM-SURROUND {{{
Plug 'tpope/vim-surround'

" }}}

" VIM-REAPEAT {{{
Plug 'tpope/vim-repeat'

" }}}

" AUTOCOMPLPOP {{{
" have autocomplete pop-up menu appear as you're typing.
Plug 'vim-scripts/AutoComplPop'
" }}}

" NOFRILS THEME {{{
Plug 'robertmeta/nofrils'

" }}}

call plug#end()

" }}}

" KEYBINDS {{{
" GENERAL KEYBINDS {{{
" map leader key to space.
let mapleader = ' ' 

" source ~/.vimrc
noremap <leader>r :source $MYVIMRC<cr> :echo "Reloaded ~/.vimrc."<cr>

" Fast window movement from <Ctrl + w> + [hjkl] to <Ctrl + [hjkl]
nnoremap <c-h> <c-w><c-h>	
nnoremap <c-j> <c-w><c-j>	
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

" hide highlights
map <leader>h :noh<cr>

" add shift-tab behavior to insert mode
inoremap <S-Tab> <C-d>

" }}}

" AUTOCOMPLETE {{{
" navigate the complete menu items like <C-n>/<C-p> would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" select the complete menu item like <C-y> would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <cr> pumvisible() ? "<C-y>" : "<cr>"

" cancel the complete menu item like <C-e> would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

" }}}

" VIMSPECTOR {{{
nnoremap <leader>m :MaximizerToggle!<cr>
nnoremap <leader>dd :call vimspector#Launch()<cr>
nnoremap <leader>dR :call vimspector#Reset()<cr>
nmap <leader>dr :call vimspector#Restart()<cr>

nmap <leader>dl :call vimspector#StepInto()<cr>
nmap <leader>dj :call vimspector#StepOver()<cr>
nmap <leader>dk :call vimspector#StepOut()<cr>
nnoremap <leader>d<space> :call vimspector#Continue()<cr>
nmap <leader>drc :call vimspector#RunToCursor()<cr>

nmap <leader>dbp :call vimspector#ToggleBreakpoint()<cr>
nmap <leader>dCbp :call vimspector#ClearBreakpoints()<cr>
nmap <leader>dcbp :call vimspector#ToggleConditionalBreakpoint()

fun GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<cr>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<cr>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<cr>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<cr>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<cr>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<cr>

" }}}

" }}}

" INIT ENVIRONMENT {{{
" start with NERDTree. 
autocmd VimEnter * NERDTree

" configure color theme
:colo nofrils-dark
:let g:norfiles_strbackgrounds=1
:let g:nofrils_heavycomments=1
:let g:nofiles_heavylinenumbers=1

" }}} 

