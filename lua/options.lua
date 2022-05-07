vim.opt.termguicolors = true

vim.cmd('filetype plugin indent on ')

vim.cmd('syntax enable on')

vim.cmd('colorscheme gruvbox')

vim.opt.background = 'dark'

-- path
-- vim.cmd('set path+=**')
-- vim.cmd('set packpath+=**')
-- vim.cmd('set runtimepath+=**')
-- 备份
local backup_dir = vim.fn.stdpath('cache') .. '/backup'
local backup_stat = pcall(os.execute, 'mkdir -p ' .. backup_dir)
if backup_stat then
    vim.opt.backupext = '.backup'
    vim.opt.backupdir = backup_dir
end
-- 撤销
local undo_dir = vim.fn.stdpath('cache') .. '/undo'
local undo_stat = pcall(os.execute, 'mkdir -p ' .. undo_dir)
if undo_stat then
    vim.opt.undofile = true
    vim.opt.undodir = undo_dir
end
-- 交换
local swap_dir = vim.fn.stdpath('cache') .. '/swap'
local swap_stat = pcall(os.execute, 'mkdir -p ' .. swap_dir)
if swap_stat then
    vim.opt.swapfile = true
    -- vim.opt.swapsync = ''
    vim.opt.directory = swap_dir
end
-- session
vim.opt.sessionoptions = 'blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal'
-- shada/viminfo
--tags
-- shell/terminal ” 终端
vim.opt.shell = 'zsh'
vim.opt.ttyfast = true
-- 编码
vim.opt.encoding = 'utf-8' -- 内部使用的编码方式
vim.opt.fileencoding = 'utf-8' -- 多字节文本的文件编码
vim.opt.fileencodings = 'utf-8' -- 参与自动检测的字符编码
vim.opt.makeencoding = 'utf-8' -- 外部 make/grep 命令使用的编码
vim.opt.printencoding = 'utf-8' -- 用于打印的编码方式
vim.opt.termencoding = 'utf-8' -- 终端使用的编码方式
-- 声音
vim.opt.belloff = 'all' -- 不响铃时事件
vim.opt.errorbells = false -- 错误信息时响铃
vim.opt.visualbell = true -- 使用可视铃声而不是响铃
-- 文本行
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.wrap = true
vim.opt.virtualedit = 'all'
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'screenline,number'
vim.opt.sidescrolloff = 6
vim.opt.sidescroll = 3
vim.opt.linebreak = true
-- 命令行
vim.opt.wildmenu = false
vim.opt.wildmode = 'list,longest,full'
vim.opt.wildignorecase = true
vim.opt.wildignorecase = false
vim.opt.showcmd = true
vim.opt.history = 100
-- 状态行
vim.opt.ruler = true
vim.opt.showmode = false
vim.opt.laststatus = 2
-- 模式行
vim.opt.modeline = true
vim.opt.modelines = 5
-- 文本列
vim.opt.cursorcolumn = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80,120,180'
vim.opt.scrolloff = 3
vim.opt.scrolljump = 3
vim.opt.signcolumn = 'yes'
-- 缩进
vim.opt.autoindent = true -- 根据上一行决定新行的缩进
vim.opt.copyindent = true -- 使得 'autoindent' 使用已有的缩进结构
vim.opt.breakindent = true -- 回绕行重复缩进
vim.opt.breakindentopt = '' -- 'breakindent' 设置
vim.opt.shiftwidth = 4 -- (自动) 缩进使用的步进单位，以空白数目计
vim.opt.shiftround = true -- 缩进列数对齐到 shiftwidth 的整数倍
vim.opt.expandtab = true -- 键入 <Tab> 时使用空格
vim.opt.smarttab = true -- 插入 <Tab> 时使用 'shiftwidth'
vim.opt.tabstop = 4 -- <Tab> 在文件里使用的空格数
vim.opt.softtabstop = 4 -- 编辑时 <Tab> 使用的空格数
vim.opt.vartabstop = '' -- 用于 <Tab> 对应空格数的列表
vim.opt.varsofttabstop = '' -- 键入 <Tab> 时生成空格数的列表
-- 折叠
vim.opt.foldenable = true
vim.opt.foldmethod = 'syntax'
vim.opt.foldlevel = 2 -- 当折叠级别高于此值时关闭折叠
vim.opt.foldlevelstart = 2 -- 'foldlevel' 的设置
vim.opt.foldnestmax = 3 -- 最大折叠深度
vim.opt.foldminlines = 5 -- 折叠关闭所需的最少行数
-- 补全
-- vim.cmd('set complete-=t.i')
-- vim.cmd('set completeopt-=preview')
-- 匹配
vim.opt.matchpairs = '(:),{:},[:],<:>'
vim.opt.matchtime = 1
vim.opt.showmatch = true -- 插入括号时短暂跳转到匹配的括号
-- 超时
vim.opt.timeout = false
vim.opt.ttimeout = false
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 300
-- 查找/替换
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrapscan = false
vim.opt.magic = true
vim.opt.suffixes = '.backup'
vim.opt.gdefault = false
-- 窗口
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.winminheight = 0
vim.opt.winminwidth = 0

vim.opt.showtabline = 2
vim.opt.list = true
-- vim.cmd('set listchars=eol:$')
vim.opt.autoread = true
vim.opt.confirm = true
vim.opt.hidden = true
vim.opt.fileformat = 'unix'
vim.opt.fileformats = 'unix,dos,mac'
vim.opt.report = 0
vim.opt.lazyredraw = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.selection = 'inclusive'
vim.opt.langmap = ''
vim.opt.langremap = true
vim.opt.langnoremap = true
vim.opt.synmaxcol = 0
-- vim.opt.mouse = 'a'
vim.cmd('set display+=lastline')
vim.cmd('set iskeyword+=_,$,@,%,#,-')
vim.cmd('set switchbuf+=usetab,newtab,useopen')
vim.cmd('set formatoptions+=m,B')
vim.cmd('set selectmode+=mouse,key')
vim.cmd('set shortmess+=S')
vim.cmd('set clipboard+=unnamed')
vim.cmd('set diffopt+=vertical')
vim.cmd('set viewoptions-=vim.options')
vim.cmd('set nrformats-=octal')





