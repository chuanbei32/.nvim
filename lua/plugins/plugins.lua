local M = {}

local function inserts(plugin, config)
    table.insert(M, {plugin, config})
end

-- Tools {
    inserts('lewis6991/impatient.nvim', 'impatient') -- 插件字节码缓存
    inserts('tweekmonster/startuptime.vim', 'startuptime') -- 启动时间分析
-- }

inserts('nathom/filetype.nvim', nil) -- 文件类型

-- Work Flow {
    inserts('sainnhe/gruvbox-material', 'gruvbox-material') -- 主题配色

    inserts('akinsho/bufferline.nvim', 'bufferline') -- 缓冲区/标签区

    inserts({'nvim-treesitter/nvim-treesitter'}, 'nvim-treesitter')
    inserts('norcalli/nvim-colorizer.lua', 'nvim-colorizer.lua') -- 颜色编码转视觉颜色
    -- inserts('airblade/vim-rooter', 'vim-rooter') -- 自动设置/更改工作目录
    inserts('ethanholz/nvim-lastplace', 'nvim-lastplace') -- 自动定位到上次离开位置
    -- inserts('Pocco81/AutoSave.nvim', 'AutoSave') -- 自动保存文件
    inserts('jghauser/mkdir.nvim', nil) -- 自动创建缺失文件夹
    -- Windows {
        inserts('mhinz/vim-startify', 'vim-startify') -- 启动页/仪表盘
        inserts('sunjon/shade.nvim', 'shade')  -- 非活动窗口亮度降低
        inserts('xiyaowong/nvim-transparent', 'nvim-transparent') -- 透明模式
        inserts('folke/twilight.nvim', 'twilight') -- 专注模式
        inserts('folke/zen-mode.nvim', 'zen-mode') -- 禅定模式
        inserts('simnalamburt/vim-mundo') -- 撤销管理器
        inserts('gennaro-tedesco/nvim-peekup') -- 寄存器/宏管理器
        inserts('skywind3000/asyncrun.vim', 'asyncrun') -- 异步运行管理器
        inserts('skywind3000/asynctasks.vim', 'asynctasks') -- 异步任务管理器
        -- 文件管理器 {
            inserts({'tamago324/lir.nvim', requires = {'nvim-lua/plenary.nvim', 'kyazdani42/nvim-web-devicons'}}, 'lir')
            inserts('kevinhwang91/rnvimr')
            inserts('kyazdani42/nvim-tree.lua')
        -- }
        -- inserts({'preservim/tagbar', requires= 'ludovicchabant/vim-gutentags'}, 'tagbar') -- 标签管理器/自动生成标签
        -- inserts({'rmagatti/session-lens', requires = {'nvim-telescope/telescope.nvim', 'rmagatti/auto-session'}}, 'session-lens') -- 会话管理器、搜索/查找/自动保存、恢复会话
        inserts('akinsho/toggleterm.nvim', 'toggleterm') -- 终端
        inserts('nvim-telescope/telescope.nvim', 'telescope') -- 模糊查找/搜索
        inserts('windwp/nvim-spectre', 'nvim-spectre') -- 模糊查找/搜索、替换
        inserts('folke/todo-comments.nvim', 'todo-comments') -- 待办事项高亮、搜索/查找
        inserts('chentoast/marks.nvim', 'marks') -- 标记/书签、搜索/查找
    -- }

    inserts({'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons'}, 'lualine') -- 状态栏

    inserts('folke/which-key.nvim', 'which-key') -- 映射提示
    inserts('tpope/vim-repeat', 'vim-repeat') -- 重复
    -- 跳转 {
        inserts('phaazon/hop.nvim') -- 跳转提示
        inserts('edluffy/specs.nvim', 'specs') -- 跳转视觉
        inserts('rainbowhxch/accelerated-jk.nvim') -- j/k 加速移动
        inserts('hrsh7th/vim-eft') -- f/t 搜索/查找高亮
        -- inserts('kevinhwang91/nvim-hlslens') -- / 搜索/查找高亮
        inserts('rktjmp/highlight-current-n.nvim', 'highlight-current-n') -- 高亮光标下词
        inserts({
            'winston0410/range-highlight.nvim', -- 范围高亮
            requires = {
                'winston0410/cmd-parser.nvim'
            }
        }, 'range-highlight')
    -- }
    -- 折叠 {
        inserts('jghauser/fold-cycle.nvim') -- 折叠
        inserts({'anuvyklack/pretty-fold.nvim', requires = 'anuvyklack/nvim-keymap-amend'}, 'pretty-fold') -- 折叠预览
    -- }
    -- 注释 {
        inserts('numToStr/Comment.nvim', 'Comment') -- 注释
        inserts({'JoosepAlviste/nvim-ts-context-commentstring', requires = 'nvim-treesitter/nvim-treesitter'}, 'nvim-ts-context-commentstring') -- 注释样式
        inserts({'danymat/neogen', requires = 'nvim-treesitter/nvim-treesitter'}, 'neogen') -- 文档注释
    -- }
    inserts('windwp/nvim-autopairs', 'nvim-autopairs') -- 括号补全
    inserts({'p00f/nvim-ts-rainbow', requires = 'nvim-treesitter/nvim-treesitter'}, 'nvim-ts-rainbow') -- 彩虹括号
    inserts('lukas-reineke/indent-blankline.nvim', 'indent-blankline') -- 缩进显示
    -- inserts('echasnovski/mini.nvim', 'mini')
    inserts('tpope/vim-unimpaired', 'vim-unimpaired')
    -- inserts({'abecodes/tabout.nvim', requires= 'nvim-treesitter/nvim-treesitter'}, 'tabout')
    -- inserts({'nvim-treesitter/nvim-treesitter-textobjects', requires = 'nvim-treesitter/nvim-treesitter'}, 'nvim-treesitter-textobjects') -- 文本对象增强
    -- inserts('wellle/targets.vim') -- 文本对象扩展
    -- inserts('terryma/vim-expand-region') -- 文本区域扩张
    -- inserts({'RRethy/nvim-treesitter-textsubjects', requires = 'nvim-treesitter/nvim-treesitter'}, 'nvim-treesitter-textsubjects') -- 文本对象选择
    -- inserts('mg979/vim-visual-multi') -- 多行操作
    -- inserts('AndrewRadev/switch.vim', 'switch') -- 转换单词为单词的反义词
    -- inserts('AndrewRadev/dsf.vim', 'dsf') -- 删除调用函数
    -- inserts('Vonr/align.nvim', 'align') -- 代码对齐
    -- inserts('junegunn/vim-easy-align') -- 代码对齐
    -- inserts('tpope/vim-surround', 'vim-surround') -- 修改、删除等成对符号
    -- inserts('FooSoft/vim-argwrap', 'vim-argwrap') -- 格式化数组、字典、集合等
    -- inserts({'mizlan/iswap.nvim', requires = 'nvim-treesitter/nvim-treesitter'}, 'iswap.nvim') -- 函数参数、数组数据、字典数据、集合数据等交换
    -- inserts({'windwp/nvim-ts-autotag', requires = 'nvim-treesitter/nvim-treesitter'}, 'nvim-ts-autotag') -- 自动关闭和自动重命名 sgml 标记
    -- inserts({'m-demare/hlargs.nvim', requires = 'nvim-treesitter/nvim-treesitter'}, 'hlargs') -- 突出显示函数参数

    -- Git {
        inserts('lewis6991/gitsigns.nvim', 'gitsigns')
    -- }

    -- LSP「Language Server Protocol」 {
        inserts({'neovim/nvim-lspconfig', requires = {'williamboman/nvim-lsp-installer', 'jose-elias-alvarez/null-ls.nvim'}})
        -- -- DAP「Debug Adapter Protocol」 {
        --     inserts({
        --         'mfussenegger/nvim-dap',
        --         requires = {
        --             'jbyuki/one-small-step-for-vimkind',
        --             'theHamsta/nvim-dap-virtual-text',
        --             'rcarriga/nvim-dap-ui',
        --         }
        --     })
        -- -- }
        inserts('vim-test/vim-test', 'test') -- 测试
        inserts('sbdchd/neoformat', 'neoformat') -- 格式化
        -- 代码诊断 {
            -- inserts('mfussenegger/nvim-lint', 'nvim-lint')
            inserts({
                'folke/trouble.nvim',
                requires = 'kyazdani42/nvim-web-devicons',
            }, 'trouble')
        -- }
        -- relation {
            inserts('simrat39/symbols-outline.nvim', 'symbols-outline') -- LSP 符号信息
            inserts('stevearc/aerial.nvim', 'aerial') -- LSP 代码大纲
            inserts('onsails/lspkind-nvim') -- LSP 图标
            inserts('ray-x/lsp_signature.nvim') -- LSP 签名提示
            -- inserts('nvim-lua/lsp-status.nvim') -- LSP 状态栏信息
            -- inserts('j-hui/fidget.nvim') -- LSP 独立加载信息窗口
            -- inserts('tami5/lspsaga.nvim') -- LSP 界面
            -- inserts('folke/lsp-colors.nvim') -- LSP 颜色
            -- inserts({'RishabhRD/nvim-lsputils', requires = 'RishabhRD/popfix'}, 'hlargs') -- 操作增强
            -- inserts({'kosayoda/nvim-lightbulb', requires = 'antoinemadec/FixCursorHold.nvim'}, 'hlargs') -- 操作增强
            -- inserts({'jubnzv/virtual-types.nvim', config = function() require'lspconfig'.ocamllsp.setup{on_attach=require'virtualtypes'.on_attach} end}, 'hlargs') -- 类型注释显示
            -- inserts({'https://git.sr.ht/~whynothugo/lsp_lines.nvim', config = function() require("lsp_lines").register_lsp_virtual_lines() end}, 'hlargs') --
            -- inserts({'amrbashir/nvim-docs-view', opt = true,
                -- cmd = { "DocsViewToggle" },
                -- config = function()
                --     require("docs-view").setup {
                --     position = "right",
                --     width = 60,
                --     }
                -- end}, 'hlargs') -- 文档视图
            -- 自动完成/代码片段  {
                inserts('hrsh7th/nvim-cmp')
                inserts('hrsh7th/cmp-nvim-lsp')
                inserts('hrsh7th/cmp-buffer')
                inserts('hrsh7th/cmp-path')
                inserts('hrsh7th/cmp-cmdline')
                inserts('hrsh7th/cmp-vsnip')
                inserts('hrsh7th/vim-vsnip')
                inserts('honza/vim-snippets')
                inserts('rafamadriz/friendly-snippets')
                -- inserts({
                --     'quangnguyen30192/cmp-nvim-ultisnips',
                --     requires = {
                --         'SirVer/ultisnips',
                --     },
                --     config = function()
                --         require("cmp_nvim_ultisnips").setup{}
                --     end,
                -- })
                -- inserts({
                --     'L3MON4D3/LuaSnip',
                --     requires = {
                --         'saadparwaiz1/cmp_luasnip',
                --     }
                -- })
                -- inserts({'dcampos/nvim-snippy', requires = 'dcampos/cmp-snippy'}, 'nvim-snippy')
            -- }
        -- }
    -- }
-- }

-- Dependence Config {
    inserts(nil, 'nvim-web-devicons')
-- }

return M
