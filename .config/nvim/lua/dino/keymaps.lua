local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
-- keymap("n", "<leader>t", "<cmd>ToggleTerm direction=float<cr>", opts)

-- delete single character without copying into register
keymap("n", "x", '"_x', opts)

-- telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
-- keymap("n", "<leader>F", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type

-- git
-- keymap("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", opts) 
-- keymap("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", opts) 
-- keymap("n", "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", opts) 
-- keymap("n", "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", opts) 
-- keymap("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", opts) 
-- keymap("n", "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", opts) 
-- keymap("n", "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", opts) 
-- keymap("n", "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", opts) 
-- keymap("n", "<leader>go", "<cmd>Telescope git_status<cr>", opts) 
-- keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) 
-- keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) 
-- keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", opts) 

-- clear search highlights
-- keymap("n", "<leader>h", ":nohl<CR>", opts)

-- diagnostics
-- keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

-- nvim tree
-- keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
-- keymap("n", "<leader>r", "<cmd>NvimTreeFocus<cr>", opts)
-- keymap("n", "<leader>R", "<cmd>NvimTreeCollapse<cr>", opts)
-- keymap("n", "<leader>w", "<cmd>w!<CR>", opts)
-- keymap("n", "<leader>c", "<cmd>Bdelete!<CR>", opts)
-- keymap("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)", opts)

-- buffers
-- keymap("n", "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", opts)
-- keymap("n", "<leader>bl", "<cmd>BufferLineCloseRight<cr>", opts)
-- keymap("n", "<leader>bf", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance

--- lsp
-- keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
-- keymap("n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
-- keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
-- keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{async = true}<cr>", opts)

-- search
-- keymap("n", "<leader>sc", "<cmd>Telescope colorscheme<cr>", opts)
-- keymap("n", "<leader>sr", "<cmd>Telescope oldfiles<cr>", opts)
-- keymap("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", opts)
-- keymap("n", "<leader>st", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags
-- keymap("n", "<leader>sf", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory

-- Files
-- keymap("n", "<leader>w", "<cmd>w<cr>", opts)
