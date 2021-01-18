let s:this_file   = resolve(expand('<sfile>:p'))
let s:this_dir    = fnamemodify(s:this_file, ':h')

function! IsSymlink(path)
  let l:expanded_path = expand(a:path)
  let l:resolved_path = resolve(l:expanded_path)
  return l:expanded_path != l:resolved_path
endfunction

let g:base_dir    = s:this_dir . (!IsSymlink('<sfile>:p') ? '/.nvim-config' : '')
let g:cache_dir   = g:base_dir . '/cache'
let g:plugins_dir = g:base_dir . '/plugins'
let g:core_dir    = g:base_dir . '/core'

call execute('source ' . g:plugins_dir . '/minpac.vim')
