--My options
--
--numberlines
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 15

--Quality of life
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'

--Gotta go FAST FAST
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4


vim.g.have_nerd_font = true
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
--vim.schedule(function()
--  vim.opt.clipboard = 'unnamedplus'
--end)
--
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
----  and `:help 'listchars'`
--vim.opt.list = true
--- Configure how new splits should be opened
--vim.opt.splitright = true
--vim.opt.splitbelow = true
--
--
---- Preview substitutions live, as you type!
--
----NOT YET USED
---- Enable mouse mode, can be useful for resizing splits for example!
--vim.opt.mouse = 'a'
--
