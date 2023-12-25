-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Toggle English spellchecking
vim.keymap.set(
  "n",
  "<F5>",
  "<cmd>setlocal spell! spelllang=en_us<cr>",
  { desc = "Toggle English Spelling", remap = true }
)

-- Remap splits keybinds
vim.keymap.set("n", "<C-w>v", "<cmd>split<cr>", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<C-w>o", "<cmd>vsplit<cr>", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<C-w>a", "<cmd>only<cr>", { desc = "Single window", remap = true })

-- Tab management and navigation
vim.keymap.set("n", "<C-S-t>", "<cmd>tabnew<cr>", { desc = "New Tab", remap = true })
vim.keymap.set("n", "<Tab>", "gt<cr>", { desc = "Next Tab", remap = true })
vim.keymap.set("n", "<S-Tab>", "gT<cr>", { desc = "Next Tab", remap = true })

-- Copy current file path
vim.keymap.set("n", "yp", "<cmd>let @+=expand('%:p')<cr>", { desc = "Copy full file path", remap = true })

-- Remove search highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohls<cr>", { desc = "Remove hightligh", remap = true })

-- Git gitsigns - based on lunarvim mappings
vim.keymap.set("n", "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", { desc = "Next Hunk", remap = true })
vim.keymap.set("n", "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", { desc = "Prev Hunk", remap = true })
vim.keymap.set("n", "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", { desc = "Blame", remap = true })
vim.keymap.set(
  "n",
  "<leader>gp",
  "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",
  { desc = "Preview Hunk", remap = true }
)
vim.keymap.set("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", { desc = "Reset Hunk", remap = true })
vim.keymap.set("n", "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", { desc = "Stage Hunk", remap = true })
vim.keymap.set(
  "n",
  "<leader>gu",
  "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
  { desc = "Undo Stage Hunk", remap = true }
)
vim.keymap.set("n", "<leader>go", "<cmd>Telescope git_status<cr>", { desc = "Open changed file", remap = true })
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Checkout branch", remap = true })
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Checkout commit", remap = true })
vim.keymap.set(
  "n",
  "<leader>gC",
  "<cmd>Telescope git_bcommits<cr>",
  { desc = "Checkout commit(for current file)", remap = true }
)
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", { desc = "Git Diff", remap = true })
