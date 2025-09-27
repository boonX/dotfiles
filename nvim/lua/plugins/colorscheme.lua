return {
  {
    "catppuccin/nvim",
    opts = function(_, opts)
      opts.transparent_background = true
      opts.float = {
        transparent = true,
      }
      return opts
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
