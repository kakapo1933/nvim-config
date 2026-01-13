return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 3000,
    render = "wrapped-compact",
    stages = "fade",
    top_down = false, -- notifications appear from bottom
    max_width = 50,
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts)
    vim.notify = notify
  end,
}
