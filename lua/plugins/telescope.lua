return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.g.mapleader = ','
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files)
        vim.keymap.set('n', '<leader>b', builtin.buffers)
    end
}
