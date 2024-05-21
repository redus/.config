-- define your colorscheme here
local colorscheme = "catppuccin"


local is_ok, _ = pcall(require, colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

require(colorscheme).setup({
    transparent_background = true,
})

vim.cmd('colorscheme ' .. colorscheme)

