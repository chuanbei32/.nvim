local dependency = {

    "nvim-lua/plenary.nvim",                               -- 专用模块
    "kyazdani42/nvim-web-devicons",                        -- 文件/文件夹图标
}

local system = {

    "rcarriga/nvim-notify",                                -- 消息通知
    "tweekmonster/startuptime.vim",                        -- 启动时间

    "lewis6991/impatient.nvim",                            -- 插件缓存

    "nathom/filetype.nvim",                                -- 文件类型
}

local ui = {

    "ellisonleao/gruvbox.nvim",                            -- 主题配色
    -- "psliwka/vim-smoothie",                                -- 翻页动画
    -- "petertriho/nvim-scrollbar",                           -- 滚动条
    "kevinhwang91/nvim-hlslens",                           -- 搜索高亮
    "folke/todo-comments.nvim",                            -- Todo 高亮
    "RRethy/vim-illuminate",                               -- 高亮光标下单词
    "norcalli/nvim-colorizer.lua",                         -- 颜色显示
    "glepnir/indent-guides.nvim",                          -- 缩进显示
    "chentau/marks.nvim",                                  -- 标记显示
    {
        "nvim-lualine/lualine.nvim",                       -- 状态栏
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    },
    {
        "akinsho/bufferline.nvim",                         -- 缓冲区/标签区栏
        requires = 'kyazdani42/nvim-web-devicons'
    },
    "glepnir/dashboard-nvim",                              -- 启动页/仪表盘
    {
        "nvim-treesitter/nvim-treesitter",                 -- 代码高亮
        requires = {
            "p00f/nvim-ts-rainbow",                        -- 彩虹括号
            "JoosepAlviste/nvim-ts-context-commentstring", -- 注释样式
        },
        run = ':TSUpdate'
    },

}

local feature = {

    -- "folke/which-key.nvim",                             -- 映射显示
    "tpope/vim-unimpaired",                                -- 映射增强
    "phaazon/hop.nvim",                                    -- 跳转增强
    "hrsh7th/vim-eft",                                     -- f/t 增强「高亮」
    "rainbowhxch/accelerated-jk.nvim",                     -- j/k 增强「加速移动」

    "akinsho/toggleterm.nvim",                             -- 窗口浮动
    "skywind3000/asyncrun.vim",                            -- 异步运行
    "skywind3000/asynctasks.vim",                          -- 异步任务
    "simrat39/symbols-outline.nvim",                       -- 大纲

    "preservim/tagbar",                                    -- 标签
    "ludovicchabant/vim-gutentags",                        -- 自动生成标签

    "kyazdani42/nvim-tree.lua",                            -- 文件/文件夹
    "simnalamburt/vim-mundo",                              -- 撤销
    "junegunn/vim-peekaboo",                               -- 寄存器/宏
    {
        "windwp/nvim-spectre",                             -- 模糊查找/搜索替换
        requires = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        "nvim-telescope/telescope.nvim",                   -- 模糊查找/搜索替换
        requires = {
            "nvim-lua/plenary.nvim"
        }
    },

    -- 文本对象
    "wellle/targets.vim",
    "terryma/vim-expand-region",
    "mg979/vim-visual-multi",                              -- 多游标

    -- "AndrewRadev/switch.vim",                           --
    "tpope/vim-surround",
    "AndrewRadev/dsf.vim",
    "AndrewRadev/tagalong.vim",                            -- 配对 html/xml 标签
    "alvan/vim-closetag",                                  -- 关闭 html/xml 标签

    "junegunn/vim-easy-align",                             -- 代码对齐
    "FooSoft/vim-argwrap",                                 -- 格式化数组、字典
    "windwp/nvim-autopairs",                               -- 括号补全

    -- git
    "lewis6991/gitsigns.nvim",
    {
        "sindrets/diffview.nvim",
        requires = {
            "nvim-lua/plenary.nvim"
        }
    },

    -- "Pocco81/AutoSave.nvim",                            -- 自动保存文件
    -- "airblade/vim-rooter",                              -- 更改工作目录
    -- "ethanholz/nvim-lastplace",                         -- 自动定位到上次离开位置
    -- "rmagatti/auto-session",                            -- 自动保存会话
    -- "rmagatti/session-lens",
}

local lsp = {

    "j-hui/fidget.nvim",                                   -- lsp 加载信息
    "ray-x/lsp_signature.nvim",                            -- lsp 函数签名
    "kosayoda/nvim-lightbulb",                             -- lsp 代码操作
    "onsails/lspkind-nvim",                                -- lsp icon
    "tami5/lspsaga.nvim",                                  -- lsp UI
    "folke/lsp-colors.nvim",                               -- lsp 颜色

    -- 语言服务器
    "neovim/nvim-lspconfig",                               --
    "williamboman/nvim-lsp-installer",                     --

    -- 调试
    -- "puremourning/vimspector",
    "mfussenegger/nvim-dap",                               --
    {
        "theHamsta/nvim-dap-virtual-text",                 --
        requires = {
            "mfussenegger/nvim-dap",
            {
                "nvim-treesitter/nvim-treesitter",
                run = ':TSUpdate'
            }
        }
    },
    {
        "rcarriga/nvim-dap-ui",                            --
        requires = {
            "mfussenegger/nvim-dap",
        }
    },

    -- 测试
    "vim-test/vim-test",                                   --

    -- 注释
    "numToStr/Comment.nvim",                               --

    -- 文档注释
    "danymat/neogen",                                      --

    -- 格式化
    "sbdchd/neoformat",                                    --

    -- 自动完成
    "hrsh7th/nvim-cmp",                                    --
    "hrsh7th/cmp-nvim-lsp",                                --
    "hrsh7th/cmp-buffer",                                  --
    "hrsh7th/cmp-path",                                    --
    -- "hrsh7th/cmp-cmdline",                              --

    -- 代码片段
    "hrsh7th/cmp-vsnip",                                   --
    "hrsh7th/vim-vsnip",                                   --
    "rafamadriz/friendly-snippets",                        --

    -- 代码诊断
    "mfussenegger/nvim-lint",                              --

}

return {
    dependency,
    system,
    ui,
    feature,
    lsp,
}
