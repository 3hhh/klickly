" file name: '%:p'
" file name without extension: '%:r'
" more: https://vim.fandom.com/wiki/Get_the_name_of_the_current_file
noremap <silent> <F7> :w<cr>:!lilypond '%:p' && evince '%:r'.pdf &<cr>
noremap <silent> <F8> :!killall timidity &> /dev/null ; timidity -ia '%:r'.midi &<cr>
