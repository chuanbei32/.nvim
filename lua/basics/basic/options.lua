local backup_dir = vim.fn.stdpath("cache") .. "/backup"
local backup_stat = pcall(os.execute, "mkdir -p " .. backup_dir)
if backup_stat then
    vim.opt.backupext = '.backup'
    vim.opt.backupdir = backup_dir
    vim.opt.directory = backup_dir
end

local undo_dir = vim.fn.stdpath("cache") .. "/undo"
local undo_stat = pcall(os.execute, "mkdir -p " .. undo_dir)
if undo_stat then
    vim.opt.undofile = true
    vim.opt.undodir = undo_dir
end

local swap_dir = vim.fn.stdpath("cache") .. "/swap"
local swap_stat = pcall(os.execute, "mkdir -p " .. swap_dir)
if swap_stat then
    vim.opt.swapfile = true
    vim.opt.directory = swap_dir
end

-- 声音
vim.opt.visualbell = true
vim.opt.errorbells = true
vim.opt.belloff = 'all'

-- 编码
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.makeencoding = 'utf-8'
vim.opt.printencoding = 'utf-8'
vim.opt.fileencodings = 'utf-8,gbk,gb18030,ucs-bom,big5,euc-jp,latin1'

-- 缩进
vim.cmd([[ filetype plugin on ]])
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.copyindent = true
vim.opt.breakindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- 折叠
vim.opt.foldenable = true
vim.opt.foldmethod = 'manual'
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 20
vim.opt.foldminlines = 1

-- 补全
-- vim.cmd("set complete-=t.i")
-- vim.cmd("set completeopt-=preview")

-- 匹配
vim.opt.matchpairs = '(:),{:},[:],<:>'
vim.opt.showmatch = true
vim.opt.matchtime = 1

-- 超时
vim.opt.timeout = false
vim.opt.ttimeout = false
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 300

-- 终端
vim.opt.shell = 'zsh'
vim.opt.ttyfast = true

-- 行
vim.opt.number = true
vim.opt.wrap = true
vim.opt.virtualedit = "block,onemore"
vim.opt.cursorline = true
vim.opt.sidescrolloff = 10
vim.opt.sidescroll = 1
vim.opt.linebreak = true

-- 列
vim.opt.cursorcolumn = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80,120,180'
vim.opt.scrolloff = 1
vim.opt.scrolljump = 1
vim.opt.signcolumn = 'yes'

-- 命令行
vim.opt.wildmenu = false
vim.opt.wildmode = 'list,longest,full'
vim.opt.wildignorecase = true
vim.opt.wildignorecase = false
vim.opt.showcmd = true
vim.opt.history = 100

-- 模式行
vim.opt.modeline = true
vim.opt.modelines = 5

-- 查找/替换
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wrapscan = false
vim.cmd("set path+=**")

-- session

vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal"
-- shada
-- vim.opt.shada

vim.opt.suffixes = '.backup'
vim.opt.magic = true
vim.opt.gdefault = true

vim.opt.ruler = true
vim.opt.showmode = false
vim.opt.laststatus = 2
vim.opt.showtabline = 2
vim.opt.list = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.winminheight = 0
vim.opt.winminwidth = 0
vim.opt.autoread = true
vim.opt.confirm = true
vim.opt.hidden = true
vim.opt.fileformats = 'unix,dos,mac'
vim.opt.report = 0
vim.opt.lazyredraw = true
vim.opt.backspace = 'indent,eol,start'
vim.opt.selection = 'inclusive'
vim.opt.langremap = true
vim.opt.langnoremap = true
vim.opt.shiftround = true
vim.opt.synmaxcol = 0
-- vim.opt.mouse = 'a'
vim.cmd([[ set listchars=tab:\\|\\,trail:.,extends:>,precedes:< ]])
vim.cmd("set display+=lastline")
vim.cmd("set iskeyword+=_,$,@,%,#,-")
vim.cmd("set switchbuf+=usetab,newtab,useopen")
vim.cmd("set formatoptions+=m,B")
vim.cmd("set selectmode+=mouse,key")
vim.cmd("set shortmess+=S")
vim.cmd("set clipboard+=unnamed")
vim.cmd("set diffopt+=vertical")
vim.cmd("set viewoptions-=vim.options")
vim.cmd("set nrformats-=octal")

--
vim.cmd([[ syntax enable on ]])
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd("colorscheme gruvbox")
