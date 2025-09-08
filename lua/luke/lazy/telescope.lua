return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]each [H]elp'})
        vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
        vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
        vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
        vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
        vim.api.nvim_set_keymap('n', '<C-e>', '<C-w>', { noremap = true, silent = true})

        vim.api.nvim_set_keymap(
          "n",
          "<C-n>",
          ":Telescope file_browser<CR>",
          { noremap = true }
        )
-- open file_browser with the path of the current buffer
        vim.api.nvim_set_keymap(
          "n",
          "<leader>fb",
          ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
          { noremap = true }
    )

-- these are from primeagen config
--        local builtin = require('telescope.builtin')
--        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--        vim.keymap.set('n', '<leader>pws', function()
--            local word = vim.fn.expand("<cword>")
--            builtin.grep_string({ search = word })
--        end)
--        vim.keymap.set('n', '<leader>pWs', function()
--            local word = vim.fn.expand("<cWORD>")
--            builtin.grep_string({ search = word })
--        end)
--        vim.keymap.set('n', '<leader>ps', function()
--            builtin.grep_string({ search = vim.fn.input("Grep > ") })
--        end)
--        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
