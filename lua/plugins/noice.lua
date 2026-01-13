return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      opts = {
        position = {
          row = "30%",
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
      },
    },
    messages = {
      enabled = true,
      view = "mini", -- use mini view for messages
    },
    popupmenu = {
      enabled = false,
    },
    notify = {
      enabled = true,
      view = "notify",
    },
    lsp = {
      progress = { enabled = true },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
      },
    },
    presets = {
      command_palette = false,
    },
    routes = {
      -- Hide "recording @x" messages
      {
        filter = { event = "msg_showmode" },
        opts = { skip = true },
      },
    },
  },
  config = function(_, opts)
    require("noice").setup(opts)
  end,
}
