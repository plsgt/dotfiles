-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
local opt = vim.opt
opt.tabstop = 4
opt.shiftwidth = 4 -- Size of an indent
opt.termguicolors = true
opt.compatible = false
opt.wrap = true
opt.linebreak = true
opt.showmatch = true
opt.ignorecase = true
opt.autoindent = true
opt.number = true
opt.softtabstop = 4
opt.guicursor = 'a:ver25-iCursor'
--opt.guicursor = '' 
opt.swapfile = false
opt.relativenumber = false
opt.expandtab = false
vim.cmd([[
    augroup RestoreCursorShapeOnExit
        autocmd!
        autocmd VimLeave * set guicursor=a:ver1
    augroup END
]])
