-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
require 'marintan/keymaps'
require 'marintan/options'
require 'marintan/autocmds'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth',
  'ThePrimeagen/vim-be-good',
  require 'marintan.plugins.cappucin',
  require 'marintan.plugins.telescope',
  require 'marintan.plugins.wich_key',
  require 'marintan.plugins.treesitter',
  require 'marintan.plugins.neo-tree',
  require 'marintan.plugins.lsp.lsp',
  require 'marintan.plugins.lsp.autoformat',
  require 'marintan.plugins.lsp.autoCompletition',
  require 'marintan.plugins.indent_line',
  require 'marintan.plugins.gitsigns',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
