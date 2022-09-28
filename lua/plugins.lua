return require("packer").startup(function(use)
	-- Coding
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("jiangmiao/auto-pairs")
	use("fladson/vim-kitty")
	use("numToStr/Comment.nvim")

	-- Utils
	use("mhartington/formatter.nvim")
	use({
		"pianocomposer321/yabs.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("LoricAndre/OneTerm.nvim")
	use("numToStr/FTerm.nvim")
	use("tpope/vim-fugitive")
	use("norcalli/nvim-colorizer.lua")
	use({
		"lewis6991/gitsigns.nvim",
		tag = "release",
	})
	use("mfussenegger/nvim-dap")

	-- Visual
	use("kyazdani42/nvim-web-devicons")
	use("sainnhe/edge")
	use("folke/tokyonight.nvim")
	use("rafamadriz/neon")

	-- Views
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "akinsho/bufferline.nvim", tag = "v2.*" })
	use({ "neoclide/coc.nvim", branch = "release" })
	use("nvim-lualine/lualine.nvim")
	use("preservim/tagbar")
	use("petertriho/nvim-scrollbar")
	use("goolord/alpha-nvim")
	use("NTBBloodbath/galaxyline.nvim")
end)
