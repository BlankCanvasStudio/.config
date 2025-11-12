vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use('BurntSushi/ripgrep')
    use {
       'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { {'nvim-lua/plenary.nvim'}}
    }	
    -- use{'nvim-telescope/telescope.nvim', 
    --     requires = {'nvim-lua/plenary.nvim'}
    -- }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('christoomey/vim-tmux-navigator')
    use('nvim-tree/nvim-web-devicons')
    use('nvim-tree/nvim-tree.lua')
    -- use('folke/tokyonight.nvim')
    use('navarasu/onedark.nvim')
    use{'nvim-lualine/lualine.nvim', 
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use('lewis6991/gitsigns.nvim')
    -- use('airblade/vim-gitgutter')
    --
    --
    -- use {
    --     'VonHeikemen/lsp-zero.nvim',
    --     branch = 'v3.x',
    --     requires = {
    --         --- Uncomment the two plugins below if you want to manage the language servers from neovim
    --         {'williamboman/mason.nvim'},
    --         {'williamboman/mason-lspconfig.nvim'},

    --         {'neovim/nvim-lspconfig'},
    --         {'hrsh7th/nvim-cmp'},
    --         {'hrsh7th/cmp-nvim-lsp'},
    --         {'L3MON4D3/LuaSnip'},
    --     }
    -- }
end)
