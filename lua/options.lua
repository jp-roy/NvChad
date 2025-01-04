require "nvchad.options"

local o = vim.opt

o.autoread = true
o.backspace = { 'indent', 'eol', 'start' }
o.belloff = 'all'
o.clipboard = 'unnamed'
o.cursorline = true
o.history = 100
o.laststatus = 2
o.backup = false
o.compatible = false
o.showmode = false
o.swapfile = false
o.writebackup = false
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.ruler = true
o.showcmd = true
o.showmatch = true
o.ttimeoutlen = 0
o.visualbell = true

-- Search
o.hlsearch = true
o.incsearch = true
o.wildmenu = true
o.wildmode = 'full'

-- Indentation
o.autoindent = true
o.expandtab = true
o.smartindent = true
o.smarttab = true
o.shiftwidth = 2
o.softtabstop = 2
o.tabstop = 2

-- Scrolling
o.scrolloff = 8
o.sidescrolloff = 15
o.sidescroll = 1

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

