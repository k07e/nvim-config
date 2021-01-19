packadd lightline.vim
set laststatus=2
set noshowmode
set showtabline=2

function! TransparentLightlineMiddle()
  highlight LightlineMiddle_normal ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_active ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_insert ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_replace ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_visual ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_inactive ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_command ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_select ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_tabline ctermbg=NONE guibg=NONE
  highlight LightlineMiddle_terminal ctermbg=NONE guibg=NONE
endfunction

augroup transparent_lightline_middle
  autocmd!
  autocmd VimEnter * call TransparentLightlineMiddle()
augroup END
