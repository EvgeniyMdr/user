return {
  colorscheme = "catppuccin",
  plugins = {
    {
      "L3MON4D3/LuaSnip",
      config = function(plugin, opts)
        require "plugins.configs.luasnip" (plugin, opts)
        require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } }
      end,
    },
    {
      "catppuccin/nvim",
      as = "catppuccin",
      config = function()
        require("catppuccin").setup {}
      end,
    },
    {
      "goolord/alpha-nvim",
      opts = function(_, opts)      -- override the options using lazy.nvim
        opts.section.header.val = { -- change the header section value
          "█     █    █    ██████  ██    ██  ██████  ██    ██████",
          "██   ██   █ █   ██   █   ██  ██   ██  ██  ██    ██  ██",
          "███████  ██ ██  ██████   ██  ██   ██  ██  ██    ██  ██",
          "██ █ ██  █████  ██ █      ████    ██  ██  ██  █ ██  ██",
          "██   ██ ██   ██ ██  ██     ██     ██████  █████ ██████"
        }
      end,
    },
    {
      "NvChad/nvim-colorizer.lua",
      as = 'colorizer',
      config = function()
        require("colorizer").setup({})
      end
    },
  },
  mappings = {
    v = {
      ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move this line down" },
      ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move this line up" }
    }
  }
}
