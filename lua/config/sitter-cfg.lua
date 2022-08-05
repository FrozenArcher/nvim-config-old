require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"c",
		"cmake",
		"cpp",
		"d",
		"dockerfile",
		"fish",
		"go",
		"gomod",
		"gowork",
		"html",
		"http",
		"java",
		"javascript",
		"json",
		"json5",
		"make",
		"ninja",
		"python",
		"lua",
		"rust",
		"vim",
		"toml",
		"yaml",
		"sql",
	},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
})

local vim = vim
-- 开启 Folding
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
vim.wo.foldlevel = 99
