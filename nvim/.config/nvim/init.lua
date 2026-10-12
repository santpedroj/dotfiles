-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- colorscheme
vim.cmd.colorscheme("kanagawa-wave")

-- line
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.relativenumber = true

-- spellcheck
vim.opt.spell = false
vim.opt.spelllang = { "en", "pt" }
vim.opt.spelloptions:append("camel")

-- indentation
--
-- python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})
