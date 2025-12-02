vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

local on_file = function(pattern, tabstop, shiftwidth, expandtab)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = pattern,
    callback = function()
      vim.opt_local.tabstop = tabstop
      vim.opt_local.shiftwidth = shiftwidth
      vim.opt_local.expandtab = expandtab
    end,
  })
end

on_file({ "lua", "yaml" }, 2, 2, true)
on_file({ "python" }, 4, 4, true)
on_file({ "c", "cpp", "java", "go" }, 4, 4, false)
on_file({ "make" }, 8, 8, false)

