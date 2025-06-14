-- Set up rose-pine
-- require('rose-pine').setup {
--   disable_background = true,
--   disable_float_background = true,
-- }

vim.cmd [[colorscheme rose-pine-main]]

-- Make background transparent
-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'VertSplit', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
-- vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })

-- Change the cursor color (example using iris color from rose-pine)
vim.api.nvim_set_hl(0, 'Cursor', { fg = '#232136', bg = '#c4a7e7' })
