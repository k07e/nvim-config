packadd vital.vim

function! V_hslToRgbHex()
  let l:Color = vital#vital#new().import('Color')
  let [_, l:lnum_start, l:row_start, _] = getpos('''<')
  let [_, l:lnum_end, l:row_end, _] = getpos('''>')
  call execute('normal! `<v`>y"')
  let rgb_hex = Color.parse(@@).as_rgb_hex()
  call cursor(l:lnum_start, l:row_start)
  call execute('normal! v')
  call cursor(l:lnum_end, l:row_end)
  call execute('normal! ' . l:rgb_hex . '')
endfunction

function! V_rgbHexToHsl()
  let l:Color = vital#vital#new().import('Color')
  let [_, l:lnum_start, l:row_start, _] = getpos('''<')
  let [_, l:lnum_end, l:row_end, _] = getpos('''>')
  call execute('normal! `<v`>y"')
  let hsl = Color.parse(@@).as_hsl_str()
  call cursor(l:lnum_start, l:row_start)
  call execute('normal! v')
  call cursor(l:lnum_end, l:row_end)
  call execute('normal! ' . l:hsl . '')
endfunction

vnoremap <C-k>h :call V_rgbHexToHsl()<CR>
vnoremap <C-k>r :call V_hslToRgbHex()<CR>
