-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Remap ESC
keymap.set("i", "jj", "<ESC>")

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Center buffer while navigating
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "{", "{zz")
keymap.set("n", "}", "}zz")
keymap.set("n", "N", "Nzz")
keymap.set("n", "n", "nzz")
keymap.set("n", "G", "Gzz")
keymap.set("n", "gg", "ggzz")
keymap.set("n", "gd", "gdzz")
keymap.set("n", "<C-i>", "<C-i>zz")
keymap.set("n", "<C-o>", "<C-o>zz")
keymap.set("n", "%", "%zz")
keymap.set("n", "*", "*zz")
keymap.set("n", "#", "#zz")

-- Press U for redo
keymap.set("n", "U", "<C-r>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Yank all
keymap.set("n", "<C-y>", "gg<S-v>Gy")

-- Tab navigation
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Save with leader key
keymap.set("n", "<leader>w", "<cmd>w<cr>")

-- Quit with leader key
keymap.set("n", "<leader>q", "<cmd>wq<cr>")

-- Save and Quit with leader key
keymap.set("n", "<leader>Q", "<cmd>qa!<cr>")

-- Turn off highlighted results
keymap.set("n", "<leader>no", "<cmd>noh<cr>")
keymap.set("n", "<ESC>", "<cmd>noh<cr>")

---------- Plugins ----------
-- Oil floating
keymap.set("n", "-", require("oil").toggle_float)

-- Navbuddy
keymap.set("n", "_", "<cmd>Navbuddy<CR>", { desc = "Toggle Navbuddy" })

-- Undo Tree
keymap.set("n", "<leader>ut", ":UndotreeToggle<CR>", { desc = "Toggle [U]ndo[T]ree " })
