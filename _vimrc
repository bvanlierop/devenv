" VIMRC FILE
" Check this website for more info: https://dougblack.io/words/a-good-vimrc.html

" Colors
colorscheme badwolf " awesome colorscheme
syntax enable " enable syntax processing

" Spaces & Tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" UI
set number " shows line numbers
set showcmd " shows the command in bottom bar
set cursorline " highlight current line
filetype indent on " load filetype specific indent files
set wildmenu " visually autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]

" Searching
set incsearch " search as characters are entered
set hlsearch " highlight matches
" turn off search highlight key map (key combo: "\<space>")
nnoremap <leader><space> :nohlsearch<CR>

" Folding (collapse-like feature)
set foldenable " enable folding
set foldlevelstart=10 "open most folds by default"
set foldnestmax=10 "10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

