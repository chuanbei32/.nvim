require("toggleterm").setup({
    size = 12
})

vim.cmd([[
    autocmd TermEnter term://*toggleterm#*
        \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

    nnoremap <leader>tm <Cmd>exe v:count1 . "ToggleTerm"<CR>
    inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
]])

