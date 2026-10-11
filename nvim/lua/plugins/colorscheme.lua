return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      no_italic = true,
      term_colors = true,
      transparent_background = false,
      custom_highlights = {
        LineNr = { fg = "#636363" },
      },
      integrations = {
        blink_cmp = true,
      },
      auto_integrations = true,
    },
  },
}
