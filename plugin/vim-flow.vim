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

command! VimFlowInfo :echo "A Vim plugin for the git flow"
command! VimFlowFeatureList :!git branch | grep 'feature'

command! VimFlowFeature :call VimFlowFeatureFunction()<CR>
function! VimFlowFeatureFunction()
    let feature = input('Feature: ')
    let feature_name = 'feature/' . feature
    let command = ':!git checkout -b ' . feature_name . ' dev'
    exe command
endfunction

command! VimFlowAddFeature :call VimFlowAddFeatureFunction()<CR>
function! VimFlowAddFeatureFunction()
    let feature = input('Enter the name of the feature to add: ')
    let feature_name = 'feature/' . feature
    let command = ':!git merge ' . feature
    exe ':!git checkout dev'
    exe command
endfunction

command! VimFlowHotfix :call VimFlowHotfixFunction()<CR>
function! VimFlowHotfixFunction()
    let hotfix = input('Hotfix: ')
    let hotfix_name = 'hotfix/' . hotfix
    let command = ':!git checkout -b ' . hotfix_name . ' master'
    exe command
endfunction

command! VimFlowRelease :call VimFlowReleaseFunction()<CR>
function! VimFlowReleaseFunction()
    let release = input('Release: ')
    let release_name = 'release/' . release
    let command = ':!git checkout -b ' . release_name . ' dev'
    exe command
endfunction
