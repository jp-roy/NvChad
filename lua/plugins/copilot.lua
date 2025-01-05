return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,           -- Enable Copilot inline suggestions
        auto_trigger = true,      -- Automatically show suggestions
        debounce = 0,            -- Adjust debounce time for smoother experience
        keymap = {
          accept = "<C-c>",       -- Keybinding to accept suggestion
          next = "<C-n>",         -- Keybinding to go to next suggestion
          prev = "<C-p>",         -- Keybinding to go to previous suggestion
          dismiss = "<C-d>",      -- Keybinding to dismiss suggestion
        },
      },
      panel = { enabled = false },
    })
  end,
}
