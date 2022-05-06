local use = {}

use = {

    "nvim-lua/plenary.nvim",                           -- Neovim 专属库/包/模块

    -- LuaCacheClear 删除加载的缓存并删除缓存文件并且下次加载 Neovim 时将创建一个新的缓存文件
    -- LuaCacheLog 查看日志
    -- LuaCacheProfile 查看分析数据
    "lewis6991/impatient.nvim",                        -- impatient “ 加速插件加载

    --
    "dyng/ctrlsf.vim",                                 -- ctrlsf
    "nvim-telescope/telescope.nvim",                   -- telescope

    --
    "hrsh7th/vim-eft",                                 -- vim-eft
    "kevinhwang91/nvim-hlslens",                       -- nvim-hlslens
    "phaazon/hop.nvim",                                -- hop ” 文本跳转


    -- 文本对象
    "wellle/targets.vim",
    "terryma/vim-expand-region",

    -- 文本对象环绕
    "tpope/vim-surround",
    "AndrewRadev/dsf.vim",
    "AndrewRadev/tagalong.vim",                        -- tagalong ” 配对 html/xml 标签
    "alvan/vim-closetag",                              -- closetag ” 关闭 html/xml 标签

    --
    "junegunn/vim-easy-align",                         -- vim-easy-align “ 对齐
    "FooSoft/vim-argwrap",                             -- vim-argwrap ”

    -- 版本控制「git」
    "lewis6991/gitsigns.nvim",                         -- gitsigns
    "sindrets/diffview.nvim",

    -- {{
        "ellisonleao/gruvbox.nvim",                    -- gruvbox ” 主题配色
        "nvim-lualine/lualine.nvim",                   -- lualine ” 状态栏
        "akinsho/bufferline.nvim",                     -- bufferline ” 缓冲区/标签区栏
        "glepnir/dashboard-nvim",                      -- dashboard ” 启动页/仪表盘
        "kyazdani42/nvim-web-devicons",                -- nvim-web-devicons ” 文件/文件夹图标
        "kyazdani42/nvim-tree.lua",                    -- nvim-tree ” 文件/文件夹管理器
        "nvim-treesitter/nvim-treesitter",             -- nvim-treesitter ” 代码高亮
        "p00f/nvim-ts-rainbow",                        -- nvim-ts-rainbow ” 彩虹括号
        "akinsho/toggleterm.nvim",                     -- toggleterm ” 浮动窗口
        "skywind3000/asyncrun.vim",                    -- run ” 异步运行
        "skywind3000/asynctasks.vim",                  -- tasks ” 异步任务
        "windwp/nvim-autopairs",                       -- nvim-autopairs ” 括号补全
        "norcalli/nvim-colorizer.lua",                 -- nvim-colorizer ” 颜色
        "glepnir/indent-guides.nvim",                  -- indent-guides “ 缩进
        "nathom/filetype.nvim",                        -- filetype ” 文件类型
        "simnalamburt/vim-mundo",                      -- vim-mundo ” 撤销
        "mg979/vim-visual-multi",                      -- vim-visual-multi ” 多游标
        "chentau/marks.nvim",                          -- marks ” 标记
        "junegunn/vim-peekaboo",                       -- vim-peekaboo ” 寄存器/宏
        "RRethy/vim-illuminate",                       -- vim-illuminate ” 突出显示光标下单词
        "airblade/vim-rooter",                         -- vim-rooter ” 更改工作目录
        "tpope/vim-unimpaired",                        -- vim-unimpaired ” 映射
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
        "puremourning/vimspector",                     -- vimspector

        -- test ” 测试
        "vim-test/vim-test",                           -- vim-test

        -- comment ” 注释
        "numToStr/Comment.nvim",                       -- Comment
        "JoosepAlviste/nvim-ts-context-commentstring", -- nvim-ts-context-commentstring
        "danymat/neogen",                              -- neogen

        -- format ” 格式化
        "sbdchd/neoformat",                            -- neoformat

        -- completion ” 自动完成
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        -- "hrsh7th/cmp-cmdline",

        -- snippet ” 代码片段
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
        "rafamadriz/friendly-snippets",

        -- lint ” 代码诊断
        "mfussenegger/nvim-lint",

        --  标签/大纲
        "simrat39/symbols-outline.nvim",               -- symbols-outline
    -- }}
}

return use
