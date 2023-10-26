vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rebelot/kanagawa.nvim',
        vim.cmd('colorscheme kanagawa-dragon'),
        vim.api.nvim_set_hl(0, "Normal", {guibg=NONE, ctermbg=NONE})
    })

    use("mbbill/undotree")

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use({
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {
            }
        end,
    })
    use{'neoclide/coc.nvim', branch = 'release'}
    use{'williamboman/mason.nvim', run = "Mason.update"}

    use{'williamboman/mason-lspconfig.nvim'}

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }

    -- thank god for tope plugins
    use {'tpope/vim-commentary'}
    use {'tpope/vim-surround'}
    use {'tpope/vim-afterimage'}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end};
    use 'fedepujol/move.nvim'

    use 'ThePrimeagen/harpoon'
end)
