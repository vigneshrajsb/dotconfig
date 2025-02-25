return {
  -- Cutlass overrides the delete operations to actually just delete and not affect the current yank.
  -- https://github.com/gbprod/cutlass.nvim
  {
    "gbprod/cutlass.nvim",
    opts = {
      -- your configuration comes here
      -- or don't set opts to use the default settings
      -- refer to the configuration section below
    },
  },
}
