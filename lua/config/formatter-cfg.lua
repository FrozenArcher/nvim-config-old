require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
		},
		-- rust = {
		-- 	function()
		-- 		return {
		-- 			exe = "cargo",
		-- 			args = {
		-- 				"+nightly",
		-- 				"fmt",
		-- 			},
		-- 			stdin = true,
		-- 		}
		-- 	end,
		-- },
		python = {
			require("formatter.filetypes.python").autopep8,
		},
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
