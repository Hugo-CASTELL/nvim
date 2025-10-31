-- Personal preference
vim.keymap.set({ "n", "v" }, "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set({ "n", "v" }, "<C-c>", "\"+ygv", { desc = "Copy in copyboard register" })
vim.keymap.set({ "n", "v" }, "<C-u>", "20kzz", { desc = "Move up 20 lines" })
vim.keymap.set({ "n", "v" }, "<C-d>", "20jzz", { desc = "Move down 20 lines" })
vim.keymap.set({ "n", "v" }, "H", "_", { desc = "Move to start of line" })
vim.keymap.set({ "n", "v" }, "L", "$", { desc = "Move to end of line" })
vim.keymap.set({ "n", "v" }, "N", "Nzz", { desc = "Previous occurence and focus" })
vim.keymap.set({ "n", "v" }, "*", "*zz", { desc = "Next occurence of current word and focus" })
vim.keymap.set({ "n", "v" }, "n", "nzz", { desc = "Next occurence and focus" })
vim.keymap.set({ "v" }, ">", ">gv", { desc = "Tab paragraph right" })
vim.keymap.set({ "v" }, "<", "<gv", { desc = "Tab paragraph left" })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Harpoon
local mark = require("harpoon")
local ui = require("harpoon")
vim.keymap.set({ "n", "v" }, "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file with harpoon" })
vim.keymap.set({ "n", "v" }, "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
vim.keymap.set({ "n", "v" }, "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Go to previous harpoon mark" })
vim.keymap.set({ "n", "v" }, "<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show harpoon marks" })

-- Trouble.nvim
vim.keymap.set("n", "<leader>tat", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc = "LSP Definitions / References / ... (Trouble)" })
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

