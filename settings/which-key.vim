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

let g:which_key_map.t = {
  \ 'name': '+Toggle',
  \ 'a': [':AutoSaveToggle', 'AutoSave'],
  \ 'b': [':call PhotonToggle()', 'Background'],
  \ 'c': [':ColorToggle', 'Color'],
  \ 'g': [':Goyo', 'Goyo'],
  \ 'i': [':IndentGuidesToggle', 'IndentGuides'],
  \ 'p': [':set invpaste', 'Paste'],
  \ 't': [':TransparantToggle', 'Transparent'],
  \ 'l': [':call lightline#toggle()', 'lightline'],
  \ }

call which_key#register('<Space>', "g:which_key_map")
