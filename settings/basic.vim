" Look
set list
set listchars=eol:↵,tab:»-,trail:·,extends:»,precedes:«,nbsp:%
set nowrap
set number
set relativenumber

" Editor
let s:backup_dir = g:cache_dir . '/backups'
if !isdirectory(s:backup_dir)
  call mkdir(s:backup_dir)
endif

let s:swapfile_dir = g:cache_dir . '/swapfiles'
if !isdirectory(s:swapfile_dir)
  call mkdir(s:swapfile_dir)
endif

let s:undofile_dir = g:cache_dir . '/undofiles'
if !isdirectory(s:undofile_dir)
  call mkdir(s:undofile_dir)
endif

let &backupdir = s:backup_dir
let &directory = s:swapfile_dir
let &undodir = s:undofile_dir
let &viminfo = g:cache_dir . '/viminfo'

set backup
set mouse=a
set swapfile
set undofile
