vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"


-----------------------------------------
--        JP Roy config
-----------------------------------------

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true, silent = true })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fg', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-----------------------------------------
--        General Options
-----------------------------------------
vim.opt.autoread = true
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.belloff = 'all'
vim.opt.clipboard = 'unnamed'
vim.opt.cursorline = true
vim.opt.history = 100
vim.opt.laststatus = 2
vim.opt.backup = false
vim.opt.compatible = false
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.number = true
vim.opt.numberwidth = 5
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ttimeoutlen = 0
vim.opt.visualbell = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildmenu = true
vim.opt.wildmode = 'full'

-- Indentation
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 15
vim.opt.sidescroll = 1

-----------------------------------------
--        highlightedyank
-----------------------------------------
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",  -- The highlight group to use
      timeout = 150,          -- Duration in ms
      on_visual = true        -- Only highlight if the yank was in visual mode
    })
  end,
})

-----------------------------------------
--        Remaps
-----------------------------------------

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>o', ':NvimTreeToggle<CR>', opts)

vim.api.nvim_set_keymap('n', '<leader>tn', ':TestNearest<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tf', ':TestFile<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tl', ':TestLast<CR>', opts)


-- Auto indent pasted text
vim.keymap.set('n', 'p', "p=`]<C-o>''", opts)
vim.keymap.set('n', 'P', "P=`]<C-o>''", opts)

-- Git blame
vim.api.nvim_set_keymap('n', '<leader>gb', ':Git blame<CR>', opts)

-- Edit .init.lua
vim.api.nvim_set_keymap('n', '<leader>v', ':e ~/.config/nvim.init.lua<CR>', opts)

-----------------------------------------
--        Lsp
-----------------------------------------

vim.api.nvim_set_keymap('n', 'ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)
