packadd lightline.vim

function! LightlineComponent_autosave()
  return g:auto_save ? 'AUTOSAVE' : ''
endfunction

function! LightlineComponent_colorizer()
  lua vim.api.nvim_set_var('lightline_component_colorizer_result', require 'colorizer'.is_buffer_attached(0) and 1 or 0)
  return g:lightline_component_colorizer_result ? 'COLORIZER' : ''
endfunction

function! LightlineComponent_fficon()
  return &fileformat == 'unix' ? '' : &fileformat == 'dos' ? '' : &fileformat == 'mac' ? '' : &fileformat
endfunction

function! LightlineComponent_fticon()
  return WebDevIconsGetFileTypeSymbol()
endfunction

function! LightlineTabComponent_fticon(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

let g:lightline = {
  \ 'active': {},
  \ 'inactive': {},
  \ 'tab': {},
  \ 'separator': {'left': '', 'right': ''},
  \ 'subseparator': {'left': '', 'right': ''},
  \ 'tabline_separator': {'left': '', 'right': ''},
  \ 'tabline_subseparator': {'left': '', 'right': ''}
  \ }

let g:lightline.active.left = [['mode', 'autosave', 'paste', 'colorizer'], ['readonly', 'filename', 'modified']]
let g:lightline.active.right = [['lineinfo'], ['percent'], ['fticon', 'fficon', 'fileencoding']]
let g:lightline.inactive.left = [['filename', 'modified']]
let g:lightline.inactive.right = [['lineinfo'], ['percent'], ['fticon']]

let g:lightline.component_function = {
  \ 'autosave': 'LightlineComponent_autosave',
  \ 'colorizer': 'LightlineComponent_colorizer',
  \ 'fficon': 'LightlineComponent_fficon',
  \ 'fticon': 'LightlineComponent_fticon',
  \ }

let g:lightline.tab.active = ['tabnum', 'filename', 'fticon', 'modified']
let g:lightline.tab.inactive = ['tabnum', 'filename', 'fticon', 'modified']

let g:lightline.tab_component_function = {
  \ 'fticon': 'LightlineTabComponent_fticon',
  \ }

let g:lightline.mode_map = {
  \ 'n': 'N',
  \ 'i': 'I',
  \ 'R': 'R',
  \ 'v': 'V',
  \ 'V': 'V-L',
  \ "\<C-v>": 'V-B',
  \ 'c': 'C',
  \ 's': 'S',
  \ 'S': 'S-L',
  \ "\<C-s>": 'S-B',
  \ 't': 'T',
  \ }

set laststatus=2
set noshowmode
set showtabline=2

call execute('source ' . g:setting_dir . '/lightline-photon.vim')
