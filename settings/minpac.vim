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
  call minpac#add('itchyny/lightline.vim', {'type': 'opt'})
    call minpac#add('k07e/lightline-photon.vim', {'type': 'opt'})
  call minpac#add('ryanoasis/vim-devicons', {'type': 'opt'})
  call minpac#add('mhinz/vim-startify', {'type': 'opt'})
  call minpac#add('Yggdroot/indentLine', {'type': 'opt'})
  call minpac#add('chrisbra/Colorizer', {'type': 'opt'})

  " Git
  call minpac#add('tpope/vim-fugitive', {'type': 'opt'})
    call minpac#add('junegunn/gv.vim', {'type': 'opt'})
  call minpac#add('airblade/vim-gitgutter', {'type': 'opt'})

  " Goyo.vim
  call minpac#add('junegunn/goyo.vim', {'type': 'opt'})
  call minpac#add('junegunn/limelight.vim', {'type': 'opt'})

  " Editor
  call minpac#add('editorconfig/editorconfig-vim', {'type': 'opt'})
  call minpac#add('mattn/vim-lexiv', {'type': 'opt'})
  call minpac#add('prabirshrestha/asyncomplete.vim', {'type': 'opt'})
    call minpac#add('prabirshrestha/asyncomplete-lsp.vim', {'type': 'opt'})
  call minpac#add('tpope/vim-commentary', {'type': 'opt'})
  call minpac#add('sheerun/vim-polyglot', {'type': 'opt'})
  call minpac#add('ctrlpvim/ctrlp.vim', {'type': 'opt'})
  call minpac#add('hrsh7th/vim-vsnip', {'type': 'opt'})
    call minpac#add('hrsh7th/vim-vsnip-integ', {'type': 'opt'})
  call minpac#add('liuchengxu/vim-which-key', {'type': 'opt'})

  " Language Server
  call minpac#add('prabirshrestha/vim-lsp', {'type': 'opt'})
    call minpac#add('mattn/vim-lsp-settings', {'type': 'opt'})
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
  call execute('source ' . g:setting_dir . '/photon.vim')
  call execute('source ' . g:setting_dir . '/transparent.vim')
  call execute('source ' . g:setting_dir . '/lightline.vim')
  call execute('source ' . g:setting_dir . '/devicons.vim')
  call execute('source ' . g:setting_dir . '/startify.vim')
  call execute('source ' . g:setting_dir . '/indentLine.vim')
  call execute('source ' . g:setting_dir . '/Colorizer.vim')

  " Git
  call execute('source ' . g:setting_dir . '/fugitive.vim')
  call execute('source ' . g:setting_dir . '/gitgutter.vim')

  " Goyo.vim
  call execute('source ' . g:setting_dir . '/goyo.vim')
  call execute('source ' . g:setting_dir . '/limelight.vim')

  " Editor
  call execute('source ' . g:setting_dir . '/editorconfig.vim')
  call execute('source ' . g:setting_dir . '/lexiv.vim')
  call execute('source ' . g:setting_dir . '/asyncomplete.vim')
  call execute('source ' . g:setting_dir . '/commentary.vim')
  call execute('source ' . g:setting_dir . '/polyglot.vim')
  call execute('source ' . g:setting_dir . '/ctrlp.vim')
  call execute('source ' . g:setting_dir . '/which-key.vim')

  " Language Server
  call execute('source ' . g:setting_dir . '/lsp.vim')
endif

function! PostPackUpdate()
endfunction

command! PackUpdate call execute('source ' . s:this_file) | call PackInit() | call minpac#update('', {'do': 'call execute(''source ' . s:this_file . ' | quit | call PostPackUpdate()'')'})
command! PackClean  call execute('source ' . s:this_file) | call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
