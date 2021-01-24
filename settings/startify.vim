packadd vim-startify

" Open Startify on new tabs
if has('nvim')
  augroup setting_startify
    autocmd!
    autocmd TabNewEntered * Startify
  augroup END
else
  augroup setting_startify
    autocmd!
    autocmd VimEnter * let t:startify_new_tab = 1
    autocmd BufEnter *
      \ if !exists('t:startify_new_tab') && empty(expand('%')) |
      \   let t:startify_new_tab = 1 |
      \   Startify |
      \ endif
  augroup END
endif

let g:startify_change_to_dir = 0
let g:startify_custom_header = startify#center([
  \ '     ________ ++     ________ ',
  \ '    /VVVVVVVV\++++  /VVVVVVVV\',
  \ '    \VVVVVVVV/++++++\VVVVVVVV/',
  \ '     |VVVVVV|++++++++/VVVVV/'' ',
  \ '     |VVVVVV|++++++/VVVVV/''   ',
  \ '    +|VVVVVV|++++/VVVVV/''+    ',
  \ '  +++|VVVVVV|++/VVVVV/''+++++  ',
  \ '+++++|VVVVVV|/VVVVV/''+++++++++',
  \ '  +++|VVVVVVVVVVV/''+++++++++  ',
  \ '    +|VVVVVVVVV/''+++++++++    ',
  \ '     |VVVVVVV/''+++++++++      ',
  \ '     |VVVVV/''+++++++++        ',
  \ '     |VVV/''+++++++++          ',
  \ '     ''V/''   ++++++            ',
  \ '              ++              ',
  \ ])
