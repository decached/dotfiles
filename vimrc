set nocompatible

" Pathogien
    call pathogen#infect()
    call pathogen#helptags()

" Terminal
    set term=xterm-256color
    set t_Co=256
    set ttyfast
    set shell=zsh

" Encoding
    set termencoding=utf-8
    set encoding=utf-8              " Yea baby. Its the 21st century

" Wild Menu
    set wildmode=list:longest,full
    set wildignore=*.o,*~,*.pyc         " Ignore compiled files
    set wildmenu                        " Autocomplete for command-line args

" Indentation
    filetype plugin indent on
    syntax on
    set autoindent
    set smartindent
    set expandtab                   " Fuck tabs. Uses spaces
    set wrap                        " I wrap my shit. You should too
    set cc=+1                       " Mark no man's land

" Text settings
    set textwidth=80                " Max text width
    set tabstop=4                   " numbers of spaces of tab character
    set shiftwidth=4                " numbers of spaces to (auto)indent
    set softtabstop=4                " numbers of spaces to (auto)indent
    set showcmd                     " display incomplete commands

" Search
    set hlsearch                    " highlight searches
    set incsearch                   " do incremental searching

" Notifications
    set report=0                    " Tell me how many lines commands change
    set number                      " show line numbers
    set ruler                       " show the cursor position all the time
    set ls=2                        " always show status line

" Folds
    set foldenable                  " Yes. Folding
    set foldmethod=indent           " My files are always neatly indented
    set foldlevel=100               " Don't autofold

" Backup files - Nah!
    set nobackup                    " do not keep backup files
    set noswapfile                  " do not write annoying swap files
    set nowb

" Misc Behaviour
    set backspace=eol,start,indent
    set showmatch
    set mat=5
    set autoread

" (Hopefully) removes the delay when hitting esc in insert mode
    set noesckeys
    set ttimeout
    set ttimeoutlen=1
" Mapping.
    " Fn Keys Mapping
        map <F3> :RainbowParenthesesToggle<CR>

    " Leader Key Mapping
        " Git specific (requires vim-fugitive)
            map <leader>gs :Gstatus<CR>
            map <leader>gd :Gdiff<CR>
            map <leader>gc :Gcommit<CR>
            map <leader>gl :Glog<CR>
            map <leader>gp :Git push<CR>

        " Misc
            map <leader>i gg=G
            map <leader>v :tabe $MYVIMRC<CR>
            map <leader>V :so $MYVIMRC<CR>
            map <leader>w :w!<CR>
            map <leader>pp :setlocal paste!<CR>" \pp Toggle paste mode on and off

    " Ctrl Key Mapping
        map <c-S-a> ^
        map <c-S-e> %

" ColorSchemes
    colorscheme molokai
    set cul
    hi CursorLine term=bold cterm=bold

" Vim-indent-guides
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    let g:indent_guides_auto_colors = 0
    hi IndentGuidesOdd  ctermbg=grey
    hi IndentGuidesEven ctermbg=darkgrey

" Custom Fn calls
    autocmd BufWrite * :call DeleteTrailingWS()

" Misc Fn defs
    func! DeleteTrailingWS()
          exe "normal mz"
            %s/\s\+$//ge
              exe "normal `z"
          endfunc
