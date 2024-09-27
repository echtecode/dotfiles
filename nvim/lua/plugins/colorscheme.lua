return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        dark_variant = "moon", -- main, moon, or dawn
        styles = {
          bold = false,
          italic = false,
          transparency = false,
        },
        -- highlight_groups = {
        -- ["String"] = { fg = "#E6C384" },
        -- ["Comment"] = { fg = "#6272a4" },
        -- ["Function"] = { fg = "#8be9fd" },
        -- ["Keyword"] = { fg = "#ff79c6" },
        -- ["Operator"] = { fg = "#ff79c6" },
        -- ["Identifier"] = { fg = "#bd93f9" },
        -- ["Statement"] = { fg = "#ff79c6" },
        -- ["Conditional"] = { fg = "#ff79c6" },
        -- ["Repeat"] = { fg = "#ff79c6" },
        -- ["Label"] = { fg = "#ff79c6" },
        -- ["Exception"] = { fg = "#ff79c6" },
        -- ["PreProc"] = { fg = "#ff79c6" },
        -- ["Include"] = { fg = "#ff79c6" },
        -- ["Define"] = { fg = "#ff79c6" },
        -- ["Macro"] = { fg = "#ff79c6" },
        -- ["PreCondit"] = { fg = "#ff79c6" },
        -- ["Type"] = { fg = "#8be9fd" },
        -- ["StorageClass"] = { fg = "#8be9fd" },
        -- ["Structure"] = { fg = "#8be9fd" },
        -- ["Typedef"] = { fg = "#8be9fd" },
        -- ["Special"] = { fg = "#f8f8f2" },
        -- ["SpecialChar"] = { fg = "#f8f8f2" },
        -- ["Tag"] = { fg = "#ff79c6" },
        -- ["Delimiter"] = { fg = "#ff79c6" },
        -- ["SpecialComment"] = { fg = "#6272a4" },
        -- ["Debug"] = { fg = "#6272a4" },
        -- ["Ignore"] = { fg = "#6272a4" },
        -- ["Error"] = { fg = "#ff5555" },
        -- ["Todo"] = { fg = "#ff79c6" },
        -- ["Title"] = { fg = "#8be9fd" },
        -- ["Underlined"] = { fg = "#f1fa8c" },
        -- },
      })
    end,
    opts = function()
      return {
        dark_variant = "main",
        -- dark_variant = "moon",
        -- dark_variant = "dawn",
        -- transparent_background = true,
      }
    end,
  },
  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        -- optional configuration here
      })
    end,
  },
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Example config in lua
      vim.g.nord_contrast = true
      vim.g.nord_borders = false
      vim.g.nord_disable_background = true
      vim.g.nord_italic = false
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      -- Load the colorscheme
      -- require("nord").set()

      -- Toggle background transparency
      local bg_transparent = true

      local toggle_transparency = function()
        bg_transparent = not bg_transparent
        vim.g.nord_disable_background = bg_transparent
        vim.cmd([[colorscheme nord]])
      end

      vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
    end,
  },
  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
  },
}
