" plugin configuration
"
" tagbar
let g:tagbar_width = max([27, winwidth(0) / 4])
" auto open
" autocmd VimEnter * nested :call tagbar#autoopen(1)
" autocmd FileType * nested :call tagbar#autoopen(0)
" autocmd BufEnter * nested :call tagbar#autoopen(0)

" auto-pairs
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = '<M-o>'
let g:AutoPairsFlyMode = 1

" add <!-- --> pair and remove '{' for html file
au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'}, ['{'])

" php
au FileType php  let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})

" rust
au FileType rust let b:AutoPairs = AutoPairsDefine({'\w\zs<': '>'})

