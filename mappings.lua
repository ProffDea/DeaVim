return {
  n = {
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>m"] = { name = "Custom" },
    ["<leader>mt"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle trouble" },

    ["<leader>h"] = { name = "Harpoon", desc = "Harpoon" },
    ["<leader>ha"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add harpoon" },
    ["<leader>ht"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Toggle harpoon" },
    ["[h"] = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Previous harpoon" },
    ["]h"] = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Next harpoon" },

    ["<leader>P"] = { name = "Peek", desc = "Peek" },
    ["<leader>Po"] = { "<cmd>PeekOpen<cr>", desc = "Open" },
    ["<leader>Pc"] = { "<cmd>PeekClose<cr>", desc = "Close" },
  },
  t = {},
}
