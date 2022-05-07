vim.opt.belloff = 'all'
vim.opt.errorbells = false
vim.opt.visualbell = true

vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('colorscheme gruvbox')

-- 文件类型检测
-- filetype plugin indent on
-- filetype on
vim.cmd('filetype plugin indent on')

-- 语法高亮
vim.cmd('syntax enable on')
vim.opt.synmaxcol = 0

-- vim.cmd('set path+=**')
-- vim.cmd('set packpath+=**')
-- vim.cmd('set runtimepath+=**')

local backup_dir = vim.fn.stdpath('cache') .. '/backup'
local backup_stat = pcall(os.execute, 'mkdir -p ' .. backup_dir)
if backup_stat then
    vim.opt.backupext = '.backup'
    vim.opt.backupdir = backup_dir
end

local undo_dir = vim.fn.stdpath('cache') .. '/undo'
local undo_stat = pcall(os.execute, 'mkdir -p ' .. undo_dir)
if undo_stat then
    vim.opt.undofile = true
    vim.opt.undodir = undo_dir
end

local swap_dir = vim.fn.stdpath('cache') .. '/swap'
local swap_stat = pcall(os.execute, 'mkdir -p ' .. swap_dir)
if swap_stat then
    vim.opt.swapfile = true
    -- vim.opt.swapsync = ''
    vim.opt.directory = swap_dir
end

-- terminal
vim.opt.ttyfast = true
-- shell
vim.opt.shell = 'zsh' -- 执行外部时命令使用的解释器
-- line
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.wrap = true
vim.opt.virtualedit = 'onemore'
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'screenline,number'
vim.opt.sidescrolloff = 6
vim.opt.sidescroll = 3
vim.opt.linebreak = true
-- vim.opt.list = true
-- vim.cmd('set listchars=eol:$')
vim.opt.report = 0
-- cmd line
vim.opt.wildmenu = false
vim.opt.wildmode = 'list,longest,full'
vim.opt.wildignorecase = true
vim.opt.wildignorecase = false
vim.opt.showcmd = true
vim.opt.history = 100
-- status line
vim.opt.ruler = true
vim.opt.showmode = false
vim.opt.laststatus = 2
-- mode line
vim.opt.modeline = true
-- vim.opt.modelineexpr = ''
-- vim.opt.modelines = 5
-- encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = 'utf-8'
vim.opt.makeencoding = 'utf-8'
vim.opt.printencoding = 'utf-8'
vim.opt.termencoding = 'utf-8'
-- session
vim.opt.sessionoptions = 'blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal'
-- shada
vim.opt.shada = '\'1000,f1,<500'
-- tags
vim.opt.tags = 'tags=./.tags;,.tags,tags'
-- column
vim.opt.cursorcolumn = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80,120,180'
vim.opt.scrolloff = 3
vim.opt.scrolljump = 3
vim.opt.signcolumn = 'yes'
-- indent
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
-- fold
vim.opt.foldenable = true
vim.opt.foldmethod = 'syntax'
vim.opt.foldlevel = 2 -- 当折叠级别高于此值时关闭折叠
vim.opt.foldlevelstart = 2 -- 'foldlevel' 的设置
vim.opt.foldnestmax = 3 -- 最大折叠深度
vim.opt.foldminlines = 5 -- 折叠关闭所需的最少行数
-- complete
-- vim.cmd('set complete-=t.i')
-- vim.cmd('set completeopt-=preview')
-- match
vim.opt.matchpairs = '(:),{:},[:],<:>'
vim.opt.matchtime = 1
vim.opt.showmatch = true -- 插入括号时短暂跳转到匹配的括号
-- timeout
vim.opt.timeout = false
vim.opt.ttimeout = false
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 300
-- search/replace
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrapscan = false
vim.opt.magic = true
vim.opt.suffixes = '.backup'
vim.opt.gdefault = false



vim.opt.lazyredraw = true

vim.opt.backspace = 'indent,eol,start'

vim.opt.selection = 'inclusive'
vim.cmd('set selectmode+=mouse,key')

-- vim.opt.langmap = ''
-- vim.opt.langremap = true
-- vim.opt.langnoremap = true

vim.cmd('set display+=lastline')
vim.cmd('set iskeyword+=_,$,@,%,#,-')
vim.cmd('set switchbuf+=usetab,newtab,useopen')
vim.cmd('set formatoptions+=m,B')
vim.cmd('set shortmess+=S')
vim.cmd('set clipboard+=unnamed')
vim.cmd('set diffopt+=vertical')
vim.cmd('set viewoptions-=vim.options')
vim.cmd('set nrformats-=octal')

-- mouse
-- vim.opt.mouse = 'a'

-- windows
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.winminheight = 0
vim.opt.winminwidth = 0

-- buffers
vim.opt.autoread = true
vim.opt.confirm = true
vim.opt.hidden = true
vim.opt.fileformat = 'unix'
vim.opt.fileformats = 'unix,dos,mac'

-- tabs
vim.opt.showtabline = 2
