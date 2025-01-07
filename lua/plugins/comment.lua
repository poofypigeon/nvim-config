return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup ({
            toggler = {
                line = '<leader>/',
                block = nil
            },
            opleader = {
                line = '<leader>/',
                block = nil
            },
            mappings = {
                basic = true,
                extra = false
            }
        })
    end
}
