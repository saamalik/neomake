" vim: ts=4 sw=4 et

function! neomake#makers#rust#EnabledMakers()
    return ['rustc']
endfunction

function! neomake#makers#rust#cargo()
    return {
        \ 'args': ['build'],
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }
endfunction

function! neomake#makers#rust#rustc()
    return {
        \ 'args': ['-o', neomake#utils#DevNull()],
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }
endfunction

"TODO: when #47 is fulfiled, update this to be cleaner
let g:neomake_cargo_maker = neomake#makers#rust#cargo()
