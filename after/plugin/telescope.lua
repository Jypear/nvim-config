local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
