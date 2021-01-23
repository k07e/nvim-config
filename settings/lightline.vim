packadd lightline.vim

function! LightlineComponent_autosave()
  return g:auto_save ? 'AUTOSAVE' : ''
endfunction

let g:lightline = {
  \ 'active': {},
  \ 'separator': {'left': '', 'right': ''},
  \ 'subseparator': {'left': '', 'right': ''},
  \ 'tabline_separator': {'left': '', 'right': ''},
  \ 'tabline_subseparator': {'left': '', 'right': ''}
  \ }

let g:lightline.active.left = [
  \ ['mode', 'autosave', 'paste'],
  \ ['readonly', 'filename', 'modified']
  \ ]

let g:lightline.component_function = {
  \ 'autosave': 'LightlineComponent_autosave',
  \ }

call execute('source ' . g:setting_dir . '/lightline-photon.vim')
set laststatus=2
set noshowmode
set showtabline=2
