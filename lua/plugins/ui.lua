return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- add neon theme
  { "rafamadriz/neon" },

  -- add oceanic-next
  { "mhartington/oceanic-next" },

  -- Config LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "neon"
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      vim.api.nvim_set_hl(0, "PopMenu", { bg = "#1F2335", blend = 0 })
      local cmp = require("cmp")
      local win_opt = {
        col_offset = 0,
        side_padding = 1,
        winhighlight = "Normal:PopMenu,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
      }
      opts.window = {
        completion = cmp.config.window.bordered(win_opt),
        documentation = cmp.config.window.bordered(win_opt),
      }
      opts.experimental = {
        ghost_text = true,
      }
    end,
  },

  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "strom",
      on_colors = function(colors)
        colors.border = "#4C566A"
      end,
    },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    enabled = false,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
}
