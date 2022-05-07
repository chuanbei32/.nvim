local dap = require("dap")

-- 设置断点样式
vim.fn.sign_define("DapBreakpoint", {text = "⊚", texthl = "TodoFgFIX", linehl = "", numhl = ""})

-- -- 加载调试器配置
-- local dap_config = {
--     -- python = require("daps.python"),
--     -- go = require("daps.go")
--     php = require("daps.php")
-- }

-- -- 设置调试器
-- for dap_name, dap_options in pairs(dap_config) do
--     dap.adapters[dap_name] = dap_options.adapters
--     dap.configurations[dap_name] = dap_options.configurations
-- end

vim.cmd([[
	" 打断点
	nnoremap <leader>db <cmd>lua require'dap'.toggle_breakpoint()<cr>
	" 开启调试或到下一个断点处
	nnoremap <F5> <cmd>lua require'dap'.continue()<cr>
	" 单步进入执行（会进入函数内部，有回溯阶段）
	nnoremap <F6> <cmd>lua require'dap'.step_into()<cr>
	" 单步跳过执行（不进入函数内部，无回溯阶段）
	nnoremap <F7> <cmd>lua require'dap'.step_over()<cr>
	" 步出当前函数
	nnoremap <F8> <cmd>lua require'dap'.step_out()<cr>
	" 重启调试
	nnoremap <F9> <cmd>lua require'dap'.run_last()<cr>
	" 退出调试（关闭调试，关闭 repl, 关闭 ui, 清除内联文本）
	nnoremap <F10> "<cmd>lua require'dap'.close()<CR><cmd>lua require'dap.repl'.close()<CR><cmd>lua require'dapui'.close()<CR><cmd>DapVirtualTextForceRefresh<cr>
]])