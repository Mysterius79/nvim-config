vim.g.mapleader = " "
local ops = {noremap = true, silent = true}
local tele = require("telescope.builtin")
local harpoon = require("harpoon.mark")
local harpoon_nav = require("harpoon.ui")

vim.keymap.set("n", "df", tele.find_files)
vim.keymap.set("n", "<leader>df", vim.cmd.Ex)
vim.keymap.set("n", "<leader>d", vim.cmd.tabe)
vim.keymap.set("n", "<leader>m", harpoon.add_file)
vim.keymap.set("n", "<leader>n", harpoon_nav.nav_next)
vim.keymap.set("n", "<leader>b", harpoon_nav.nav_prev)

-- this function has to have hard coded chars in it because otherwise it won't go in the middle of the chars
local insert_quote = function()
    local line = vim.api.nvim_win_get_cursor(0)[1]
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local chars = '""'
    vim.api.nvim_buf_set_text(0, line - 1, pos, line - 1, pos, {chars})
    vim.cmd("norm! l")
    return '""'
end

local insert_bracket = function()
    local line = vim.api.nvim_win_get_cursor(0)[1]
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local chars = '()'
    vim.api.nvim_buf_set_text(0, line - 1, pos, line - 1, pos, {chars})
    vim.cmd("norm! l")
    return '""'
end

local insert_sqbracket = function()
    local line = vim.api.nvim_win_get_cursor(0)[1]
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local chars = '{}'
    vim.api.nvim_buf_set_text(0, line - 1, pos, line - 1, pos, {chars})
    vim.cmd("norm! l")
    return '""'
end

local insert_angbracket = function()
    local line = vim.api.nvim_win_get_cursor(0)[1]
    local pos = vim.api.nvim_win_get_cursor(0)[2]
    local chars = '[]'
    vim.api.nvim_buf_set_text(0, line - 1, pos, line - 1, pos, {chars})
    vim.cmd("norm! l")
    return '""'
end

vim.keymap.set("i", "ü", "|| ")
vim.keymap.set("i", '"', insert_quote)
vim.keymap.set("i", '(', insert_bracket)
vim.keymap.set("i", '{', insert_sqbracket)
vim.keymap.set("i", '[', insert_angbracket)
vim.keymap.set("i", 'ö', '<')
vim.keymap.set("i", 'ä', '>')

vim.keymap.set("n", 'ö', '<')
vim.keymap.set("i", 'ä', '>')

--MoveLine binds
vim.keymap.set("n", "<leader>j", ":MoveLine(1)<CR>", ops)
vim.keymap.set("n", "<leader>k", ":MoveLine(-1)<CR>", ops)

