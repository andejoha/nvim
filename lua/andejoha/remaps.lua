vim.g.mapleader = " "

local keymap = vim.keymap
local cmd = vim.cmd

keymap.set("n", "<leader>e", cmd.Ex)

keymap.set("n", "<A-j>", "<cmd>move +1<CR>") 
keymap.set("n", "<A-k>", "<cmd>move -2<CR>")

-- Window management
keymap.set("n", "<leader>sv", cmd.vs)
keymap.set("n", "<leader>sh", cmd.sp)
keymap.set("n", "<leader>sx", cmd.close)

-- Tab management
keymap.set("n", "<leader>tn", cmd.tabnew)
keymap.set("n", "<leader>tw", cmd.tabclose)
keymap.set("n", "<leader><tab>", cmd.tabn)
keymap.set("n", "<leader><S-tab>", cmd.tabp)
keymap.set("n", "<leader>1", "<C-1>")
keymap.set("n", "<leader>2", "<C-2>")
keymap.set("n", "<leader>3", "<C-3>")
keymap.set("n", "<leader>4", "<C-4>")
keymap.set("n", "<leader>5", "<C-5>")
keymap.set("n", "<leader>6", "<C-6>")
