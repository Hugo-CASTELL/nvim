return {
  'mrcjkb/rustaceanvim',
  version = '^6', -- Recommended
  lazy = false, -- This plugin is already lazy
  dependencies = { "mfussenegger/nvim-dap" },
  ["rust-analyzer"] = {
    cargo = {
      allFeatures = true,
    },
  },
  config = function ()
    vim.g.rustaceanvim = {
      server = {
        autostart = false
      }
    }
  end
}
