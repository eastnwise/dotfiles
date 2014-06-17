"--------------------
"Markdown
"--------------------

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" "These languages have their own tab/indent settings.
" au FileType cpp    setl ts=2 sw=2 sts=2
" au FileType ruby   setl ts=2 sw=2 sts=2
" au FileType yaml   setl ts=2 sw=2 sts=2
" au FileType html   setl ts=2 sw=2 sts=2
" au FileType lua    setl ts=2 sw=2 sts=2
" au FileType haml   setl ts=2 sw=2 sts=2
" au FileType sass   setl ts=2 sw=2 sts=2
" au FileType scss   setl ts=2 sw=2 sts=2
" au FileType make   setl ts=4 sw=4 sts=4 noet
" au FileType gitcommit setl spell


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

