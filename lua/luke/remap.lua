vim.g.mapleader = ','


--local builtin = require('telescope.builtin')                                              
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})                                                                                                                             
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})                                                                                                                              
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})                                                                                                                                
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})                                                                                                                              
--vim.api.nvim_set_keymap('n', '<C-e>', '<C-w>', { noremap = true, silent = true})                                                                                                      
--                                                                                                                                                                                      
--                                                                                       
---- telescope flie browser                                                              
----require("telescope").load_extension "file_browser"
--vim.api.nvim_set_keymap(  
--  "n",                                                                                 
--  "<C-n>",                                                                             
--  ":Telescope file_browser<CR>",                                                       
--  { noremap = true }
--)       
---- open file_browser with the path of the current buffer                          
--vim.api.nvim_set_keymap(                                                               
--  "n",                
--  "<leader>fb",          
--  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
--  { noremap = true }           
--)  
