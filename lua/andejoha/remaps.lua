vim.g.mapleader = " "

local keymap = vim.keymap
local cmd = vim.cmd

keymap.set("n", "<leader>e", cmd.Ex)

-- Move lines
keymap.set("n", "<A-j>", ":m .+1<CR>==") 
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

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
