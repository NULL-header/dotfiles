inoremap <silent> jj <ESC>
nnoremap : q:
nnoremap q :bd<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap gh <C-w>h
nnoremap gl <C-w>l
" for alacritty
autocmd VimEnter * imap <Nul> <C-Space>

" setting tab
set expandtab
set tabstop=2
set shiftwidth=2

" setting UI
set number
set showcmd
set cursorline
set wildmenu
set termguicolors

" setting system
set nobackup
set noswapfile
set hlsearch

" setting clipboard

" for linux but very heavy
" set clipboard+=unnamedplus
"
" for wsl but very heavy
" let g:clipboard = {
" \ 'name': 'myClipboard',
" \ 'copy': {
" \    '+': 'win32yank.exe -i',
" \    '*': 'win32yank.exe -i',
" \  },
" \ 'paste': {
" \    '+': 'win32yank.exe -o',
" \    '*': 'win32yank.exe -o',
" \ },
" \ 'cache_enabled': 1,
" \ }
" set clipboard+=unnamedplus

" setting Plugins
set modifiable " for Plug action on shorthund
set write
