return {
  'dreamsofcode-io/nvim-dap-go',
  ft = 'go',
  dependencies = 'mfussenegger/nvim-dap',
  config = function(_, opts)
    require('dap-go').setup(opts)

    vim.keymap.set('n', '<leader>dgt', function()
      require('dap-go').debug_test()
    end, { desc = 'Debug GO Test' })
    vim.keymap.set('n', '<leader>dgl', function()
      require('dap-go').debug_last()
    end, { desc = 'Debug last Test' })
  end,
}
