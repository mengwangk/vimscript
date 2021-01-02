"-------------------------
" Execute
" h execute
" h leftabove

execute "echom 'Hello, world!'"
" execute "rightbelow vsplit " . bufname("#")

"-------------------------
" Normal
"
normal G
normal! G

" not working
" normal! /kkk <cr>
"

"----------------------------------------
" Execute Normal!
"

execute "normal! gg/foo\<cr>dd"
execute "normal! mqA;\<esc>`q"

