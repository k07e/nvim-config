packadd vim-which-key

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map = {}

let g:which_key_map.p = {
  \ 'name': '+Plugins',
  \ 'c': [':PackClean', 'Clean'],
  \ 's': [':PackStatus', 'Status'],
  \ 'u': [':PackUpdate', 'Update'],
  \ }

let g:which_key_map.t = {
  \ 'name': '+Toggle',
  \ 'a': [':AutoSaveToggle', 'AutoSave'],
  \ 'g': [':Goyo', 'Goyo'],
  \ 'p': [':set invpaste', 'Paste'],
  \ 't': [':TransparantToggle', 'Transparent'],
  \ 'l': [':call lightline#toggle()', 'lightline'],
  \ }

call which_key#register('<Space>', "g:which_key_map")
