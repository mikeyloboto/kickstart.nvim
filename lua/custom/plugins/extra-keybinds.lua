local cmp = require 'cmp'
return {
  cmp.setup {
    mapping = {
      ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item on Enter
      ['<Tab>'] = cmp.mapping.select_next_item(), -- Navigate to the next item with Tab
      ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Navigate to the previous item with Shift+Tab
      ['<Esc>'] = cmp.mapping.close(),
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    },
  },
  vim.keymap.set('n', '<leader>F', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Telescope' }),
  vim.keymap.set('i', ':w', '<Esc>:w'),
  vim.keymap.set('i', 'jj', '<Esc>'),
  vim.keymap.set('n', '<leader><C-s>', ':split<CR>', { desc = '[S]plit' }),
  vim.keymap.set('n', '<leader><C-v>', ':vsplit<CR>', { desc = 'Split [V]ertical' }),
}
