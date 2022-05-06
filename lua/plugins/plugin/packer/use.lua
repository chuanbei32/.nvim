local use = {}

use = {

    "nvim-lua/plenary.nvim",                           -- Neovim 专属库/包/模块

    -- LuaCacheClear 删除加载的缓存并删除缓存文件并且下次加载 Neovim 时将创建一个新的缓存文件
    -- LuaCacheLog 查看日志
    -- LuaCacheProfile 查看分析数据
    "lewis6991/impatient.nvim",                        -- impatient “ 加速插件加载


    -- {{
    "windwp/nvim-spectre", -- nvim-spectre ” 模糊查找/搜索替换
    -- "dyng/ctrlsf.vim",                                 -- ctrlsf ” 模糊查找/搜索替换
    "nvim-telescope/telescope.nvim",                   -- telescope “ 模糊查找/搜索
    "kevinhwang91/nvim-hlslens",                       -- nvim-hlslens ” 搜索高亮
    "hrsh7th/vim-eft",                                 -- vim-eft “ f/t 查找/搜索增强
    "phaazon/hop.nvim",                                -- hop ” 跳转
    -- }}

    -- {{
    -- 文本对象
    "wellle/targets.vim",
    "terryma/vim-expand-region",

    "tpope/vim-surround",
    "AndrewRadev/dsf.vim",
    "AndrewRadev/tagalong.vim",                        -- tagalong ” 配对 html/xml 标签
    "alvan/vim-closetag",                              -- closetag ” 关闭 html/xml 标签

    "mg979/vim-visual-multi",                          -- vim-visual-multi ” 多游标
    "junegunn/vim-easy-align",                         -- vim-easy-align “ 对齐
    "FooSoft/vim-argwrap",                             -- vim-argwrap ”
    -- }}

    -- 版本控制 {{
    -- git
    "lewis6991/gitsigns.nvim",                         -- gitsigns
    "sindrets/diffview.nvim",                          -- diffview
    -- }}

    -- {{
        "kyazdani42/nvim-tree.lua",                    -- nvim-tree ” 文件/文件夹管理器
        "akinsho/toggleterm.nvim",                     -- toggleterm ” 浮动终端
        "skywind3000/asyncrun.vim",                    -- run ” 异步运行
        "skywind3000/asynctasks.vim",                  -- tasks ” 异步任务
        "simnalamburt/vim-mundo",                      -- vim-mundo ” 撤销
        "junegunn/vim-peekaboo",                       -- vim-peekaboo ” 寄存器/宏
        "simrat39/symbols-outline.nvim",               -- symbols-outline “ 标签/大纲
        -- "preservim/tagbar" -- tagbar
        -- "ludovicchabant/vim-gutentags" -- vim-gutentags

        -- "AndrewRadev/switch.vim" -- switch
        "Pocco81/AutoSave.nvim", -- AutoSave ” 自动保存
        -- "ethanholz/nvim-lastplace", -- nvim-lastplace “ 自动定位到上次离开位置
        -- "rmagatti/auto-session", -- auto-session ” 自动保存 session
        "petertriho/nvim-scrollbar", -- nvim-scrollbar “ 滚动条
        "rcarriga/nvim-notify", -- nvim-notify ” 通知
        "folke/todo-comments.nvim", -- todo-comments “ todo
        "folke/which-key.nvim", -- which-key ”
        "ellisonleao/gruvbox.nvim",                    -- gruvbox ” 主题配色
        "nvim-lualine/lualine.nvim",                   -- lualine ” 状态栏
        "akinsho/bufferline.nvim",                     -- bufferline ” 缓冲区/标签区栏
        "glepnir/dashboard-nvim",                      -- dashboard ” 启动页/仪表盘
        "kyazdani42/nvim-web-devicons",                -- nvim-web-devicons ” 文件/文件夹图标
        "nvim-treesitter/nvim-treesitter",             -- nvim-treesitter ” 代码高亮
        "p00f/nvim-ts-rainbow",                        -- nvim-ts-rainbow ” 彩虹括号
        "windwp/nvim-autopairs",                       -- nvim-autopairs ” 括号补全
        "norcalli/nvim-colorizer.lua",                 -- nvim-colorizer ” 颜色
        "glepnir/indent-guides.nvim",                  -- indent-guides “ 缩进
        "nathom/filetype.nvim",                        -- filetype ” 文件类型
        "chentau/marks.nvim",                          -- marks ” 标记
        "RRethy/vim-illuminate",                       -- vim-illuminate ” 突出显示光标下单词
        "airblade/vim-rooter",                         -- vim-rooter ” 更改工作目录
        "tpope/vim-unimpaired",                        -- vim-unimpaired ” 映射增强
        "rainbowhxch/accelerated-jk.nvim",             -- accelerated-jk ” 加速 jk 移动速度
        "psliwka/vim-smoothie",                        -- vim-smoothie ” 翻页动画
    -- }}

    -- 语言服务器 {{
        "j-hui/fidget.nvim",                           -- fidget ” 加载信息
        "tami5/lspsaga.nvim",                          -- lspsaga
        "ray-x/lsp_signature.nvim",                    -- lsp_signature
        "folke/lsp-colors.nvim",                       -- lsp-colors
        "onsails/lspkind-nvim",                        -- lspkind “ lsp 图标
        -- "kosayoda/nvim-lightbulb", -- nvim-lightbulb “ 代码操作

        -- lsp
        "neovim/nvim-lspconfig",                       -- nvim-lspconfig
        "williamboman/nvim-lsp-installer",             -- nvim-lsp-installer

        -- debug ” 调试
        -- "puremourning/vimspector",                     -- vimspector、
        "mfussenegger/nvim-dap", -- nvim-dap
        "theHamsta/nvim-dap-virtual-text", -- nvim-dap-virtual-text
        "rcarriga/nvim-dap-ui", -- nvim-dap-ui

        -- test ” 测试
        "vim-test/vim-test",                           -- vim-test

        -- comment ” 注释
        "numToStr/Comment.nvim",                       -- Comment
        "JoosepAlviste/nvim-ts-context-commentstring", -- nvim-ts-context-commentstring

        -- docComment ” 文档注释
        "danymat/neogen",                              -- neogen

        -- format ” 格式化
        "sbdchd/neoformat",                            -- neoformat

        -- completion ” 自动完成
        "hrsh7th/nvim-cmp",                            -- nvim-cmp
        "hrsh7th/cmp-nvim-lsp",                        -- cmp-nvim-lsp
        "hrsh7th/cmp-buffer",                          -- cmp-buffer
        "hrsh7th/cmp-path",                            -- cmp-path
        -- "hrsh7th/cmp-cmdline", -- cmp-cmdline

        -- snippet ” 代码片段
        "hrsh7th/cmp-vsnip",                           -- cmp-vsnip
        "hrsh7th/vim-vsnip",                           -- vim-vsnip
        "rafamadriz/friendly-snippets",                -- friendly-snippets

        -- lint ” 代码诊断
        "mfussenegger/nvim-lint",                      -- nvim-lint
    -- }}
}

return use
