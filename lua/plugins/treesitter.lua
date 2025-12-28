return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      ensure_installed = { "java", "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "typescript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
 }
