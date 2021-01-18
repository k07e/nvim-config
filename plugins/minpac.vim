let s:this_file   = resolve(expand('<sfile>:p'))
let s:this_dir = fnamemodify(s:this_file, ':h')

let &packpath = g:cache_dir

packadd minpac

function! PackInit() abort
  packadd minpac
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Look
  call minpac#add('axvr/photon.vim', {'type': 'opt'})
  call minpac#add('kjwon15/vim-transparent', {'type': 'opt'})

  " Git
  call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
  call minpac#add('airblade/vim-gitgutter', {'type': 'opt'})

  " Goyo.vim
  call minpac#add('junegunn/goyo.vim', {'type': 'opt'})
  call minpac#add('junegunn/limelight.vim', {'type': 'opt'})

  " Editor
  call minpac#add('editorconfig/editorconfig-vim', {'type': 'opt'})
  call minpac#add('mattn/vim-lexiv', {'type': 'opt'})
endfunction

if !exists('g:loaded_minpac')
  echo 'Installing minpac ...'
  call system('git clone https://github.com/k-takata/minpac.git ' . g:cache_dir . '/pack/minpac/opt/minpac')
  echo 'Done!'
  call PackInit()
  call minpac#update('', {'do': 'call execute(''source ' . s:this_file . ' | quit'')'})
  call feedkeys(' ')
  finish
else
  call PackInit()

  " Look
  call execute('source ' . g:plugins_dir . '/photon.vim')
  call execute('source ' . g:plugins_dir . '/transparent.vim')

  " Git
  call execute('source ' . g:plugins_dir . '/fugitive.vim')
  call execute('source ' . g:plugins_dir . '/gitgutter.vim')

  " Goyo.vim
  call execute('source ' . g:plugins_dir . '/goyo.vim')
  call execute('source ' . g:plugins_dir . '/limelight.vim')

  " Editor
  call execute('source ' . g:plugins_dir . '/editorconfig.vim')
  call execute('source ' . g:plugins_dir . '/lexiv.vim')
endif

command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
