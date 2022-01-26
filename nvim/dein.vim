" You should install dein to tool.
" Add, it must not be in $XDG_CONFIG_HOME;
" So you should change the path along your environment.
let s:path_plug=expand('~/tool/dein')
let s:path_dein=s:path_plug . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath+=' . s:path_dein

" The reason using min is faster a bit than dein#load_state.
" It is wrriten dein.vim/dein.txt
" This is early return
if !dein#min#load_state(s:path_plug)
  finish
endif

" the returned returns list of string of path
function! s:Get_tomls(dir) abort
  let l:enum_tomls=glob(a:dir . '/*.toml')
  return split(l:enum_tomls)
endfunction

function! s:Load_tomls(tomls,is_lazy) abort
  for l:toml in a:tomls
    call dein#load_toml(toml,{'lazy':a:is_lazy})
  endfor
endfunction

function! s:Load_global_plugins() abort
  let l:path_tomls=expand('$XDG_CONFIG_HOME/nvim/plugins/')
  let l:preload=s:Get_tomls(l:path_tomls . 'preload')
  call s:Load_tomls(l:preload,0)
  let l:lazyload=s:Get_tomls(l:path_tomls . 'lazyload')
  call s:Load_tomls(l:lazyload,1)
endfunction

function! s:Load_local_plugins() abort
  let l:path_tomls=g:dir_opened . '/.nvim-plugins/*/'
  let l:preload=s:Get_tomls(l:path_tomls . 'preload')
  call s:Load_tomls(l:preload,0)
  let l:lazyload=s:Get_tomls(l:path_tomls . 'lazyload')
  call s:Load_tomls(l:lazyload,1)
endfunction

call dein#begin(s:path_plug)

call s:Load_global_plugins()
call s:Load_local_plugins()

call dein#end()
call dein#save_state()
filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif
