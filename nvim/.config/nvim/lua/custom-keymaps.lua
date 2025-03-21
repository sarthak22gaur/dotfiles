-- custom-keymaps.lua

vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })

vim.opt.cursorcolumn = true

-- keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- keep cursor centered when searching
vim.keymap.set("n", "n", "nzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzv", { noremap = true, silent = true })

-- move selected line or block in visual mode
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })

-- append line to current line without moving cursor
vim.keymap.set("n", "J", "mzJ`z", { noremap = true, silent = true })
