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

-- map('n', '<esc>', '<cmd>nohlsearch<cr><esc>')

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
map('n', '<leader>nhs', '<cmd>nohlsearch<cr>')
-- 清楚行尾空格
map('n', '<leader>fws', [=[ <cmd>%s/\\\@<!\s\+$//<cr> ]=])
-- 开启插入模式下粘贴模式
map('n', '<leader>isp', '<cmd>set paste<cr>')


-- terminal
map('n', '<leader>tm', '<cmd>terminal<cr>')

-- shell
map('n', '<leader>sh', '<cmd>shell<cr>')

-- shada
-- local shada_dir = vim.fn.stdpath("data") .. "/shada"
-- map('n', '<leader>sds', '<cmd>wshada!<cr>')
-- map('n', '<leader>sdr', '<cmd>rshada!<cr>')

-- session
-- local session_dir = vim.fn.stdpath("data") .. "/session"
-- map('n', '<leader>ss', ':mksession! ~/.vim/__session/.vim<left><left><left><left>')
-- map('n', '<leader>sr', ':source ~/.vim/__session/')

-- mark

-- register/macro

-- fold

-- change

-- jump

-- buffer
map('n', '<leader>bl', '<cmd>buffers<cr>')
map('n', '<leader>bn', '<cmd>bnext<cr>')
map('n', '<leader>bp', '<cmd>bprevious<cr>')
map('n', '<leader>bd', ':bdelete<space>')
map('n', '<leader>bo', '<cmd>BufferOnly<cr>')
map('n', '<leader>bc', '<cmd>BufferCurrent<cr>')
map('n', '<leader>bb', ':buffer<space>')
map('n', '<leader>bx', '<c-^>')
map('n', '<leader>br', '<cmd>bufdo e<cr>')
map('n', '<leader>be', '<cmd>e<cr>')
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
map('n', '<leader>tl', '<cmd>tabs<cr>')
map('n', '<leader>tn', '<cmd>tabnext<cr>')
map('n', '>', '<cmd>tabnext<cr>')
map('x', '>', '>gv|')
map('n', '<leader>tp', '<cmd>tabprev<cr>')
map('n', '<', '<cmd>tabprev<cr>')
map('x', '<', '<gv')
map('n', '<leader>tc', '<cmd>tabclose<cr>')
map('n', '<leader>to', '<cmd>tabonly<cr>')
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
map('n', '<leader>qo', '<cmd>copen 10<cr>')
map('n', '<leader>ql', '<cmd>clast<cr>')
map('n', '<leader>qf', '<cmd>cfirst<cr>')
map('n', '<leader>qn', '<cmd>cnext<cr>')
map('n', '<leader>qp', '<cmd>cprevious<cr>')
map('n', '<leader>qc', '<cmd>cclose<cr>')
map('n', '<leader>qe', '<cmd>cc<cr>')












