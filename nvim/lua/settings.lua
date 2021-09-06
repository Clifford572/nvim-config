vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.showmode = false
vim.o.hlsearch = false
vim.o.nu = true
vim.o.relativenumber = true
vim.o.errorbells = false
vim.o.incsearch = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.bo.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.swapfile = false
vim.bo.swapfile = false
vim.o.backup = false
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.cursorline = true
vim.o.clipboard = "unnamed"
vim.o.scrolloff = 8
vim.wo.scrolloff = 8
vim.o.completeopt = "menuone,noselect"
vim.o.signcolumn = "yes"
vim.wo.signcolumn = "yes"
vim.cmd [[set shortmess+=c]]
vim.cmd [[autocmd ColorScheme * highlight! link SignColumn LineNr]]

--colorscheme
vim.cmd [[colorscheme everforest]]
vim.g.everforest_background = "hard"
vim.g.everforest_enable_italic = 0
vim.g.everforest_disable_italic_comment = 1
local ts = require("nvim-treesitter.configs")
ts.setup({ensure_installed = "maintained", highlight = {enable = true}})

--nvimtree
vim.g.nvim_tree_add_trailing = 0
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_root_folder_modifier = table.concat {":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??"}

--emmet
vim.g.user_emmet_mode = "n"
vim.g.user_emmet_install_global = 0
vim.cmd [[
    autocmd FileType javascriptreact,typescriptreact EmmetInstall
]]
vim.g.user_emmet_leader_key = ","
--gitgutter
vim.g.gitgutter_set_sign_backgrounds = 1

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
