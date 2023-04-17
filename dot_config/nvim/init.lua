require('plugins')
require('mason-config')
require('clangd')
require('code-completion')
require('file-explorer')
--require('styling')
require('statusbar')

if (os.getenv("TERM_PROGRAM")) ~= 'Apple_Terminal' then
	vim.cmd[[colorscheme dracula]]
end

vim.opt.compatible=false
vim.opt.wrap=true
vim.opt.showmatch=true
vim.opt.ignorecase=true
vim.opt.autoindent=true
vim.opt.number=true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.guicursor='a:ver25-Cursor'
vim.opt.swapfile=false
