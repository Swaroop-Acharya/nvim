-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap 'jj' to Escape in insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

-- Find files from project root
vim.keymap.set("n", "<leader>F", function()
  require("telescope.builtin").find_files({ cwd = require("lazyvim.util").root.get() })
end, { desc = "Find Files (project root)" })

-- move the teh line using alt + (j,k) in visual and normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Tab to switch to next buffer
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })

-- Shift+Tab to switch to previous buffer
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
