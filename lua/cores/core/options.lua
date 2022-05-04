local backup_dir = vim.fn.stdpath("cache") .. "/backup"
local backup_stat = pcall(os.execute, "mkdir -p " .. backup_dir)
if backup_stat then
    vim.opt.backupext = '.backup'
    vim.opt.backupdir = backup_dir
    vim.opt.directory = backup_dir
end

local undo_dir = vim.fn.stdpath("cache") .. "/undo"
local undo_stat = pcall(os.execute, "mkdir -p " .. undo_dir)
-- local has_persist = vim.fn.has("persistent_undo")
-- if undo_stat and has_persist == 1 then
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
vim.cmd("set complete-=t.i")
vim.cmd("set completevim.opt-=preview")

-- 匹配
vim.opt.matchpairs = '(:),{:},[:],<:>'
vim.opt.matchtime = 1
vim.opt.showmatch = true

-- 超时
vim.opt.timeout = true
vim.opt.ttimeout = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 500

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
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest,full'
vim.opt.wildignorecase = true
vim.opt.showcmd = true
vim.opt.history = 10000

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


vim.opt.suffixes = '.backup'
vim.opt.magic = true
vim.opt.gdefault = true

vim.opt.ruler = true
vim.opt.showmode = false
vim.opt.laststatus = 2
vim.opt.showtabline = 2
vim.opt.list = true
-- vim.cmd('set listchars=tab:\|\,trail:.,extends:>,precedes:<')

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
vim.cmd("set display+=lastline")
vim.cmd("set iskeyword+=_,$,@,%,#,-")
vim.cmd("set switchbuf+=usetab,newtab,useopen")
vim.cmd("set formatvim.options+=m,B")
vim.cmd("set selectmode+=mouse,key")
vim.cmd("set shortmess+=S")
vim.cmd("set clipboard+=unnamed")
vim.cmd("set diffvim.opt+=vertical")
vim.cmd("set viewvim.options-=vim.options")
vim.cmd("set nrformats-=octal")

-- -- nvui specific settings
-- if vim.g.nvui then
--     vim.vim.opt.guifont = [[Cascadia Code:h12,FiraCode\ Nerd\ Font\ Mono:h12]]
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
--     vim.vim.opt.guifont = [[monospace:h11]]
-- end
