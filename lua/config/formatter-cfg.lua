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
		-- c = {
		-- 	function()
		-- 		return {
		-- 			exe = "clang-format --style=file --fallback-style=LLVM",
		-- 			stdin = true,
		-- 		}
		-- 	end,
		-- },
		-- cpp = {
		-- 	function()
		-- 		return {
		-- 			exe = "clang-format --style=file --fallback-style=LLVM",
		-- 			stdin = true,
		-- 		}
		-- 	end,
		-- },
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
