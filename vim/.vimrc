set nocompatible

" Plugins
source $HOME/.vim/rc/plugs.vimrc

""""""""""""""""
" Misc Fn defs "
""""""""""""""""
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

func! RefreshPlugs()
    exe 'PlugClean'
    exe 'PlugInstall'
endfunc

func! SetTabWidth(width)
    exe 'set tabstop='    .a:width
    exe 'set shiftwidth=' .a:width
    exe 'set softtabstop='.a:width
endfunc

"""""""
" Set "
"""""""
" Terminal
    set term=screen-256color
    set t_Co=256
    set ttyfast
    set shell=zsh                                       " Ever heard of ShellShock?

" Encoding
    set termencoding=utf-8                              " Too young to use ASCII
    set encoding=utf-8                                  " No seriously, way too young to use ASCII

" Wild Menu
    set wildmode=list:longest,full
    set wildignore=*.out,*.o,*~,*.pyc,**.git,**.env,**BUILD
    set wildmenu

" Indentation
    filetype plugin indent on
    syntax on
    set autoindent
    set smartindent
    set expandtab                                       " Fuck tabs. Uses spaces
    set cc=+1                                           " Mark no man's land

" Text settings
    call SetTabWidth(4)
    set textwidth=80                                    " Max text width
    set showcmd                                         " Display incomplete commands

" Search
    set nohlsearch                                      " Highlight searches
    set incsearch                                       " Do incremental searching
    set ignorecase                                      " Case-insensitive search
    set smartcase                                       " Smartly searches

" Notifications
    set report=0                                        " Tell me how many lines commands change
    set number                                          " Show line numbers
    set relativenumber                                  " Show relative line numbers
    set ruler                                           " Show the cursor position all the time
    set ls=2                                            " Always show status line

" Folds
    set foldenable                                      " Folding FTW.
    set foldmethod=indent                               " My files are always neatly indented
    set foldlevel=100                                   " Don't autofold

" Backup files - Nah!
    set nobackup                                        " Do not keep backup files
    set noswapfile                                      " Do not write annoying swap files
    set nowritebackup

" Misc Behaviour
    set backspace=eol,start,indent
    set lazyredraw                                      " Don't redraw while executing macros
    set showmatch
    set magic
    set autoread                                        " Auto read when file is changed from outside
    set title

" (Hopefully) removes the delay when hitting esc in insert mode
    set ttimeout
    set ttimeoutlen=1

" Key Mapping
source $HOME/.vim/rc/keymap.vimrc

" ColorSchemes
    set background=dark
    colorscheme jellybeans
    set cursorline
    hi CursorLine term=bold cterm=bold

" CtrlP
    let g:ctrlp_custom_ignore = ''
    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_show_hidden = 1
    let g:ctrlp_max_depth = 10

" NERDTree
    let NERDTreeShowHidden=1

" Python Mode
    let g:pymode_python = "python2"
    let g:pymode_lint_on_fly = 1

    let g:pymode_lint_ignore = "E501"
    let g:pymode_quickfix_maxheight = 3
    let g:pymode_quickfix_minheight = 1
    let g:pymode_rope = 1
    let g:pymode_rope_completion = 1
    let g:pymode_rope_complete_on_dot = 0
    let g:pymode_rope_lookup_project = 1

" Syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Autocmds
    " Filetypes
        autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
        autocmd BufNewFile,BufRead .jshintrc,.bowerrc setlocal filetype=json

    " Git
        autocmd Filetype gitcommit setlocal spell textwidth=72

    " Indentation
        autocmd Filetype c,java,cpp,js,json,clojure,scala :call SetTabWidth(2)

    " Rainbow Parentheses
        autocmd VimEnter * RainbowParenthesesToggle
        autocmd Syntax * RainbowParenthesesLoadRound
        autocmd Syntax * RainbowParenthesesLoadSquare
        autocmd Syntax * RainbowParenthesesLoadBraces

    " Misc
        autocmd BufWrite !*.md :call DeleteTrailingWS()
        autocmd CompleteDone * pclose  " Close autocomplete window after completion

" User interface configuration "
""""""""""""""""""""""""""""""""
    set mouse=a            " I (sometimes) like using my mouse
    set noerrorbells       " Hate console beeps.
