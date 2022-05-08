local api = {

    'rcarriga/nvim-notify',                            -- 消息通知
}

local basis = {

    'tweekmonster/startuptime.vim',                    -- 启动时间统计

    'lewis6991/impatient.nvim',                        -- 插件缓存
    'folke/which-key.nvim',                            -- 映射提示

    'nathom/filetype.nvim',                            -- 文件类型

    -- 'echasnovski/mini.nvim',
    'tpope/vim-unimpaired',

    -- 'Pocco81/AutoSave.nvim',                            -- 自动保存文件
    -- 'airblade/vim-rooter',                              -- 更改工作目录
    -- 'ethanholz/nvim-lastplace',                         -- 自动定位到上次离开位置
    -- 'rmagatti/auto-session',                            -- 自动保存会话
    -- 'ludovicchabant/vim-gutentags',                    -- 自动生成标签

    'ellisonleao/gruvbox.nvim',                        -- 主题配色
    'sunjon/shade.nvim',                               -- 非活动窗口明亮度降低
    'kevinhwang91/nvim-hlslens',                       -- 搜索/查找高亮
    'folke/todo-comments.nvim',                        -- 待办事项高亮表示、搜索/查找
    'norcalli/nvim-colorizer.lua',                     -- 颜色模式表示方式转换为可视颜色表示方式
    'lukas-reineke/indent-blankline.nvim',             -- 缩进
    'chentau/marks.nvim',                              -- 标记
    'phaazon/hop.nvim',                                -- 跳转
    'hrsh7th/vim-eft',                                 -- f/t 高亮
    'rainbowhxch/accelerated-jk.nvim',                 -- j/k 加速移动
    'skywind3000/asyncrun.vim',                        -- 异步运行
    'skywind3000/asynctasks.vim',                      -- 异步任务
    -- 'preservim/tagbar',                                -- 标签
    'akinsho/toggleterm.nvim',                         -- 窗口浮动
    'kyazdani42/nvim-tree.lua',                        -- 文件/文件夹
    'simnalamburt/vim-mundo',                          -- 撤销
    'gennaro-tedesco/nvim-peekup',                     -- 寄存器/宏
    -- 'rmagatti/session-lens',
    'wellle/targets.vim',
    'terryma/vim-expand-region',
    'mg979/vim-visual-multi',                          -- 多游标
    -- 'AndrewRadev/switch.vim',                           --
    'tpope/vim-surround',
    'AndrewRadev/dsf.vim',
    'junegunn/vim-easy-align',                         -- 代码对齐
    'windwp/nvim-autopairs',                           -- 括号补全
    -- 'AndrewRadev/tagalong.vim',                        -- 配对 html/xml 标签
    -- 'alvan/vim-closetag',                              -- 关闭 html/xml 标签
    'FooSoft/vim-argwrap',                             -- 格式化数组、字典、集合 ...

    'lewis6991/gitsigns.nvim',                         -- git
    {
        'sindrets/diffview.nvim',                      -- git diff
        requires = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'ThePrimeagen/harpoon',
        requires = 'nvim-lua/plenary.nvim'
    },
    {
        'winston0410/range-highlight.nvim',
        requires = {
            'winston0410/cmd-parser.nvim'
        }
    },
    {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    },
    -- 启动页/仪表盘
    'mhinz/vim-startify',
    -- 'glepnir/dashboard-nvim',
    -- 状态栏
    {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            'hoob3rt/lualine.nvim',
        }
    },
    -- {
    --     'feline-nvim/feline.nvim',
    --         requires = {
    --         'kyazdani42/nvim-web-devicons',
    --     }
    -- },
    -- 缓冲区/标签区
    {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    },
    -- 'nanozuki/tabby.nvim',
    -- 模糊查找/搜索替换
    {
        'windwp/nvim-spectre',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    },
}

local treesitter = {
    {
        'nvim-treesitter/nvim-treesitter',             -- 代码高亮
        run = ':TSUpdate'
    },
    {
        'p00f/nvim-ts-rainbow',                        -- 彩虹括号
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    {
        'JoosepAlviste/nvim-ts-context-commentstring', -- 注释样式
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    {
        'danymat/neogen',                              -- 文档注释
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    -- {
    --     'nvim-treesitter/nvim-treesitter-textobjects',
    --     requires = 'nvim-treesitter/nvim-treesitter'
    -- },
    -- {
    --     'RRethy/nvim-treesitter-textsubjects',
    --     requires = 'nvim-treesitter/nvim-treesitter'
    -- },
}

local lsp = {

    'simrat39/symbols-outline.nvim',                   -- 大纲

    'nvim-lua/lsp-status.nvim',                        -- 状态栏显示
    'RRethy/vim-illuminate',                           -- 高亮光标下所有单词

    'j-hui/fidget.nvim',                               -- lsp 加载信息
    'ray-x/lsp_signature.nvim',                        -- lsp 函数签名
    'kosayoda/nvim-lightbulb',                         -- lsp 代码操作
    'onsails/lspkind-nvim',                            -- lsp icon
    'tami5/lspsaga.nvim',                              -- lsp UI
    'folke/lsp-colors.nvim',                           -- lsp 颜色

    -- 语言服务器
    'neovim/nvim-lspconfig',                           --
    'williamboman/nvim-lsp-installer',                 --

    'numToStr/Comment.nvim',                           -- 注释

    -- 调试
    -- 'puremourning/vimspector',
    'mfussenegger/nvim-dap',                           --
    {
        'theHamsta/nvim-dap-virtual-text',             --
        requires = {
            'mfussenegger/nvim-dap',
            {
                'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate'
            }
        }
    },
    {
        'rcarriga/nvim-dap-ui',                        --
        requires = {
            'mfussenegger/nvim-dap',
        }
    },

    -- 测试
    'vim-test/vim-test',                               --

    -- 格式化
    'sbdchd/neoformat',                                --

    -- 自动完成
    'hrsh7th/nvim-cmp',                                --
    'hrsh7th/cmp-nvim-lsp',                            --
    'hrsh7th/cmp-buffer',                              --
    'hrsh7th/cmp-path',                                --
    -- 'hrsh7th/cmp-cmdline',                              --

    -- 代码片段
    'hrsh7th/cmp-vsnip',                               --
    'hrsh7th/vim-vsnip',                               --
    'rafamadriz/friendly-snippets',                    --
    -- 'SirVer/ultisnips',
    -- 'honza/vim-snippets',

    -- 代码诊断
    'mfussenegger/nvim-lint',                          --

}

return {
    api,
    basis,
    treesitter,
    lsp,
}
