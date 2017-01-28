scriptencoding utf-8

" 読み込み制御用の変数が存在していないのであれば、
" plugin以下のスクリプトが読み込まれていないと判断できるため、終了する。
if !exists('g:loaded_hello')
    finish
endif
let g:loaded_hello = 1

let s:save_cpo = &cpo
set cpo&vim

function! hello#helloworld()
  echo "Hello World!"
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
