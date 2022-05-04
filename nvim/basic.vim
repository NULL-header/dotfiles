inoremap <silent> jj <ESC>
nnoremap : q:
nnoremap q :bd<CR>
nnoremap <C-w> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap gh <C-w>h
nnoremap gl <C-w>l
" for alacritty
autocmd VimEnter * imap <Nul> <C-Space>

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
set clipboard+=unnamedplus
" let g:clipboard =unnamedplus

" setting Plugins
set modifiable " for Plug action on shorthund
set write
