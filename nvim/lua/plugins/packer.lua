vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }	

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
end)
