return {
  -- {
  --   "catppuccin/nvim",
  --   opts = function(_, opts)
  --     opts.transparent_background = true
  --     opts.float = {
  --       transparent = true,
  --     }
  --     opts.integrations = { blink_cmp = true }
  --     return opts
  --   end,
  -- },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "rmehri01/onenord.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   "xiantang/darcula-dark.nvim",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  -- },
  -- {
  --   "nickkadutskyi/jb.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   "Mofiqul/vscode.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = { background = "dark" },
  -- },
  -- { "EdenEast/nightfox.nvim", lazy = false, priority = 1000 },
  -- { "ramojus/mellifluous.nvim" },
  -- { "datsfilipe/vesper.nvim" },
  -- { "Mofiqul/adwaita.nvim" },
  -- {
  --   "sainnhe/gruvbox-material",
  --   config = function()
  --     vim.g.gruvbox_material_background = "hard"
  --     vim.g.gruvbox_material_dim_inactive_windows = 1
  --     vim.cmd.colorscheme("gruvbox-material")
  --   end,
  -- },
  -- {
  --   "sainnhe/everforest",
  --   config = function()
  --     vim.g.everforest_background = "hard"
  --     vim.g.everforest_dim_inactive_windows = 1
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     dim_inactive = true,
  --   },
  -- },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = true,
        overrides = function()
          if vim.o.background == "dark" then
            return { NormalNC = { bg = "#0f151e", fg = "#808080" } }
          else
            return { NormalNC = { bg = "#f0f0f0", fg = "#808080" } }
          end
        end,
      })
      vim.cmd("colorscheme ayu") -- set the colorscheme
    end,
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      dim_inactive = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
