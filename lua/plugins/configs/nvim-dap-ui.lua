local dapui = require("dapui")

dapui.setup({
        sidebar = {
            -- dapui 的窗口设置在右边
            position = "right"
        }
})

local dap = require("dap")

-- 如果开启或关闭调试，则自动打开或关闭调试界面
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end

vim.cmd([[
	nnoremap <leader>du <cmd>lua require'dapui'.toggle()<cr>
]])