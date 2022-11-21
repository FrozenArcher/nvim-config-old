local vim = vim
local option = { noremap = true, silent = true }

local function nmap(key, command, opts)
	vim.api.nvim_set_keymap("n", key, command .. " <CR>", opts)
end

-- NeoVim command
nmap("<A-s>", ":source %", { noremap = true })

-- NvimTree
nmap("<A-n>", ":NvimTreeToggle", option)
nmap("<A-m>", ":NvimTreeFindFile", option)

-- BufferLine
nmap("<A-k>", ":BufferLineCycleNext", option)
nmap("<A-j>", ":BufferLineCyclePrev", option)
nmap("<A-l>", ":BufferLineMoveNext", option)
nmap("<A-h>", ":BufferLineMovePrev", option)
nmap("<A-p>", ":BufferLinePick", option)
nmap("<A-c>", ":BufferLinePickClose", option)

-- Formatter
nmap("<leader>f", ":Format", option)
nmap("<leader>F", ":FormatWrite", option)

-- Tagbar
nmap("<F8>", ":TagbarToggle", option)
nmap("<A-b>", ":TagbarOpen fj", option)

-- OneTerm
nmap("<leader>t", ":OneTerm", option)

-- FTerm
vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
