local lsp_zero = require('lsp-zero')
local cmp = require('cmp')


lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
  vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.references() end, {buffer = bufnr})
  vim.keymap.set('n', '<leader>u', function() vim.lsp.buf.definition() end, {buffer = bufnr})
end)

lsp_zero.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000
    },
    servers = {
        ['ruff_lsp'] = {'python'}
    }
})

cmp.setup({
    mapping = {
        ['<Esc>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({select=true}),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ['<C-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })
    }
})

local configs = require('lspconfig.configs')

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'ruff_lsp', 'ruff', 'pyright', 'jinja_lsp'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})


