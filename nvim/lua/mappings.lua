require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "L", ":bnext<CR>")
map("n", "H", ":bprevious<CR>")
vim.keymap.set("n", "<C-c>", function()
  local file = vim.fn.expand("%")
  local output = vim.fn.expand("%:r") -- Linux không cần .exe
  local cmd = string.format("g++ %s -o %s && ./%s", file, output, output)
  require("toggleterm").exec(cmd, 1, 12, "float")
end, { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
