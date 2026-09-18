nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <Leader>f :lua require('conform').format({ async = true, lsp_fallback = true })<CR>
nnoremap <silent> <Leader>e :Oil<CR>
nnoremap <silent> <Leader>ff :FzfLua files<CR>
nnoremap <silent> <Leader>fg :FzfLua live_grep<CR>
nnoremap <silent> <Leader>fb :FzfLua buffers<CR>
nnoremap <silent> <Leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <Leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <Leader>d :lua vim.diagnostic.open_float()<CR>

nnoremap <C-[> :pop<CR>
