local use = {}
local apply = {}

table.insert(use, 'nvim-lua/plenary.nvim')

table.insert(use, 'hoob3rt/lualine.nvim')

table.insert(use, 'kyazdani42/nvim-web-devicons') -- Icon
table.insert(apply, 'nvim-web-devicons')

table.insert(use, 'tweekmonster/startuptime.vim') -- 启动时间分析
table.insert(apply, 'startuptime')

table.insert(use, 'lewis6991/impatient.nvim') -- 插件字节码缓存
table.insert(apply, 'impatient')

-- 'echasnovski/mini.nvim',

-- Treesitter {

    table.insert(use, {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = {
            'p00f/nvim-ts-rainbow', -- 彩虹括号
            'windwp/nvim-ts-autotag', -- 自动关闭和自动重命名 sgml 标记
            'mizlan/iswap.nvim', -- 函数参数、数组数据、字典数据、集合数据等交换
            'nvim-treesitter/nvim-treesitter-textobjects', -- 文本对象增强
            'RRethy/nvim-treesitter-textsubjects', -- 文本对象选择
            'm-demare/hlargs.nvim', --
        }
    })
    table.insert(apply, 'nvim-treesitter')
    table.insert(apply, 'nvim-ts-rainbow')
    table.insert(apply, 'nvim-ts-autotag')
    table.insert(apply, 'iswap')
    table.insert(apply, 'nvim-treesitter-textobjects')
    table.insert(apply, 'nvim-treesitter-textsubjects')
    table.insert(apply, 'hlargs')

-- }

-- 语言服务器
-- LSP「Language Server Protocol」 {

    table.insert(use, {
            'neovim/nvim-lspconfig', -- 语言服务器
            requires = {
                'williamboman/nvim-lsp-installer', -- 自动安装 lsp
                'jose-elias-alvarez/null-ls.nvim', -- 自定义 lsp 安装
                'nvim-lua/lsp-status.nvim', -- lsp 状态栏信息
                {
                    'RishabhRD/nvim-lsputils', -- lsp 操作增强
                    requires = {
                        'RishabhRD/popfix'
                    }
                },
                'j-hui/fidget.nvim', -- lsp 加载信息独立窗口
                {
                    'kosayoda/nvim-lightbulb', -- LSP 代码操作
                    requires = {
                        'antoinemadec/FixCursorHold.nvim'
                    }
                },
                'onsails/lspkind-nvim', -- lsp 图标
                'ray-x/lsp_signature.nvim', -- 签名提示
                {
                    'jubnzv/virtual-types.nvim', -- 类型注释显示
                    config = function()
                        require'lspconfig'.ocamllsp.setup{on_attach=require'virtualtypes'.on_attach}
                    end
                },
                {
                    'https://git.sr.ht/~whynothugo/lsp_lines.nvim', --
                    config = function()
                        require("lsp_lines").register_lsp_virtual_lines()
                    end
                },
                {
                    "amrbashir/nvim-docs-view", -- 文档视图
                    opt = true,
                    cmd = { "DocsViewToggle" },
                    config = function()
                        require("docs-view").setup {
                        position = "right",
                        width = 60,
                        }
                    end
                },
                'tami5/lspsaga.nvim', -- 界面
                'folke/lsp-colors.nvim' -- 颜色
            }
        })
    table.insert(apply, 'lsp_lines')
    table.insert(apply, 'lsp-colors')
    table.insert(apply, 'lspsaga')

    -- 自动完成/代码片段 {

        table.insert(use, {
            'hrsh7th/nvim-cmp',
            requires = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'hrsh7th/cmp-cmdline',
                --
                'hrsh7th/cmp-vsnip',
                'hrsh7th/vim-vsnip',
                --
                -- 'dcampos/nvim-snippy',
                -- 'dcampos/cmp-snippy',
                -- --
                -- 'honza/vim-snippets',
                -- 'rafamadriz/friendly-snippets',
                --
                {
                    'quangnguyen30192/cmp-nvim-ultisnips',
                    requires = {
                        'SirVer/ultisnips',
                    },
                    config = function()
                        require("cmp_nvim_ultisnips").setup{}
                    end,
                },
                -- {
                --     'tzachar/cmp-tabnine',
                --     run='./install.sh'
                -- },
                {
                    'L3MON4D3/LuaSnip',
                    requires = {
                        'saadparwaiz1/cmp_luasnip',
                    }
                },

            }
        })
        table.insert(apply, 'nvim-cmp')

    -- }

    -- 符号/大纲/标签 {

        -- lsp 符号信息
        table.insert(use, 'simrat39/symbols-outline.nvim')
        table.insert(apply, 'symbols-outline')
        -- 代码大纲
        table.insert(use, 'stevearc/aerial.nvim')
        table.insert(apply, 'aerial')
        --
        table.insert(use, {
                'preservim/tagbar',                            -- 标签管理
                requires = {
                    'ludovicchabant/vim-gutentags',            -- 自动生成标签
                }
            })
        table.insert(apply, 'tagbar')
        table.insert(apply, 'vim-gutentags')

    -- }

-- }

-- 调试服务器
-- DAP「Debug Adapter Protocol」 {

    table.insert(use, {
            'mfussenegger/nvim-dap',
            requires = {
                'jbyuki/one-small-step-for-vimkind',
                'theHamsta/nvim-dap-virtual-text',
                'rcarriga/nvim-dap-ui',
            }
        })
-- }

-- 注释 {

    table.insert(use, 'numToStr/Comment.nvim') -- 代码注释
    table.insert(apply, 'Comment')
    table.insert(use, 'JoosepAlviste/nvim-ts-context-commentstring') -- 注释样式
    table.insert(apply, 'nvim-ts-context-commentstring')
    table.insert(use, 'danymat/neogen') -- 代码文档注释
    table.insert(apply, 'neogen')

-- }

-- 测试
table.insert(use, 'vim-test/vim-test')
table.insert(apply, 'vim-test')

-- 代码诊断
table.insert(use, 'mfussenegger/nvim-lint')
table.insert(apply, 'nvim-lint')

-- 格式化
table.insert(use, 'sbdchd/neoformat')
table.insert(apply, 'neoformat')

table.insert(use, 'akinsho/toggleterm.nvim') -- 终端
table.insert(apply, 'toggleterm')
table.insert(use, 'chentoast/marks.nvim') -- 标记/书签
table.insert(apply, 'marks')
table.insert(use, 'kevinhwang91/rnvimr') -- 文件
table.insert(apply, 'rnvimr')
-- table.insert(use, 'kyazdani42/nvim-tree.lua') -- 文件
-- table.insert(apply, 'nvim-tree')
table.insert(use, 'simnalamburt/vim-mundo') -- 撤销
table.insert(apply, 'vim-mundo')
table.insert(use, 'gennaro-tedesco/nvim-peekup') -- 寄存器/宏
table.insert(apply, 'nvim-peekup')
table.insert(use, 'windwp/nvim-spectre') -- 模糊查找/搜索、替换
table.insert(apply, 'nvim-spectre')
table.insert(use, 'nvim-telescope/telescope.nvim') -- 模糊查找/搜索
table.insert(apply, 'telescope')

-- 版本控制 {
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
-- }


table.insert(use, 'sainnhe/gruvbox-material') -- 主题配色
table.insert(apply, 'gruvbox-material')
table.insert(use, 'sunjon/shade.nvim')  -- 非活动窗口亮度降低
table.insert(apply, 'shade')
table.insert(use, 'folke/twilight.nvim') -- 专注
table.insert(apply, 'twilight')
table.insert(use, 'folke/zen-mode.nvim') -- 禅模式
table.insert(apply, 'zen-mode')
table.insert(use, 'xiyaowong/nvim-transparent') -- 透明
table.insert(apply, 'nvim-transparent')
table.insert(use, 'norcalli/nvim-colorizer.lua') -- 视觉颜色
table.insert(apply, 'nvim-colorizer')

table.insert(use, 'mhinz/vim-startify') -- 启动页/仪表盘
table.insert(apply, 'vim-startify')
table.insert(use, 'akinsho/bufferline.nvim') -- 缓冲区/标签区
table.insert(apply, 'bufferline')
table.insert(use, {
        'nvim-lualine/lualine.nvim', -- 状态栏
        requires = {
            'kyazdani42/nvim-web-devicons',
            'hoob3rt/lualine.nvim',
        }
    })
table.insert(apply, 'lualine')

table.insert(use, 'lukas-reineke/indent-blankline.nvim') -- 缩进显示
table.insert(apply, 'indent-blankline')
table.insert(use, 'hrsh7th/vim-eft') -- f/t 搜索/查找高亮
table.insert(apply, 'vim-eft')
table.insert(use, 'rainbowhxch/accelerated-jk.nvim') -- j/k 加速移动
table.insert(apply, 'accelerated-jk')
table.insert(use, 'edluffy/specs.nvim') -- 跳转视觉
table.insert(apply, 'specs')
-- -- / 搜索/查找高亮
-- table.insert(use, 'kevinhwang91/nvim-hlslens')
-- table.insert(apply, 'nvim-hlslens')

--  --
-- table.insert(use, 'rktjmp/highlight-current-n.nvim')
-- table.insert(apply, 'highlight-current-n.nvim')

table.insert(use, {
        'winston0410/range-highlight.nvim', -- 范围高亮
        requires = {
            'winston0410/cmd-parser.nvim'
        }
    })
table.insert(apply, 'range-highlight')

table.insert(use, {
        'anuvyklack/pretty-fold.nvim', -- 折叠预览
        requires = 'anuvyklack/nvim-keymap-amend'
    })
table.insert(apply, 'pretty-fold')

--
table.insert(use, 'tpope/vim-unimpaired')
table.insert(apply, 'vim-unimpaired')
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
-- table.insert(use, {
--         'rmagatti/session-lens', -- 会话管理
--         requires = {
--             'nvim-telescope/telescope.nvim',
--             "rmagatti/auto-session",                   -- 自动保存/恢复会话
--         }
--     })
-- table.insert(apply, 'session-lens')
table.insert(use, 'phaazon/hop.nvim') -- 跳转
table.insert(apply, 'hop')
table.insert(use, 'folke/which-key.nvim') -- 映射提示
table.insert(apply, 'which-key')
table.insert(use, 'jghauser/mkdir.nvim') -- 创建不存在的目录
table.insert(use, 'jghauser/fold-cycle.nvim') -- 折叠
table.insert(apply, 'fold-cycle')
-- {

    table.insert(use, 'nathom/filetype.nvim') -- 文件类型
    table.insert(apply, 'filetype')

-- }
return {
    ['use'] = use,
    ['apply'] = apply
}
