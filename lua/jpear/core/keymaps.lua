vim.g.mapleader = " "

local keymap = vim.keymap -- concise

-- Exit maps
keymap.set("i", "jj", "<ESC>")

-- Tab Maps
keymap.set("n", "<leader>n", ":tabnew<CR>") -- New blank tab
keymap.set("n", "<leader>w", ":tabclose<CR>") -- tab close - Note close splits first
keymap.set("n", "<leader>f", ":tabn<CR>") -- Move next tab 
keymap.set("n", "<leader>d", ":tabp<CR>") -- Move previous tab

-- References
keymap.set("n", "<leader>u", "gd") -- Go to definition
keymap.set("n", "<leader>r", "gr") -- Go to references

-- Split maps
keymap.set("n", "<leader>s", "<C-w>v") -- split window
keymap.set("n", "<leader>w", ":close<CR>") -- close window
keymap.set("n", "<leader>=", "<C-w>=") -- Make split equal
keymap.set("n", "<leader>h", "<C-w>h") -- Move to left window
keymap.set("n", "<leader>l", "<C-w>l") -- Move to right window

-- highlight move
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center moving
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "j", "jzz")
keymap.set("n", "k", "kzz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- terminal
keymap.set("n", "<leader>t", function() vim.cmd('tab term') end, opt)
keymap.set("t", "<Esc>", [[<C-\><C-n>]])
