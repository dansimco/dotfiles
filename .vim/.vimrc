call pathogen#infect()                      " use pathogen

"Display"
filetype on
syntax on
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
highlight ColorColumn ctermbg=235 guibg=#000000
set colorcolumn=100
set number
set hidden
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set ruler
set nomousehide
set nofoldenable
set lazyredraw
set showmatch "highlights matching brackets

"Search"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight

"Interaction"
"let mapleader=" "
"set mouse=a
set wildmenu " visual autocomplete for command menu
"Behaviour"
autocmd BufWritePre * :%s/\s\+$//
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
set wildignore+=*.log,*.sql,*.cache
let g:gitgutter_sign_column_always=1


"lightline
set noshowmode

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Keep backups at bay
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"nerdtree
"autocmd vimenter * NERDTree


"perf
set history=100