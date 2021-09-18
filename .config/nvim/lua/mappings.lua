 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
-- OPEN TERMINALS --
-- map("n", "<C-l>", [[<Cmd>vnew term://bash <CR>]], opt) -- term over right
-- map("n", "<C-x>", [[<Cmd> split term://bash | resize 10 <CR>]], opt) --  term bottom
-- map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab

-- Toggle highlight 
map("n", "<C-b>", [[ <Cmd> set nohls!<CR>]], opt)

-- COPY EVERYTHING --
map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- toggle numbers ---
map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)

-- toggle truezen.nvim's ataraxis and minimalist mode
map("n", "<leader>z", [[ <Cmd> TZAtaraxis<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> TZMinimalist<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt)
-- vim.cmd("inoremap jh <Esc>")

-- Remap splits
map("n", "<C-w>v", [[ <Cmd> split<CR>]], opt)
map("n", "<C-w>o", [[ <Cmd> vsplit<CR>]], opt)

-- Resize splits
map("n", "<S-l>", [[ <Cmd> vertical resize +5<CR>]], opt)
map("n", "<S-h>", [[ <Cmd> vertical resize -5<CR>]], opt)
map("n", "<S-k>", [[ <Cmd> res +5<CR>]], opt)
map("n", "<S-j>", [[ <Cmd> res -5<CR>]], opt)

-- Close current window
map("n", "<C-x>", [[ <Cmd> close<CR>]], opt)

-- Tab management and navigation
map("n", "<C-t>", [[ <Cmd> tabnew<CR>]], opt)
map("n", "<Tab>", [[ gt<CR>]], opt)
map("n", "<S-Tab>", [[ gT<CR>]], opt)

-- Toggle english spellchecking
map("n", "<F5>", [[ <Cmd> setlocal spell! spelllang=en_us<CR>]], opt)

-- Copy current file path
map("n", "yp", [[ <Cmd> let @+=expand("%:p")<CR>]], opt)
