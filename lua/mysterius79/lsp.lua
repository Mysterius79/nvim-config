local lsp = require("lsp-zero")
local cmp = require("cmp")

lsp.ensure_installed({
    "rust_analyzer",
    "tsserver",
})

lsp.nvim_workspace()

lsp.preset(recommended)
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "<leader>d", function () vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>l", function () vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>r", function () vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>a", function () vim.lsp.buf.code_action() end, opts)
end)
lsp.setup()

cmp.setup({
    mapping = {
        ["<tab>"] = cmp.mapping.confirm({select = true})
    }
})

