echo {'a': 1, 100: 'foo'}
echo {'a': 1, 100: 'foo',}


echo {'a': 1, 100: 'foo',}['a']
echo {'a': 1, 100: 'foo',}[100]


echo {'a': 1, 100: 'foo',}.a
echo {'a': 1, 100: 'foo',}.100


let foo = {'a': 1}
let foo.a = 100
let foo.b = 200
echo foo


let test = remove(foo, 'a')
unlet foo.b
echo foo
echo test


echom get({'a': 100}, 'a', 'default')
echom get({'a': 100}, 'b', 'default')


echom has_key({'a': 100}, 'a')
echom has_key({'a': 100}, 'b')


echo items({'a': 100, 'b': 200})

echo items({'a': 100, 'b': 200})
echo items({'a': 100, 'b': 200})


echo keys({'a': 100, 'b': 200})
echo values({'a': 100, 'b': 200})

