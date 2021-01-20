packadd lightline.vim
let g:lightline = {
  \ 'separator': {'left': '', 'right': ''},
  \ 'subseparator': {'left': '', 'right': ''},
  \ 'tabline_separator': {'left': '', 'right': ''},
  \ 'tabline_subseparator': {'left': '', 'right': ''}
  \ }
call execute('source ' . g:setting_dir . '/lightline-photon.vim')
set laststatus=2
set noshowmode
set showtabline=2
