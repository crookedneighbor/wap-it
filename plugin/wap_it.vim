" Find nearest it and replace it with it.only
function! WapIt()
  " Find nearest it above from cursor row
  exe "normal ?^[ ]*it\<CR>"
  " Grab line
  let s:line=getline(".")
  " Check for existence of only
  if s:line =~ "it("
    :execute "normal! ^ct(it.only\<esc>\<C-O>"
  else
    :execute "normal! ^f.dt(\<C-O>"
  endif
endfunction

" Find nearest describe and replace it with describe.only
function! WapDescribe()
  " Find nearest describe above from cursor row
  exe "normal ?^[ ]*describe\<CR>"
  " Grab line
  let s:line=getline(".")
  " Check for existence of only
  if s:line =~ "describe("
    :execute "normal! ^ct(describe.only\<esc>\<C-O>"
  else
    :execute "normal! ^f.dt(\<C-O>"
  endif
endfunction

" Find nearest context and replace it with context.only
function! WapContext()
  " Find nearest context above from cursor row
  exe "normal ?^[ ]*context\<CR>"
  " Grab line
  let s:line=getline(".")
  " Check for existence of only
  if s:line =~ "context("
    :execute "normal! ^ct(context.only\<esc>\<C-O>"
  else
    :execute "normal! ^f.dt(\<C-O>"
  endif
endfunction

:nmap ,wi :call WapIt()<CR>
:nmap ,wd :call WapDescribe()<CR>
:nmap ,wc :call WapContext()<CR>
