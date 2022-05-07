vim.cmd([[ let g:dashboard_default_executive ='telescope' ]])

vim.cmd([[ autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2 ]])