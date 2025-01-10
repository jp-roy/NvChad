require "nvchad.mappings"

local opts = { noremap = true, silent = true }
local map = vim.keymap.set
local api_map = vim.api.nvim_set_keymap

-----------------------------------------
--        JP Roy config
-----------------------------------------

-- quickly exit insert with quick jk sequence
map("i", "jk", "<ESC>")

map('n', '<leader>o', ':NvimTreeToggle<CR>', opts)

map('n', '<leader>tn', ':TestNearest<CR>', opts)
map('n', '<leader>tf', ':TestFile<CR>', opts)
map('n', '<leader>tl', ':TestLast<CR>', opts)


-- Auto indent pasted text
map('n', 'p', "p=`]<C-o>''", opts)
map('n', 'P', "P=`]<C-o>''", opts)

-- Git blame
map('n', '<leader>gb', ':Git blame<CR>', opts)

-- Edit .init.lua
map('n', '<leader>v', ':e ~/.config/nvim.init.lua<CR>', opts)

-----------------------------------------
--        Lsp
-----------------------------------------

map('n', 'ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gD', vim.lsp.buf.declaration, opts)


-----------------------------------------
--        telescope
-----------------------------------------

local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      -- Insert mode mappings
      i = {
        -- Map Ctrl+S to send selected to quickfix list and open it
        ["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      -- Normal mode mappings
      n = {
        ["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
      },
    },
  },
}

