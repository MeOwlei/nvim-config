-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        "nvim-treesitter/nvim-treesitter", 
        run = ":TSUpdate"
    }
    -- LSP Support
    use "neovim/nvim-lspconfig"

    -- Optional: Mason for managing LSP installations
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate"
    }

    use {
        "williamboman/mason-lspconfig.nvim",
        requires = { "neovim/nvim-lspconfig", "williamboman/mason.nvim" }
    }
    use { "hrsh7th/nvim-cmp"}
    use { "hrsh7th/cmp-nvim-lsp"}
    use { "hrsh7th/cmp-buffer"}
    use { "saadparwaiz1/cmp_luasnip"}
    use { "L3MON4D3/LuaSnip"}
end)
