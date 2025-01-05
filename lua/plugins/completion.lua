return {
  "hrsh7th/nvim-cmp",
  config = function()
    require("cmp").setup({ enabled = false })
  end,
}

  --
  --
  -- {
  --   "hrsh7th/nvim-cmp",
  --   config = function()
  --     require("cmp").setup({ enabled = true })
  --     require("cmp").setup.filetype("rb", {
  --       enabled = false,
  --     })
  --     require("cmp").setup.filetype("erb", {
  --       enabled = false,
  --     })
  --   end,
  -- },

  -- {
  --   "zbirenbaum/copilot-cmp",
  --   dependencies = { "zbirenbaum/copilot.lua" },
  --   config = function()
  --     require("copilot_cmp").setup()
  --   end,
  -- },
  --
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "zbirenbaum/copilot-cmp" },
  --   config = function()
  --     local cmp = require("cmp")
  --     cmp.setup({
  --       mapping = cmp.mapping.preset.insert({
  --         ["<Tab>"] = cmp.mapping.select_next_item(),
  --         ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  --       }),
  --       formatting = {
  --         format = function(entry, vim_item)
  --           if entry.source.name == "copilot" then
  --             vim_item.kind = "[Copilot]"
  --             vim_item.menu = entry.completion_item.detail
  --           end
  --           return vim_item
  --         end,
  --       },
  --       sources = cmp.config.sources({
  --         { name = "copilot" },
  --         -- { name = "nvim_lsp" },
  --         -- { name = "luasnip" },
  --         -- { name = "buffer" },
  --       }),
  --     })
  --   end,
  -- },


