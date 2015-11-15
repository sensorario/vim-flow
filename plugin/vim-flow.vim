" ------------------------------------------------------------------------------
" Vim Flow                                                               {{{
"
" Author: Simone Gentili <sensorario@gmail.com>
"
" Description:
" The git flow directly from vim
"
" Requires: Vim, Git
"
" License: MIT
"
" }}}
" ------------------------------------------------------------------------------

command! VimFlowInit :call g:VimFlowInitFunction()<CR>

function! VimFlowInitFunction()
    exec '!clear'
    echo 'This is the git flow by sensorario'
endfunction

