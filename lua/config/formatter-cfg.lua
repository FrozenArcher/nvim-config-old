require("formatter").setup({
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
        },
        rust = {
            require("formatter.filetypes.rust").rustfmt,
        }
    },
})
