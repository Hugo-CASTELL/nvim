-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>', { desc = 'Open files tree' })

-- LSP
vim.keymap.set('n', '<leader>m', vim.lsp.buf.hover, { desc = "LSP Show more" })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "List code actions" })

-- Debugging
local dap = require("dap")
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set('n', '<leader>dn', dap.continue, { desc = "Debugger next step" })
