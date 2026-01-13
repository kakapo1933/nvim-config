return {
  "mrjones2014/legendary.nvim",
  priority = 10000,
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    select_prompt = "Legendary",
    include_builtin = true,
    include_legendary_cmds = false,
    extensions = {
      lazy_nvim = true,
      which_key = { auto_register = true },
    },
  },
  keys = {
    { "<leader>p", "<cmd>Legendary<CR>", desc = "Command Palette" },
  },
  config = function(_, opts)
    require("legendary").setup(opts)
  end,
}
