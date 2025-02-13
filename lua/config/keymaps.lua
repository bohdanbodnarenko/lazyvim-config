-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Better way to exit insert mode
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- quit all
-- vim.keymap.set('n', '<leader>qq', '<cmd> qa <CR>', { desc = 'Exit neovim and save everything', silent = true })

-- delete single character without copying it to register
-- vim.keymap.set('n', 'x', '"_x')

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Find and center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "[B]uffer: go to the next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "[B]uffer: go to previous buffer" })
vim.keymap.set("n", "<leader>bx", ":bdelete!<CR>", { desc = "[B]uffer: close the buffer" }) -- close buffer
vim.keymap.set("n", "<leader>bb", "<cmd> enew <CR>", { desc = "[B]uffer: create new buffer" }) -- new buffer

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP')

-- Quick list iteration
vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>zz", { desc = "Jump to the next [Q]uick fix in the list" })
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>zz", { desc = "Jump to the previous [Q]ick fix in the list" })

-- Visual selection moves
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visual selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move visual selection up" })

vim.keymap.set(
  "n",
  "<leader>o",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Select all [O]ccurances of the current word" }
)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
