local api = {

    'rcarriga/nvim-notify',                            -- 消息通知
}

local basis = {

    'lewis6991/impatient.nvim',                        -- 插件缓存
    'tweekmonster/startuptime.vim',                    -- 启动时间统计


    'nathom/filetype.nvim',                            -- 文件类型

    'sainnhe/gruvbox-material',                        -- 配色方案
    'lukas-reineke/indent-blankline.nvim',             -- 缩进显示
    'mhinz/vim-startify',                              -- 启动页/仪表盘
    'sunjon/shade.nvim',                               -- 非活动窗口亮度降低
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


    'windwp/nvim-autopairs',                           -- 括号补全
    'kevinhwang91/nvim-hlslens',                       -- 搜索/查找高亮
    'folke/todo-comments.nvim',                        -- 待办事项高亮、搜索/查找
    'ethanholz/nvim-lastplace',                        -- 自动定位到上次离开位置
    'norcalli/nvim-colorizer.lua',                     -- 颜色模式表示方式转换为可视颜色表示方式

    'tpope/vim-repeat',                                -- 重复映射、操作等
    'folke/which-key.nvim',                            -- 映射提示

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
    {
        'sindrets/diffview.nvim',                      -- git diff
        requires = {
            'nvim-lua/plenary.nvim'
        }
    },
    'preservim/tagbar',                                -- 标签管理
    'ludovicchabant/vim-gutentags',                    -- 自动生成标签
    'akinsho/toggleterm.nvim',                         -- 终端管理
    'chentoast/marks.nvim',                            -- 标记/书签管理
    'kyazdani42/nvim-tree.lua',                        -- 文件管理
    'simnalamburt/vim-mundo',                          -- 撤销管理
    'gennaro-tedesco/nvim-peekup',                     -- 寄存器/宏管理

    -- 'echasnovski/mini.nvim',
    'tpope/vim-unimpaired',
    'wellle/targets.vim',                              -- 文本对象扩展
    'terryma/vim-expand-region',                       -- 文本区域扩张
    'mg979/vim-visual-multi',                          -- 多游标
    'AndrewRadev/switch.vim',                          -- 转换单词为单词的反义词
    'AndrewRadev/dsf.vim',                             -- 删除调用函数
    'junegunn/vim-easy-align',                         -- 代码对齐
    'tpope/vim-surround',                              -- 修改、删除等成对符号
    -- 'AndrewRadev/tagalong.vim',                        -- 配对 html/xml 标签
    -- 'alvan/vim-closetag',                              -- 关闭 html/xml 标签
    'FooSoft/vim-argwrap',                             -- 格式化数组、字典、集合 ...
    -- 'airblade/vim-rooter',                              -- 设置/更改工作目录
    -- 'Pocco81/AutoSave.nvim',                            -- 自动保存文件
    {
        'rmagatti/session-lens',                       -- 会话管理
        requires = {
            'nvim-telescope/telescope.nvim',
            "rmagatti/auto-session",
        }
    },
    'rmagatti/auto-session',                           -- 自动保存/恢复会话
    'phaazon/hop.nvim',                                -- 跳转
    'hrsh7th/vim-eft',                                 -- f/t 高亮
    'rainbowhxch/accelerated-jk.nvim',                 -- j/k 加速移动
    'skywind3000/asyncrun.vim',                        -- 异步运行
    'skywind3000/asynctasks.vim',                      -- 异步任务
    'RRethy/vim-illuminate',                           -- 高亮光标下所有单词
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
