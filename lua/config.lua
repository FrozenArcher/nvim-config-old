-- config scripts
require("config.tree-cfg")
require("config.buffer-cfg")
require("config.sitter-cfg")
require("config.formatter-cfg")
require("config.galaxy-cfg")

-- simple setups
require("scrollbar").setup()
require("Comment").setup()
require("alpha").setup(require("alpha.themes.dashboard").config)
require("colorizer").setup()
require("gitsigns").setup()
