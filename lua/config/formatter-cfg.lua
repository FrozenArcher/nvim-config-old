local c_cpp_format_cmd =
	'clang-format --style="{BasedOnStyle: Google, IndentWidth: 4, TabWidth: 4}"'

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
		python = {
			require("formatter.filetypes.python").autopep8,
		},
		c = {
			function()
				return {
					exe = c_cpp_format_cmd,
					stdin = true,
				}
			end,
		},
		cpp = {
			function()
				return {
					exe = c_cpp_format_cmd,
					stdin = true,
				}
			end,
		},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
