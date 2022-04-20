local opt = vim.opt

local backup_dir = vim.fn.stdpath("cache") .. "/backup"
local backup_stat = pcall(os.execute, "mkdir -p " .. backup_dir)
if backup_stat then
    opt.backupext = '.backup'
    opt.backupdir = backup_dir
    opt.directory = backup_dir
end

local undo_dir = vim.fn.stdpath("cache") .. "/undo"
local undo_stat = pcall(os.execute, "mkdir -p " .. undo_dir)
-- local has_persist = vim.fn.has("persistent_undo")
-- if undo_stat and has_persist == 1 then
if undo_stat then
    opt.undofile = true
    opt.undodir = undo_dir
end

local swap_dir = vim.fn.stdpath("cache") .. "/swap"
local swap_stat = pcall(os.execute, "mkdir -p " .. swap_dir)
if swap_stat then
    opt.swapfile = true
    opt.directory = swap_dir
end

-- 声音
opt.visualbell = true
opt.errorbells = true
opt.belloff = 'all'

-- 编码
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.makeencoding = 'utf-8'
opt.printencoding = 'utf-8'
opt.fileencodings = 'utf-8,gbk,gb18030,ucs-bom,big5,euc-jp,latin1'

-- 缩进
opt.autoindent = true
opt.expandtab = true
opt.smartindent = true
opt.cindent = true
opt.copyindent = true
opt.breakindent = true
opt.smarttab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- 折叠
opt.foldenable = true
opt.foldmethod = 'manual'
opt.foldlevelstart = 1
opt.foldnestmax = 20
opt.foldminlines = 1

-- 补全
vim.cmd("set complete-=t.i")
vim.cmd("set completeopt-=preview")

-- 匹配
opt.matchpairs = '(:),{:},[:],<:>'
opt.matchtime = 1
opt.showmatch = true

-- 超时
opt.timeout = true
opt.ttimeout = true
opt.timeoutlen = 3000
opt.ttimeoutlen = 3000

-- 终端
opt.shell = 'zsh'
opt.ttyfast = true

-- 行
opt.number = true
opt.wrap = true
opt.virtualedit = "block,onemore"
opt.cursorline = true
opt.sidescrolloff = 10
opt.sidescroll = 1
opt.linebreak = true

-- 列
opt.cursorcolumn = true
opt.relativenumber = true
opt.colorcolumn = '80,120,180'
opt.scrolloff = 1
opt.scrolljump = 1
opt.signcolumn = 'yes'

-- 命令行
opt.wildmenu = true
opt.wildmode = 'list:longest,full'
opt.wildignorecase = true
opt.showcmd = true
opt.history = 10000

-- 模式行
opt.modeline = true
opt.modelines = 5

-- 查找/替换
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.wrapscan = false
vim.cmd("set path+=**")


opt.suffixes = '.backup'
opt.magic = true
opt.gdefault = true

opt.ruler = true
opt.showmode = false
opt.laststatus = 2
opt.showtabline = 2
opt.list = true
-- vim.cmd('set listchars=tab:\|\,trail:.,extends:>,precedes:<')

opt.splitbelow = true
opt.splitright = true
opt.winminheight = 0
opt.winminwidth = 0
opt.autoread = true
opt.confirm = true
opt.hidden = true
opt.fileformats = 'unix,dos,mac'
opt.report = 0
opt.lazyredraw = true
opt.backspace = 'indent,eol,start'
opt.selection = 'inclusive'
opt.langremap = true
opt.langnoremap = true
opt.shiftround = true
opt.synmaxcol = 0
vim.cmd("set display+=lastline")
vim.cmd("set iskeyword+=_,$,@,%,#,-")
vim.cmd("set switchbuf+=usetab,newtab,useopen")
vim.cmd("set formatoptions+=m,B")
vim.cmd("set selectmode+=mouse,key")
vim.cmd("set shortmess+=S")
vim.cmd("set clipboard+=unnamed")
vim.cmd("set diffopt+=vertical")
vim.cmd("set viewoptions-=options")
vim.cmd("set nrformats-=octal")

-- -- nvui specific settings
-- if vim.g.nvui then
--     vim.opt.guifont = [[Cascadia Code:h12,FiraCode\ Nerd\ Font\ Mono:h12]]
--     vim.cmd([[NvuiCmdFontFamily FiraCode Nerd Font Mono]])
--     vim.cmd([[NvuiCmdFontSize 12]])
--     vim.cmd([[NvuiAnimationsEnabled 1]])
--     vim.cmd([[NvuiCmdCenterXPos 0.5]])
--     vim.cmd([[NvuiCmdCenterYPos 0.2]])
--     vim.cmd([[NvuiCmdBorderWidth 3]])
--     vim.cmd([[NvuiCmdBorderColor #6E6C6A]])
--     vim.cmd([[NvuiCmdBigFontScaleFactor 1.3]])
--     vim.cmd([[NvuiCmdPadding 13]])
--     vim.cmd([[NvuiPopupMenuBorderWidth 4]])
--     vim.cmd([[NvuiPopupMenuBorderColor #6E6C6A]])
--     -- nvui g3486971 feature
--     vim.cmd([[autocmd InsertEnter * NvuiIMEEnable]])
--     vim.cmd([[autocmd InsertLeave * NvuiIMEDisable]])
--     -- nvui g87f61c0 feature
--     vim.cmd([[hi Normal guisp=#6899B8]])
-- end

-- if vim.g.neovide then
--     -- neovide specific settings
--     vim.g.neovide_cursor_vfx_mode = "sonicboom"
--     vim.opt.guifont = [[monospace:h11]]
-- end
