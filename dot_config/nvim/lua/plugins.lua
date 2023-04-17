return require('packer').startup(function(use)
	-- Configurations will go here soon
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

	-- Hrsh7th Code Completion Suite
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup {}
		end
	}
	-- Dracula theme for styling
	use 'Mofiqul/dracula.nvim'

	-- Lualine information / Status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	
	--theme from folke
	use 'folke/tokyonight.nvim'

	--base16 themes from rrethy
	use 'RRethy/nvim-base16'
	
	--256 colorscheme theme
	--use {'Iron-E/nvim-highlite', branch = 'master-v3'}
	
	--mini.nvim themes and other Configurations
	use 'echasnovski/mini.nvim'
	
	--catpuccin themes
	use { "catppuccin/nvim", as = "catppuccin" }

end)
