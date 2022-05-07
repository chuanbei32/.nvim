local dependency = {
    "nvim-lua/plenary.nvim",                           -- 专用模块
    "kyazdani42/nvim-web-devicons",                    -- 文件/文件夹图标
}

local enhance = {
    "rcarriga/nvim-notify",                            -- 消息通知模块
    "lewis6991/impatient.nvim",                        -- 缓存插件字节码
}

local ui = {
    "ellisonleao/gruvbox.nvim",                        -- 主题配色
    {
        "nvim-lualine/lualine.nvim",                       -- 状态栏
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    {
        "akinsho/bufferline.nvim",                         -- 缓冲区/标签区栏
        requires = 'kyazdani42/nvim-web-devicons'
    },
    "glepnir/dashboard-nvim",                          -- 启动页/仪表盘

    "nvim-treesitter/nvim-treesitter",                 -- 代码高亮
}

local feature = {
    -- "folke/which-key.nvim",                            -- 映射显示
    "tpope/vim-unimpaired",                            -- 映射增强
    "akinsho/toggleterm.nvim",                         -- 窗口浮动
    "skywind3000/asyncrun.vim",                        -- 异步运行管理
    "skywind3000/asynctasks.vim",                      -- 异步任务管理
    "simrat39/symbols-outline.nvim",                   -- 大纲管理
    "preservim/tagbar",                                -- 标签管理
    "kyazdani42/nvim-tree.lua",                        -- 文件/文件夹管理
    "simnalamburt/vim-mundo",                          -- 撤销管理
    "junegunn/vim-peekaboo",                           -- 寄存器/宏管理

    "windwp/nvim-spectre",                             -- 模糊查找/搜索替换
    "nvim-telescope/telescope.nvim",                   -- 模糊查找/搜索替换

    -- 文本对象
    "wellle/targets.vim",
    "terryma/vim-expand-region",
    "mg979/vim-visual-multi",                          -- 多游标

    -- "AndrewRadev/switch.vim",                          --
    "tpope/vim-surround",
    "AndrewRadev/dsf.vim",
    "AndrewRadev/tagalong.vim",                        -- 配对 html/xml 标签
    "alvan/vim-closetag",                              -- 关闭 html/xml 标签

    "junegunn/vim-easy-align",                         -- 代码对齐
    "FooSoft/vim-argwrap",                             -- 格式化数组、字典
    "windwp/nvim-autopairs",                           -- 括号补全

    -- git
    "lewis6991/gitsigns.nvim",
    "sindrets/diffview.nvim",

    "ludovicchabant/vim-gutentags",                    -- 自动生成 tags
    -- "airblade/vim-rooter",                             -- 更改工作目录
    "Pocco81/AutoSave.nvim",                           -- 自动保存文件
    -- "rmagatti/auto-session",                           -- 自动保存会话
    -- "rmagatti/session-lens",
    -- "ethanholz/nvim-lastplace",                        -- 自动定位到上次离开位置


    "folke/todo-comments.nvim",                        -- Todo「高亮」
    "kevinhwang91/nvim-hlslens",                       -- 搜索高亮
    "hrsh7th/vim-eft",                                 -- f/t 增强「高亮」
    "p00f/nvim-ts-rainbow",                            -- 彩虹括号
    "phaazon/hop.nvim",                                -- 跳转增强
    "norcalli/nvim-colorizer.lua",                     -- 颜色显示
    "glepnir/indent-guides.nvim",                      -- 缩进显示
    "nathom/filetype.nvim",                            -- 文件类型
    "chentau/marks.nvim",                              -- 标记显示
    "RRethy/vim-illuminate",                           -- 突出显示光标下单词
    "rainbowhxch/accelerated-jk.nvim",                 -- j/k 增强「加速移动」
    "psliwka/vim-smoothie",                            -- 翻页动画效果
    "petertriho/nvim-scrollbar",                       -- 滚动条效果
}

local lsp = {
    "j-hui/fidget.nvim",                           -- 加载信息
    "tami5/lspsaga.nvim",                          --
    "ray-x/lsp_signature.nvim",                    --
    "folke/lsp-colors.nvim",                       --
    "onsails/lspkind-nvim",                        -- 图标
    -- "kosayoda/nvim-lightbulb", -- 代码操作

    -- lsp
    "neovim/nvim-lspconfig",                       --
    "williamboman/nvim-lsp-installer",             --

    -- debug ” 调试
    -- "puremourning/vimspector",                     --
    "mfussenegger/nvim-dap",                       --
    "theHamsta/nvim-dap-virtual-text",             --
    "rcarriga/nvim-dap-ui",                        --

    -- test ” 测试
    "vim-test/vim-test",                           --

    -- comment ” 注释
    "numToStr/Comment.nvim",                       --
    "JoosepAlviste/nvim-ts-context-commentstring", --

    -- docComment ” 文档注释
    "danymat/neogen",                              --

    -- format ” 格式化
    "sbdchd/neoformat",                            --

    -- completion ” 自动完成
    "hrsh7th/nvim-cmp",                            --
    "hrsh7th/cmp-nvim-lsp",                        --
    "hrsh7th/cmp-buffer",                          --
    "hrsh7th/cmp-path",                            --
    -- "hrsh7th/cmp-cmdline", -- cmp-cmdline

    -- snippet ” 代码片段
    "hrsh7th/cmp-vsnip",                           --
    "hrsh7th/vim-vsnip",                           --
    "rafamadriz/friendly-snippets",                --

    -- lint ” 代码诊断
    "mfussenegger/nvim-lint",                      --
}

return {
    dependency,
    enhance,
    ui,
    feature,
    lsp,
}
