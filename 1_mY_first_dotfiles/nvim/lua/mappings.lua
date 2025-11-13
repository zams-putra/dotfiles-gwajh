require "nvchad.mappings"

local map = vim.keymap.set

-- existing ones
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- custom ones
map("n", "<C-m>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
