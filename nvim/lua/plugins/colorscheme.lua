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
    },
  },
  -- {
  --   "catppuccin/nvim",
  --   opts = function(_, opts)
  --     opts.transparent_background = true
  --     opts.float = {
  --       transparent = true,
  --     }
  --     opts.integrations = { blink_cmp = true }
  --     opts.color_overrides = {
  --       mocha = {
  --         base = "#000000",
  --         mantle = "#000000",
  --         crust = "#000000",
  --       },
  --     }
  --     opts.custom_highlights = {
  --       LineNr = { fg = "#636363" },
  --     }
  --     return opts
  --   end,
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     no_italic = true,
  --     term_colors = true,
  --     transparent_background = false,
  --     color_overrides = {
  --       mocha = {
  --         base = "#000000",
  --         mantle = "#000000",
  --         crust = "#000000",
  --       },
  --     },
  --     integrations = {
  --       blink_cmp = true,
  --     },
  --   },
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
  -- {
  --   "wtfox/jellybeans.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {}, -- Optional
  -- },
  -- {
  --   "thesimonho/kanagawa-paper.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     dim_inactive = true,
  --   },
  -- },
  -- {
  --   "Shatur/neovim-ayu",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("ayu").setup({
  --       -- mirage = true,
  --       terminal = false,
  --       overrides = function()
  --         local overrides = {
  --           -- General
  --           Comment = { fg = "#99a3b0" },
  --           LineNr = { fg = "#636363" },
  --
  --           -- Flash.nvim
  --           FlashCurrent = { fg = "#ffffff" },
  --           FlashMatch = { fg = "#ffffff" },
  --           FlashLabel = { bg = "#ffffff", fg = "#000000" },
  --         }
  --
  --         -- Changes color of inactive windows
  --         if vim.o.background == "dark" then
  --           overrides.NormalNC = { bg = "#0f151e", fg = "#808080" }
  --         else
  --           overrides.NormalNC = { bg = "#f0f0f0", fg = "#808080" }
  --         end
  --
  --         return overrides
  --       end,
  --     })
  --   end,
  -- },
}
