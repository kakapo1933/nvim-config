return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      integrations = {
        treesitter = true,
        which_key = true,
        legendary = true,
        neo_tree = true,
        noice = true,
        lsp_trouble = true,
        gitsigns = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
