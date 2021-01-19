packadd lightline.vim
set laststatus=2
set noshowmode
set showtabline=2

augroup TransparentLightlineMiddle
  autocmd!
  autocmd VimEnter * highlight LightlineMiddle_normal ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_active ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_insert ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_replace ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_visual ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_inactive ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_command ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_select ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_tabline ctermbg=NONE guibg=NONE
  autocmd VimEnter * highlight LightlineMiddle_terminal ctermbg=NONE guibg=NONE
augroup END
