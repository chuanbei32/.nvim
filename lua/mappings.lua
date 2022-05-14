-- mappings

local function map(mode, lhs, rhs, opts)
  local options = {
    noremap = true,
  }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  local ok, err = pcall(vim.api.nvim_set_keymap, mode, lhs, rhs, options)
  if not ok then
    vim.notify(err)
  end
end

vim.g.mapleader = "\\"

-- map('n', '<esc>', ':nohlsearch<cr><esc>')

map('n', '<tab>', 'V>', {noremap = false})
map('v', '<tab>', '>gv', {noremap = false})

map('n', '<s-tab>', 'V<', {noremap = false})
map('v', '<s-tab>', '<gv', {noremap = false})

map('n', 'gh', 'g^')
map('n', 'gH', '^')
map('n', 'gl', 'g$')
map('n', 'gL', 'g_')

map('n', 'gsj', '*')
map('n', 'gsk', '#')

-- 搜索光标下单词
map('c', '<leader>sw', '<c-r><c-w>')
-- 搜索替换光标下单词「单行」
map('n', '<leader>grl', ':s/<c-r><c-w>//<left>')
-- 搜索替换光标下单词「全局」
map('n', '<leader>grg', ':%s/<c-r><c-w>//g<left>')
-- 取消高亮
map('n', '<leader>nhs', ':nohlsearch<cr>')
-- 清楚行尾空格
map('n', '<leader>fws', [=[ :%s/\\\@<!\s\+$//<cr> ]=])
-- 开启插入模式下粘贴模式
map('n', '<leader>isp', ':set paste<cr>')


-- terminal
map('n', '<leader>tm', ':terminal<cr>')

-- shell
map('n', '<leader>sh', ':shell<cr>')

-- shada
-- local shada_dir = vim.fn.stdpath("data") .. "/shada"
-- map('n', '<leader>sds', ':wshada!<cr>')
-- map('n', '<leader>sdr', ':rshada!<cr>')

-- session
local session_dir = vim.fn.stdpath("data") .. "/session"
map('n', '<leader>ss', ':mksession! ' .. session_dir .. '/.vim<left><left><left><left>')
map('n', '<leader>sr', ':source ' .. session_dir .. '/')

-- mark

-- register/macro

-- fold

-- change

-- jump

-- buffer
map('n', '<leader>bl', ':buffers<cr>')
map('n', '<leader>bn', ':bnext<cr>')
map('n', '<leader>bp', ':bprevious<cr>')
map('n', '<leader>bd', ':bdelete<space>')
map('n', '<leader>bo', ':BufferOnly<cr>')
map('n', '<leader>bc', ':BufferCurrent<cr>')
map('n', '<leader>bb', ':buffer<space>')
map('n', '<leader>bx', '<c-^>')
map('n', '<leader>br', ':bufdo e<cr>')
map('n', '<leader>be', ':e<cr>')
map('n', '<leader>bsl', ':sbuffer<space>')
map('n', '<leader>bsvl', ':vertical sbuffer<space>')
map('n', '<leader>bsvr', ':vertical belowright sbuffer<space>')

-- window
map('n', '<leader>wo', '<c-w>o')
map('n', '<leader>ws', '<c-w>s')
map('n', '<leader>wv', '<c-w>v')
map('n', '<leader>wmh', '<c-w>_')
map('n', '<leader>wmw', [=[ <c-w>\| ]=])
map('n', '<leader>w=', '<c-w>+')
map('n', '<leader>w-', '<c-w>-')
map('n', '<leader>w,', '<c-w>>')
map('n', '<leader>w.', '<c-w><')
map('n', '<leader>wd', '<c-w>=')
map('n', '<leader>ww', '<c-w>w')
map('n', '<leader>wr', '<c-w>r')
map('n', '<leader>wc', '<c-w>c')
map('n', '<leader>wq', '<c-w>q')
map('n', '<leader>wt', '<c-w>t')
map('n', '<leader>wb', '<c-w>b')
map('n', '<leader>wl', '<c-w>l')
map('n', '<leader>wh', '<c-w>h')
map('n', '<leader>wk', '<c-w>k')
map('n', '<leader>wj', '<c-w>j')
map('n', '<leader>wH', '<c-w>H')
map('n', '<leader>wJ', '<c-w>J')
map('n', '<leader>wK', '<c-w>K')
map('n', '<leader>wL', '<c-w>L')

-- tab
map('n', '<leader>tfe', ':tabedit<space>')
map('n', '<leader>tff', ':tabfind<space>')
map('n', '<leader>tfn', ':tabnew<space>')
map('n', '<leader>tl', ':tabs<cr>')
map('n', '<leader>tn', ':tabnext<cr>')
map('n', '>', ':tabnext<cr>')
map('x', '>', '>gv|')
map('n', '<leader>tp', ':tabprev<cr>')
map('n', '<', ':tabprev<cr>')
map('x', '<', '<gv')
map('n', '<leader>tc', ':tabclose<cr>')
map('n', '<leader>to', ':tabonly<cr>')
map('n', '<leader>1', '1gt<cr>')
map('n', '<leader>2', '2gt<cr>')
map('n', '<leader>3', '3gt<cr>')
map('n', '<leader>4', '4gt<cr>')
map('n', '<leader>5', '5gt<cr>')
map('n', '<leader>6', '6gt<cr>')
map('n', '<leader>7', '7gt<cr>')
map('n', '<leader>8', '8gt<cr>')
map('n', '<leader>9', '9gt<cr>')
map('n', '<leader>0', '10gt<cr>')

-- quickfix
map('n', '<leader>qo', ':copen 10<cr>')
map('n', '<leader>ql', ':clast<cr>')
map('n', '<leader>qf', ':cfirst<cr>')
map('n', '<leader>qn', ':cnext<cr>')
map('n', '<leader>qp', ':cprevious<cr>')
map('n', '<leader>qc', ':cclose<cr>')
map('n', '<leader>qe', ':cc<cr>')












