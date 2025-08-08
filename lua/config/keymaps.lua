vim.keymap.set({ "n", "v" }, "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set({ "n", "v" }, "<C-c>", "\"+ygv", { desc = "Open file explorer" })
vim.keymap.set({ "n", "v" }, "H", "_", { desc = "Move to start of line" })
vim.keymap.set({ "n", "v" }, "L", "$", { desc = "Move to end of line" })
vim.keymap.set({ "n", "v" }, "<C-u>", "20kzz", { desc = "Move up 20 lines" })
vim.keymap.set({ "n", "v" }, "<C-d>", "20jzz", { desc = "Move down 20 lines" })
vim.keymap.set({ "n", "v" }, "N", "Nzz", { desc = "Previous occurence and focus" })
vim.keymap.set({ "n", "v" }, "n", "nzz", { desc = "Next occurence and focus" })
vim.keymap.set({ "v" }, ">", ">gv", { desc = "Tab paragraph right" })
vim.keymap.set({ "v" }, "<", "<gv", { desc = "Tab paragraph left" })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

