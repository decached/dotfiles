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
