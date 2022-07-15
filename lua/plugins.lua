return require("packer").startup(function(use)
	use({ "kyazdani42/nvim-tree.lua" })
	use("kyazdani42/nvim-web-devicons")
	use({ "akinsho/bufferline.nvim", tag = "v2.*" })
	use("sainnhe/edge")
	use("folke/tokyonight.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
    use {'neoclide/coc.nvim', branch = 'release'}
end)
