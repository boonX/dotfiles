return {
  {
    "catppuccin/nvim",
    opts = function(_, opts)
      opts.transparent_background = true
      opts.float = {
        transparent = true,
      }
      opts.integrations = { blink_cmp = true }
      return opts
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
