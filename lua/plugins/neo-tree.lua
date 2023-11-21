return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function(_)
            vim.cmd([[ setlocal relativenumber ]])
          end,
        },
      },
    },
  },
}
