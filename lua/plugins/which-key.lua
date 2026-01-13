return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    delay = 300, -- show popup after 300ms
    plugins = {
      spelling = { enabled = true },
    },
    win = {
      border = "rounded",
    },
    spec = {
      { "<leader>b", group = "buffer" },
      { "<leader>c", group = "code" },
      { "<leader>f", group = "file/find" },
      { "<leader>g", group = "git" },
      { "<leader>s", group = "search" },
      { "<leader>w", group = "windows" },
      { "<leader>x", group = "diagnostics" },
      { "g", group = "goto" },
      { "]", group = "next" },
      { "[", group = "prev" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps",
    },
  },
}
