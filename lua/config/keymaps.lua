-- Custom keymaps
vim.keymap.set({ "n", "v" }, "H", "_", { desc = "Move to start of line" })
vim.keymap.set({ "n", "v" }, "L", "$", { desc = "Move to end of line" })
vim.keymap.set({ "n", "v" }, "<C-u>", "20kzz", { desc = "Move up 20 lines" })
vim.keymap.set({ "n", "v" }, "<C-d>", "20jzz", { desc = "Move down 20 lines" })
vim.keymap.set({ "n", "v" }, "N", "Nzz", { desc = "Previous occurence and focus" })
vim.keymap.set({ "n", "v" }, "n", "nzz", { desc = "Next occurence and focus" })
vim.keymap.set({ "v" }, ">", ">gv", { desc = "Tab paragraph right" })
vim.keymap.set({ "v" }, "<", "<gv", { desc = "Tab paragraph left" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "Open files tree" })

-- LSP
vim.keymap.set("n", "<leader>m", vim.lsp.buf.hover, { desc = "LSP Show more" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "List code actions" })

-- Debugging
local dap = require("dap")
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dn", dap.continue, { desc = "Debugger next step" })

-- Formatting
vim.keymap.set({ "n", "v" }, "<leader>cf", function()
	require("conform").format({ async = true })
end, { desc = "Format buffer" })

-- Linting
vim.keymap.set({ "n", "v" }, "<leader>cl", function()
	require("lint").try_lint()
end, { desc = "Lint buffer" })
