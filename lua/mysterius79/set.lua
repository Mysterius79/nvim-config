vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = false

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.scrolloff = 4
vim.opt.hlsearch = false

if vim.g.neovide then
    vim.g.neovide_scale_factor = 1.28
    vim.g.neovide_cursor_vfx_mode = "ripple"
    vim.g.neovide_cursor_vfx_particle_density = 2.0
    vim.g.neovide_cursor_vfx_particle_speed = 14.0
    vim.g.neovide_cursor_vfx_opacity = 80.0
    vim.g.neovide_cursor_trail_size = 0.65
    vim.g.neovide_refresh_rate = 480.0
    vim.g.neovide_refresh_rate_idle = 5.0
    vim.g.neovide_hide_mouse_when_typing = true

    vim.g.neovide_transparency = 1.0
    vim.g.transparency = 1.0
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
end
