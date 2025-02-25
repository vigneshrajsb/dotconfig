return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    config = function()
      require("treesitter-context").setup({
        enable = true, -- Enable this plugin
        max_lines = 0, -- No limit on the number of context lines
        trim_scope = "outer", -- Discard outer context lines if max_lines is exceeded
        mode = "topline", -- Calculate context based on cursor position
        separator = nil, -- No separator between context and content
        zindex = 20, -- Z-index of the context window
        on_attach = nil, -- Function to run when attaching to a buffer
      })
    end,
  },
}
