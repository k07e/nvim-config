let s:this_file   = resolve(expand('<sfile>:p'))
let s:this_dir    = fnamemodify(s:this_file, ':h')

function! IsSymlink(path)
  let l:expanded_path = expand(a:path)
  let l:resolved_path = resolve(l:expanded_path)
  return l:expanded_path != l:resolved_path
endfunction

let g:base_dir    = s:this_dir . (($NVIM_CONFIG_INITRC != '' && !IsSymlink($NVIM_CONFIG_INITRC)) ? '/.nvim-config' : '')
let g:cache_dir   = g:base_dir . '/cache'
let g:setting_dir = g:base_dir . '/settings'

call execute('source ' . g:setting_dir . '/basic.vim')
call execute('source ' . g:setting_dir . '/minpac.vim')
