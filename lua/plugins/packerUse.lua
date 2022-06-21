local api = {
    'nvim-lua/plenary.nvim',
    'rcarriga/nvim-notify',                            -- 消息通知
}

local tool = {

    'lewis6991/impatient.nvim',                        -- 插件缓存
    'tweekmonster/startuptime.vim',                    -- 启动时间统计
}

local ui = {

    'sainnhe/gruvbox-material',                        -- 配色方案
    'lukas-reineke/indent-blankline.nvim',             -- 缩进显示
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
    -- 'kdheepak/tabline.nvim',
    -- 'nanozuki/tabby.nvim',
    'RRethy/vim-illuminate',                           -- 高亮光标下所有单词
    'sunjon/shade.nvim',                               -- 非活动窗口亮度降低
    'hrsh7th/vim-eft',                                 -- f/t 搜索/查找高亮
    'kevinhwang91/nvim-hlslens',                       -- / 搜索/查找高亮
    'norcalli/nvim-colorizer.lua',                     -- 颜色模式表示方式转换为可视颜色表示方式
    {
        'winston0410/range-highlight.nvim',            -- 命令行范围高亮
        requires = {
            'winston0410/cmd-parser.nvim'
        }
    },
    'folke/zen-mode.nvim',                             -- 禅模式
}

local basis = {

    'tpope/vim-repeat',                                -- 重复
    'folke/which-key.nvim',                            -- 提示

    'nathom/filetype.nvim',                            -- 文件类型

    'windwp/nvim-autopairs',                           -- 括号补全
    -- 'Pocco81/AutoSave.nvim',                            -- 自动保存文件
    -- 'airblade/vim-rooter',                              -- 设置/更改工作目录
    'ethanholz/nvim-lastplace',                        -- 自动定位到上次离开位置
    'folke/todo-comments.nvim',                        -- 待办事项高亮、搜索/查找
    {
        'windwp/nvim-spectre',                         -- 模糊查找/搜索替换
        requires = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        'nvim-telescope/telescope.nvim',               -- 模糊查找/搜索
        requires = {
            'nvim-lua/plenary.nvim'
        }
    },
    -- git
    'lewis6991/gitsigns.nvim',                         -- git
    -- {
    --     'sindrets/diffview.nvim',                      -- git diff
    --     requires = {
    --         'nvim-lua/plenary.nvim'
    --     }
    -- },
    {
        'preservim/tagbar',                            -- 标签管理
        requires = {
            'ludovicchabant/vim-gutentags',            -- 自动生成标签
        }
    },
    'akinsho/toggleterm.nvim',                         -- 终端管理
    'chentoast/marks.nvim',                            -- 标记/书签管理
    'kyazdani42/nvim-tree.lua',                        -- 文件管理
    'simnalamburt/vim-mundo',                          -- 撤销管理
    'gennaro-tedesco/nvim-peekup',                     -- 寄存器/宏管理
    'skywind3000/asyncrun.vim',                        -- 异步运行
    'skywind3000/asynctasks.vim',                      -- 异步任务
    {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    },

    'tpope/vim-unimpaired',
    -- 'echasnovski/mini.nvim',
    'wellle/targets.vim',                              -- 文本对象扩展
    'terryma/vim-expand-region',                       -- 文本区域扩张
    'mg979/vim-visual-multi',                          -- 多游标
    'AndrewRadev/switch.vim',                          -- 转换单词为单词的反义词
    'AndrewRadev/dsf.vim',                             -- 删除调用函数
    'junegunn/vim-easy-align',                         -- 代码对齐
    'tpope/vim-surround',                              -- 修改、删除等成对符号
    'FooSoft/vim-argwrap',                             -- 格式化数组、字典、集合等
    {
        'rmagatti/session-lens',                       -- 会话管理
        requires = {
            'nvim-telescope/telescope.nvim',
            "rmagatti/auto-session",                   -- 自动保存/恢复会话
        }
    },
    'phaazon/hop.nvim',                                -- 跳转
    -- {
    --     'ThePrimeagen/harpoon',
    --     requires = 'nvim-lua/plenary.nvim'
    -- },
    'rainbowhxch/accelerated-jk.nvim',                 -- j/k 加速移动
    'abecodes/tabout.nvim',                            --
    {
        'anuvyklack/pretty-fold.nvim',                 -- 折叠预览
        requires = 'anuvyklack/nvim-keymap-amend'
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
    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    {
        'RRethy/nvim-treesitter-textsubjects',
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    {
        'windwp/nvim-ts-autotag',                      -- 自动关闭和自动重命名 sgml 标记
        requires = 'nvim-treesitter/nvim-treesitter'
    },
    {
        'mizlan/iswap.nvim',                           -- 函数参数、数组数据、字典数据、集合数据等交换
        requires = 'nvim-treesitter/nvim-treesitter'
    },


}

local lsp = {

    'simrat39/symbols-outline.nvim',                   -- 符号管理

    'nvim-lua/lsp-status.nvim',                        -- lsp 信息显示状态栏
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
    -- {
    --     'rcarriga/nvim-dap-ui',                        --
    --     requires = {
    --         'mfussenegger/nvim-dap',
    --     }
    -- },

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
    tool,
    ui,
    basis,
    treesitter,
    lsp,
}
