packadd vim-which-key

let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

function! PhotonToggle()
  if g:colors_name == 'photon'
    colorscheme antiphoton
    let g:colors_name = 'antiphoton'
    let g:lightline.colorscheme = 'antiphoton'
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
  else
    colorscheme photon
    let g:colors_name = 'photon'
    let g:lightline.colorscheme = 'photon'
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
  endif
endfunction

let g:which_key_map = {}

let g:which_key_map.p = {
  \ 'name': '+Plugins',
  \ 'c': [':PackClean', 'Clean'],
  \ 's': [':PackStatus', 'Status'],
  \ 'u': [':PackUpdate', 'Update'],
  \ }

let g:which_key_map.T = {
  \ 'name': '+Toggle',
  \ 'a': [':AutoSaveToggle', 'AutoSave'],
  \ 'b': [':call PhotonToggle()', 'Background'],
  \ 'c': [':ColorizerToggle', 'Colorizer'],
  \ 'g': [':Goyo', 'Goyo'],
  \ 'i': [':IndentGuidesToggle', 'IndentGuides'],
  \ 'p': [':set invpaste', 'Paste'],
  \ 't': [':TransparantToggle', 'Transparent'],
  \ 'l': [':call lightline#toggle()', 'lightline'],
  \ }

let g:which_key_map.t = {
  \ 'name': '+tabpage',
  \ '1': [':tabnext 1', 'Move to 1'],
  \ '2': [':tabnext 2', 'Move to 2'],
  \ '3': [':tabnext 3', 'Move to 3'],
  \ '4': [':tabnext 4', 'Move to 4'],
  \ '5': [':tabnext 5', 'Move to 5'],
  \ '6': [':tabnext 6', 'Move to 6'],
  \ '7': [':tabnext 7', 'Move to 7'],
  \ '8': [':tabnext 8', 'Move to 8'],
  \ '9': [':tabnext 9', 'Move to 9'],
  \ 'c': [':tabclose', 'Close'],
  \ 'e': [':tabedit | Startify', 'New'],
  \ 'n': [':tabnext', 'Next'],
  \ 'p': [':tabprevious', 'Previous'],
  \ }

call which_key#register('<Space>', "g:which_key_map")
