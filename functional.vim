" h type()
"

function! Sorted(l)
    let new_list = deepcopy(a:l)
    call sort(new_list)
    return new_list
endfunction

function! Reversed(l)
    let new_list = deepcopy(a:l)
    call reverse(new_list)
    return new_list
endfunction

function! Append(l, val)
    let new_list = deepcopy(a:l)
    call add(new_list, a:val)
    return new_list
endfunction

function! Assoc(l, i, val)
    let new_list = deepcopy(a:l)
    let new_list[a:i] = a:val
    return new_list
endfunction

function! Pop(l, i)
    let new_list = deepcopy(a:l)
    call remove(new_list, a:i)
    return new_list
endfunction

function! Mapped(fn, l)
    let new_list = deepcopy(a:l)
    call map(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

function! Filtered(fn, l)
    let new_list = deepcopy(a:l)
    call filter(new_list, string(a:fn) . '(v:val)')
    return new_list
endfunction

function! Removed(fn, l)
    let new_list = deepcopy(a:l)
    call filter(new_list, '!' . string(a:fn) . '(v:val)')
    return new_list
endfunction


echo Sorted([3, 2, 4, 1])
let Myfunc = function("Append")
echo Myfunc([1, 2], 3)

let funcs = [function("Append"), function("Pop")]
echo funcs[1](['a', 'b', 'c'], 1)

let mylist = [[1, 2], [3, 4]]
echo Mapped(function("Reversed"), mylist)

let mylist = [[1, 2], [], ['foo'], []]
echo Filtered(function('len'), mylist)

let mylist = [[1, 2], [], ['foo'], []]
echo Removed(function('len'), mylist)
