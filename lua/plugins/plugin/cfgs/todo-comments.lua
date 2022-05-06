require("todo-comments").setup {}

vim.cmd([[
    nnoremap <leader>tdf <cmd>TodoQuickFix<cr>
    nnoremap <leader>tdl <cmd>TodoLocList<cr>
    nnoremap <leader>tdr <cmd>TodoTrouble<cr>
    nnoremap <leader>tde <cmd>TodoTelescope<cr>
]])