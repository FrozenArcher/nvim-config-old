require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
		},
		rust = {
			function()
				return {
					exe = "rustfmt --edition 2021",
					stdin = true,
				}
			end,
		},
		-- rust = {
		-- 	require("formatter.filetypes.rust").rustfmt,
		-- },
		python = {
			require("formatter.filetypes.python").autopep8,
		},
		c = {
			require("formatter.filetypes.c").clangformat,
		},
		cpp = {
			require("formatter.filetypes.cpp").clangformat,
		},
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
