return {
  "hedyhli/outline.nvim",
  cmd = { "Outline", "OutlineOpen" },
  keys = {
    { "<leader>cs", "<cmd>Outline<CR>", desc = "Toggle Outline (Symbols)" },
  },
  opts = {
    outline_window = {
      position = "right",
      width = 25,
    },
    symbols = {
      icons = {
        File = { icon = "󰈙", hl = "Identifier" },
        Module = { icon = "󰆧", hl = "Include" },
        Class = { icon = "󰠱", hl = "Type" },
        Method = { icon = "󰊕", hl = "Function" },
        Function = { icon = "󰊕", hl = "Function" },
        Variable = { icon = "󰀫", hl = "Constant" },
        Constant = { icon = "󰏿", hl = "Constant" },
        String = { icon = "󰀬", hl = "String" },
        Property = { icon = "󰜢", hl = "Identifier" },
      },
    },
  },
}
