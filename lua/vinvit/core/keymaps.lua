vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", "noh<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>sx", ":close<CR>=")

keymap.set("n", "<leader>n", ":bn<CR>")
keymap.set("n", "<leader>p", ":bp<CR>")

keymap.set("n", "<leader>fr", ":source %<CR>")

-- Plugins keymaps
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope keymaps
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>ft', ":TodoTelescope<CR>", {})
keymap.set('n', '<leader>fp', ":Telescope projects<CR>", {})
