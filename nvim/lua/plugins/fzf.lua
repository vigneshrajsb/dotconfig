return {
  {
    "ibhagwan/fzf-lua",
    optional = true,
    keys = {
      { "<leader>sR", false }, -- disable default binding
      { "<leader>sx", "<cmd>FzfLua resume<cr>", desc = "Resume Search" },
    },
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, {
        keymap = {
          builtin = {
            ["<leader>sx"] = "resume",
          },
        },
      })
    end,
  },
}
