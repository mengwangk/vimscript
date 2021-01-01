"--------------------------

"--------------------------
" Function Arguments
" :h function-argument
" :h local-variables
"
function AssignGood(foo)
  let foo_tmp = a:foo
  let foo_tmp = "Yep"
  echom foo_tmp
endfunction
:call AssignGood("test")

function Varg2(foo, ...)
  echom a:foo
  echom a:0
  echom a:1
  echo a:000
endfunction
call Varg2("a", "b","c")

function Varg(...)
  echom a:0
  echom a:1
  echo a:000
endfunction

call Varg("a", "b")

function DisplayName(name)
  echom "Hello!  My name is:"
  echom a:name
endfunction

call DisplayName("alpha2phi")


"--------------------------
" :h :call
" :h E124
" :h return
" help internal-variables

function TextwidthIsTooWide()
  if &l:textwidth ># 80
    return 1
  endif
endfunction

set textwidth=80
if TextwidthIsTooWide()
  echom "WARNING: Wide text!"
endif

setlocal textwidth=100
if TextwidthIsTooWide()
  echom "WARNING: Wide text!"
endif


" ----------------

function GetMeow()
  return "Meow String!"
endfunction

function Meow()
  echom "Meow!"
endfunction

echom GetMeow()
echo Meow()

" echo &textwidth
" echo &rtp
" let &textwidth = &textwidth + 10
" let &l:number = 1
" let @a = "hello!"
" echo @a
" echo @"
" echo @/

" let b:hello = "world"
" echo b:hello
" echom "foo" + echom "baz"

" echom "hello" + 10
" echom "10hello" + 10
" echom "hello10" + 10

" " ==? - case insensitive
" " ==# - case sensitive
" set noignorecase
" if "foo" ==? "FOO"
"     echom "first"
" elseif "foo" ==? "foo"
"     echom "second"
" endif
