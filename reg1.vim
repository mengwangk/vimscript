"------------------------------
" Basic Regular Expressions
" :h magic
" :h pattern-overview
"
execute "normal! gg/print\<cr>"
execute "normal! G?print\<cr>"

execute "normal! gg/for .\\+ in .\\+:\<cr>"

" First, execute takes a String, so the double backslashes we used turn into single backslashes by the time they get to normal!.
" Vim has four different "modes" of parsing regular expressions! The default mode requires a backslash before the + character to make it mean "1 or more of the preceding character" instead of "a literal plus sign".

" Very magic
"
"
execute "normal! gg" . '/\vfor .+ in .+:' . "\<cr>"


"----------------------------------------
" Grep Operator
"
" :h :grep
" :h :make
" :h quickfix-window

nnoremap <leader>g :grep -R something .<cr>

" <cword> vs <cWORD>
"
nnoremap <leader>g :exe "grep -R " . shellescape(expand("<cWORD>")) . " ."<cr>

:nnoremap <leader>g :execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

