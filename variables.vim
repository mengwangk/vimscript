"--------------------------
" Numbers and Floats
" h Float
" h floating-point-precision
"
echom 100
echom 0xff
echo 010
echo 100.1
echo 5.45e+3
echo 15.45e-2
echo 15.3e9
echo 2 * 2.0
echo 3 / 2
echo 3 / 2.0

echom 10.2
echo 3 / 2.0

"--------------------------
" Strings
" :h String
" :h expr-quote
" :h literal-string
"
echom "Hello"
echom "Hello, " + "world"
echom "3 mice" + "2 cats"
echom 10 + "10.10"

echom "Hello, " . "world"
echom 10 . "foo"

" Don't rely on Vim's coercion because at some point you will regret it.

echom "foo \"bar\""
echom "foo\\bar"
echo "foo\nbar"
echom "foo\nbar"


echom '\n\\'

echom 'That''s enough.'

if "foo"
  echo "yes"
else
  echo "no"
end

" -----------------------------------
" String Functions
"
echom strlen("foo")
echom len("foo")
echo split("one two three")
echo split("one,two,three", ",")
echo join(["foo", "bar"], "...")
echo join(split("foo bar"), ";")
echom tolower("Foo")
echom toupper("Foo")


