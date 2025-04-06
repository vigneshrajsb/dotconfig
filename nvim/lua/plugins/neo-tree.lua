return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["<leader>si"] = function(state)
            local node = state.tree:get_node()
            if node.type == "directory" then
              require("fzf-lua").grep({ cwd = node.path })
            else
              -- If it's a file, use its parent directory
              local parent_path = vim.fn.fnamemodify(node.path, ":h")
              require("fzf-lua").grep({ cwd = parent_path })
            end
          end,
        },
      },
    },
  }
  