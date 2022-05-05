local use = {}

use = {

	-- Neovim 专属库
	"nvim-lua/plenary.nvim",

	-- 加速插件加载
	-- LuaCacheClear 删除加载的缓存并删除缓存文件,下次加载 Neovim 时,将创建一个新的缓存文件
	-- LuaCacheLog 查看日志
	-- LuaCacheProfile 查看分析数据
	"lewis6991/impatient.nvim",

	-- 主题配色
	"ellisonleao/gruvbox.nvim", -- gruvbox

	-- 图标
	"kyazdani42/nvim-web-devicons", -- nvim-web-devicons
	"onsails/lspkind-nvim", -- lspkind

	-- 状态栏
	"nvim-lualine/lualine.nvim", -- lualine

	-- 缓冲区/标签区栏
	"akinsho/bufferline.nvim", -- bufferline

	-- 启动页
	"glepnir/dashboard-nvim", -- dashboard

	-- 资源管理器
	-- "justinmk/vim-dirvish",
	"kyazdani42/nvim-tree.lua", -- nvim-tree

	-- 标签/大纲
	-- "ludovicchabant/vim-gutentags",
	-- "preservim/tagbar",
	"simrat39/symbols-outline.nvim", -- symbols-outline
	-- "liuchengxu/vista.vim",
	-- "stevearc/aerial.nvim",

	-- 缩进
	-- "Yggdroot/indentLine", -- indentLine
	"glepnir/indent-guides.nvim", -- indent-guides

	-- 代码高亮
	"nvim-treesitter/nvim-treesitter", -- nvim-treesitter
	-- "kyazdani42/nvim-tree.lua",
	-- 彩虹括号
	"p00f/nvim-ts-rainbow", -- nvim-ts-rainbow
	-- 颜色
	"norcalli/nvim-colorizer.lua", -- nvim-colorizer

	-- 模糊搜索
	-- "Yggdroot/LeaderF",
	"nvim-telescope/telescope.nvim", -- telescope
	"haya14busa/incsearch.vim", -- incsearch
	"easymotion/vim-easymotion",
	"hrsh7th/vim-eft", -- vim-eft
	"dyng/ctrlsf.vim",

	-- git
	"mhinz/vim-signify", -- vim-signify
	"rhysd/git-messenger.vim",

	-- 浮动窗口
	"akinsho/toggleterm.nvim", -- toggleterm

	-- LSP
	-- "dense-analysis/ale",
	"neovim/nvim-lspconfig",
	"williamboman/nvim-lsp-installer",
	"tami5/lspsaga.nvim",
	"ray-x/lsp_signature.nvim", -- lsp_signature
	"kosayoda/nvim-lightbulb",
	"folke/lsp-colors.nvim",
	-- lsp 加载信息
	"j-hui/fidget.nvim", -- fidget
	-- Complete
	"hrsh7th/nvim-cmp",
	-- "hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	-- Snippet
	-- "SirVer/ultisnips",
	-- "honza/vim-snippets",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/vim-vsnip",
	"rafamadriz/friendly-snippets",
	-- Comment
	-- "tpope/vim-commentary",
	-- "suy/vim-context-commentstring",
	"numToStr/Comment.nvim", -- Comment
	"JoosepAlviste/nvim-ts-context-commentstring", -- nvim-ts-context-commentstring
	"vim-scripts/DoxygenToolkit.vim",
	"danymat/neogen", -- neogen
	-- Lint
	"mfussenegger/nvim-lint",
	-- Format
	"sbdchd/neoformat",
	-- Debug
	"puremourning/vimspector",
	-- Test
	"vim-test/vim-test",
	-- Run
	"skywind3000/asyncrun.vim",
	-- Tasks
	"skywind3000/asynctasks.vim",

	-- 文本对象
	"wellle/targets.vim",
	"tpope/vim-surround",
	"terryma/vim-expand-region",
	"junegunn/vim-easy-align",
	"FooSoft/vim-argwrap",
	"AndrewRadev/dsf.vim",

	"nathom/filetype.nvim", -- filetype「自动文件类型」
	"simnalamburt/vim-mundo", -- vim-mundo「撤销」
	"mg979/vim-visual-multi", -- vim-visual-multi「多游标」
	"chentau/marks.nvim", -- marks「标记」
	"junegunn/vim-peekaboo", -- vim-peekaboo「寄存器/宏」
 	"RRethy/vim-illuminate", -- vim-illuminate「突出显示光标下单词」
	"airblade/vim-rooter", -- vim-rooter「自动更改工作目录」
	"tpope/vim-unimpaired", -- vim-unimpaired「映射」
	"rainbowhxch/accelerated-jk.nvim", -- accelerated-jk「加速 jk 移动速度」
	"psliwka/vim-smoothie", -- vim-smoothie「翻页动画」

	--
	"AndrewRadev/tagalong.vim",
	"alvan/vim-closetag",

}

return use