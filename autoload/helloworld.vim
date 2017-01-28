scriptencoding utf-8

" 読み込み制御用の変数が存在していないのであれば、
" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:loaded_hellobeautifulworld')
    finish
endif
let g:loaded_hellobeautifulworld = 1

let s:save_cpo = &cpo
set cpo&vim

function! hellobeautifulworld#helloworld()
  echo "Hello World!"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
