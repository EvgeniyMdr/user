return {
  colorscheme = "catppuccin",
  plugins = {
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
          " мᴀʀvoʟo ԍᴀuɴт ",
        }
      end,
    },
  },
}
