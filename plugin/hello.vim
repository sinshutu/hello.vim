scriptencoding utf-8

" 読み込み制御用の変数がすでに存在していたら、もうすでに読み込み済みと判断して終了する
if exists('g:loaded_hello')
    finish
endif
let g:loaded_hello = 1

let s:save_cpo = &cpo
set cpo&vim

nmap z :call hello#helloworld()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
