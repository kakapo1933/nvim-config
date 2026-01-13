return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  cmd = { "TSInstall", "TSUpdate", "TSUpdateSync" },
  config = function()
    -- Neovim 0.11+ handles highlighting natively
    -- Just ensure parsers are available
    local parsers = { "lua", "vim", "vimdoc", "javascript", "typescript", "python", "rust", "go", "json", "yaml", "markdown", "bash" }

    -- Install missing parsers
    vim.schedule(function()
      for _, lang in ipairs(parsers) do
        pcall(function()
          if not pcall(vim.treesitter.language.inspect, lang) then
            vim.cmd.TSInstall(lang)
          end
        end)
      end
    end)
  end,
}
