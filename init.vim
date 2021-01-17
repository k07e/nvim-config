let s:this_file   = resolve(expand('<sfile>:p'))
let s:this_dir    = fnamemodify(s:this_file, ':h')

let g:base_dir    = s:this_dir . '/.nvim-config'
let g:cache_dir   = g:base_dir . '/cache'
let g:plugins_dir = g:base_dir . '/plugins'
let g:core_dir    = g:base_dir . '/core'

call execute('source ' . g:plugins_dir . '/minpac.vim')
