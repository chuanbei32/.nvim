local use = {}
local apply = {}

-- 'echasnovski/mini.nvim',
-- 'tpope/vim-unimpaired',

-- 启动时间分析
table.insert(use, 'tweekmonster/startuptime.vim')
table.insert(apply, 'startuptime')

-- 插件字节码缓存
table.insert(use, 'lewis6991/impatient.nvim')
table.insert(apply, 'impatient')

-- Sofeware itself enhancement
-- {
    -- Global {
        -- 主题配色
        table.insert(use, 'sainnhe/gruvbox-material')
        table.insert(apply, 'gruvbox-material')
        -- 启动页/仪表盘
        table.insert(use, 'mhinz/vim-startify')
        table.insert(apply, 'vim-startify')
        -- 非活动窗口亮度降低
        table.insert(use, 'sunjon/shade.nvim')
        table.insert(apply, 'shade')
        -- 文件类型
        table.insert(use, 'nathom/filetype.nvim')
        table.insert(apply, 'filetype')
        -- 映射提示
        table.insert(use, 'folke/which-key.nvim')
        table.insert(apply, 'which-key')
    -- }
    -- Header {
        table.insert(use, {
                'akinsho/bufferline.nvim', -- 缓冲区/标签区
                requires = 'kyazdani42/nvim-web-devicons' -- 图标
            })
        table.insert(apply, 'bufferline')
    -- }
    -- Main {
        -- 缩进显示
        table.insert(use, 'lukas-reineke/indent-blankline.nvim')
        table.insert(apply, 'indent-blankline')
        table.insert(use, {
                'p00f/nvim-ts-rainbow', -- 彩虹括号
                requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
            })
        table.insert(apply, 'nvim-ts-rainbow')
        -- 颜色模式表示方式转换为可视颜色表示方式
        table.insert(use, 'norcalli/nvim-colorizer.lua')
        table.insert(apply, 'nvim-colorizer')
        -- f/t 搜索/查找高亮
        table.insert(use, 'hrsh7th/vim-eft')
        table.insert(apply, 'vim-eft')
        -- j/k 加速移动
        table.insert(use, 'rainbowhxch/accelerated-jk.nvim')
        table.insert(apply, 'accelerated-jk')
        table.insert(use, {
                'anuvyklack/pretty-fold.nvim', -- 折叠预览
                requires = 'anuvyklack/nvim-keymap-amend'
            })
        table.insert(apply, 'pretty-fold')
        -- 代码高亮
        table.insert(use, {
                'nvim-treesitter/nvim-treesitter', -- 突出显示
                run = ':TSUpdate'
            })
        table.insert(apply, 'nvim-treesitter')
    -- }
    -- Footer {
        -- 状态栏 {
            table.insert(use, {
                    'nvim-lualine/lualine.nvim',
                    requires = {
                        'kyazdani42/nvim-web-devicons',
                        'hoob3rt/lualine.nvim',
                    }
                })
            table.insert(apply, 'lualine')
        -- }
        -- 命令行{
            -- / 搜索/查找高亮
            table.insert(use, 'kevinhwang91/nvim-hlslens')
            table.insert(apply, 'nvim-hlslens')
            table.insert(use, {
                    'winston0410/range-highlight.nvim', -- 搜索/查找/替换范围高亮
                    requires = {
                        'winston0410/cmd-parser.nvim'
                    }
                })
            table.insert(apply, 'range-highlight')
        -- }
    -- }
-- }

-- Work flow enhancement
-- {
    -- Git {
        table.insert(use, 'lewis6991/gitsigns.nvim')
        table.insert(apply, 'gitsigns')
        -- {
        --     'sindrets/diffview.nvim',                      -- git diff
        --     requires = {
        --         'nvim-lua/plenary.nvim'
        --     }
        -- }
    -- }
    -- {
        -- 括号补全
        table.insert(use, 'windwp/nvim-autopairs')
        table.insert(apply, 'nvim-autopairs')
        -- 重复
        table.insert(use, 'tpope/vim-repeat')
        table.insert(apply, 'vim-repeat')
        --
        table.insert(use, 'abecodes/tabout.nvim')
        table.insert(apply, 'tabout')
        -- -- 自动保存文件
        -- table.insert(use, 'Pocco81/AutoSave.nvim')
        -- table.insert(apply, 'AutoSave')
        -- -- 设置/更改工作目录
        -- table.insert(use, 'airblade/vim-rooter')
        -- table.insert(apply, 'vim-rooter')
        -- 自动定位到上次离开位置
        table.insert(use, 'ethanholz/nvim-lastplace')
        table.insert(apply, 'nvim-lastplace')
        -- 待办事项高亮、搜索/查找
        table.insert(use, 'folke/todo-comments.nvim')
        table.insert(apply, 'todo-comments')
        table.insert(use, {
                'windwp/nvim-spectre', -- 模糊查找/搜索替换
                requires = {
                    'nvim-lua/plenary.nvim'
                }
            })
        table.insert(apply, 'nvim-spectre')
        table.insert(use, {
                'nvim-telescope/telescope.nvim',  -- 模糊查找/搜索
                requires = {
                    'nvim-lua/plenary.nvim'
                }
            })
        table.insert(apply, 'telescope')
        -- 终端管理
        table.insert(use, 'akinsho/toggleterm.nvim')
        table.insert(apply, 'toggleterm')
        -- 标记/书签管理
        table.insert(use, 'chentoast/marks.nvim')
        table.insert(apply, 'marks')
        -- 文件管理
        table.insert(use, 'kyazdani42/nvim-tree.lua')
        table.insert(apply, 'nvim-tree')
        -- 撤销管理
        table.insert(use, 'simnalamburt/vim-mundo')
        table.insert(apply, 'vim-mundo')
        -- 寄存器/宏管理
        table.insert(use, 'gennaro-tedesco/nvim-peekup')
        table.insert(apply, 'nvim-peekup')
        -- 异步运行
        table.insert(use, 'skywind3000/asyncrun.vim')
        table.insert(apply, 'asyncrun')
        -- 异步任务
        table.insert(use, 'skywind3000/asynctasks.vim')
        table.insert(apply, 'asynctasks')
        --
        table.insert(use, {
                'folke/trouble.nvim',
                requires = 'kyazdani42/nvim-web-devicons',
            })
        table.insert(apply, 'trouble')
        -- 文本对象扩展
        table.insert(use, 'wellle/targets.vim')
        table.insert(apply, 'targets')
        -- 文本区域扩张
        table.insert(use, 'terryma/vim-expand-region')
        table.insert(apply, 'vim-expand-region')
        -- 多游标
        table.insert(use, 'mg979/vim-visual-multi')
        table.insert(apply, 'vim-visual-multi')
        -- 转换单词为单词的反义词
        table.insert(use, 'AndrewRadev/switch.vim')
        table.insert(apply, 'switch')
        -- 删除调用函数
        table.insert(use, 'AndrewRadev/dsf.vim')
        table.insert(apply, 'dsf')
        -- 代码对齐
        table.insert(use, 'junegunn/vim-easy-align')
        table.insert(apply, 'vim-easy-align')
        -- 修改、删除等成对符号
        table.insert(use, 'tpope/vim-surround')
        table.insert(apply, 'vim-surround')
        -- 格式化数组、字典、集合等
        table.insert(use, 'FooSoft/vim-argwrap')
        table.insert(apply, 'vim-argwrap')
        table.insert(use, {
                'rmagatti/session-lens', -- 会话管理
                requires = {
                    'nvim-telescope/telescope.nvim',
                    "rmagatti/auto-session",                   -- 自动保存/恢复会话
                }
            })
        table.insert(apply, 'session-lens')
        -- 跳转
        table.insert(use, 'phaazon/hop.nvim')
        table.insert(apply, 'hop')
        table.insert(use, {
                'windwp/nvim-ts-autotag', -- 自动关闭和自动重命名 sgml 标记
                requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
            })
        table.insert(apply, 'nvim-ts-autotag')
        table.insert(use, {
                'mizlan/iswap.nvim', -- 函数参数、数组数据、字典数据、集合数据等交换
                requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
            })
        table.insert(apply, 'iswap')
        --
        table.insert(use, {
                'nvim-treesitter/nvim-treesitter-textobjects',
                requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
            })
        table.insert(apply, 'nvim-treesitter-textobjects')
        --
        table.insert(use, {
                'RRethy/nvim-treesitter-textsubjects',
                requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
            })
        table.insert(apply, 'nvim-treesitter-textsubjects')
    -- }
-- }

-- {
--     'preservim/tagbar',                            -- 标签管理
--     requires = {
--         'ludovicchabant/vim-gutentags',            -- 自动生成标签
--     }
-- }
-- 符号管理
table.insert(use, 'simrat39/symbols-outline.nvim')
table.insert(apply, 'symbols-outline')
-- lsp 信息显示状态栏
table.insert(use, 'nvim-lua/lsp-status.nvim')
table.insert(apply, 'lsp-status')
-- lsp 加载信息
table.insert(use, 'j-hui/fidget.nvim')
table.insert(apply, 'fidget')
-- lsp 函数签名
table.insert(use, 'ray-x/lsp_signature.nvim')
table.insert(apply, 'lsp_signature')
-- lsp 代码操作
table.insert(use, 'kosayoda/nvim-lightbulb')
table.insert(apply, 'nvim-lightbulb')
-- lsp icon
table.insert(use, 'onsails/lspkind-nvim')
table.insert(apply, 'lspkind-nvim')
-- lsp UI
table.insert(use, 'tami5/lspsaga.nvim')
table.insert(apply, 'lspsaga')
-- lsp 颜色
table.insert(use, 'folke/lsp-colors.nvim')
table.insert(apply, 'lsp-colors')
-- 语言服务器
table.insert(use, {
        'neovim/nvim-lspconfig',
        requires = {
            'williamboman/nvim-lsp-installer',
        }
    })
table.insert(apply, 'nvim-lspconfig')
-- 注释样式
table.insert(use, {
        'JoosepAlviste/nvim-ts-context-commentstring',
        requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
    })
table.insert(apply, 'nvim-ts-context-commentstring')
-- 注释
table.insert(use, 'numToStr/Comment.nvim')
table.insert(apply, 'Comment')
-- 文档注释
table.insert(use, {
        'danymat/neogen',
        requires = 'nvim-treesitter/nvim-treesitter' -- 突出显示
    })
table.insert(apply, 'neogen')
-- 测试
table.insert(use, 'vim-test/vim-test')
table.insert(apply, 'vim-test')
-- 代码诊断
table.insert(use, 'mfussenegger/nvim-lint')
table.insert(apply, 'nvim-lint')
-- 格式化
table.insert(use, 'sbdchd/neoformat')
table.insert(apply, 'neoformat')
-- 自动完成
table.insert(use, 'hrsh7th/nvim-cmp')
table.insert(use, 'hrsh7th/cmp-nvim-lsp')
table.insert(use, 'hrsh7th/cmp-buffer')
table.insert(use, 'hrsh7th/cmp-path')
-- table.insert(use, 'hrsh7th/cmp-cmdline')
-- 代码片段
table.insert(use, 'hrsh7th/cmp-vsnip')
table.insert(use, 'hrsh7th/vim-vsnip')
table.insert(use, 'rafamadriz/friendly-snippets')
-- table.insert(use, 'SirVer/ultisnips')
-- table.insert(use, 'honza/vim-snippets')
-- 调试
-- 'puremourning/vimspector',
-- table.insert(use, 'mfussenegger/nvim-dap')
-- table.insert(apply, 'nvim-dap')
-- table.insert(use, {
--     'theHamsta/nvim-dap-virtual-text',
--     requires = {
--         'mfussenegger/nvim-dap',
--         {
--             'nvim-treesitter/nvim-treesitter', -- 突出显示
--             run = ':TSUpdate'
--         }
--     }
-- })
-- table.insert(apply, 'nvim-dap-virtual-text')
-- table.insert(use, {
--     'rcarriga/nvim-dap-ui',
--     requires = {
--         'mfussenegger/nvim-dap',
--     }
-- })
-- table.insert(apply, 'nvim-dap-ui')
-- -- 禅模式
-- table.insert(use, 'folke/zen-mode.nvim')
-- table.insert(apply, 'zen-mode')

return {
    ['use'] = use,
    ['apply'] = apply
}
