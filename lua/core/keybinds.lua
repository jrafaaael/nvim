local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

map('n', '<A-k>', ':m .-2<CR>==', {noremap = true})
map('n', '<A-j>', ':m .+1<CR>==', {noremap = true})
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {noremap = true})
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {noremap = true})
map('v', '<A-k>', ":m '<-2<CR>gv-gv", {noremap = true})
map('v', '<A-j>', ":m '>+1<CR>gv-gv", {noremap = true})
map('', '<C-Down>', '<C-E>', {})
map('', '<C-Up>', '<C-Y>', {})
map('', '<C-n>', ':enew<CR>', {noremap = true, silent = true})
map('', '<C-h>', ':wincmd h<CR>', {noremap = true, silent = true})
map('', '<C-j>', ':wincmd j<CR>', {noremap = true, silent = true})
map('', '<C-k>', ':wincmd k<CR>', {noremap = true, silent = true})
map('', '<C-l>', ':wincmd l<CR>', {noremap = true, silent = true})
map('', '<C-Right>', ':vertical resize +1<CR>', {noremap = true, silent = true})
map('', '<C-Left>', ':vertical resize -1<CR>', {noremap = true, silent = true})
map('', '<C-b>', ':%bd|e#|bd#<CR>', {noremap = true, silent = true})
map('n', '<leader>c', ':bdelete<CR>', {})
map('n', '<leader>w', ':w<CR>', {noremap = true, silent = true})
map('n', '<leader>v', ':vsplit<CR>', {noremap = true, silent = true})
-- map('n', '<leader>h', ':split<CR>', {noremap = true, silent = true})
map('n', '<leader>q', ':q!<CR>', {noremap = true, silent = true})
map('n', '<leader>W', ':wq!<CR>', {noremap = true, silent = true})
map('v', '<TAB>', '>gv', {noremap = true, silent = false})
map('v', '<S-TAB>', '<gv', {noremap = true, silent = false})
map('i', 'jk', '<esc>', {noremap = true, silent = false})
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = false})
map('n', '<C-f>', '<CMD>lua vim.lsp.buf.formatting_sync()<CR>', {noremap = true, silent = true})

map('n', '<leader>g', ':LazyGit<CR>', {noremap = true, silent = true})

map(
  'n',
  '<C-t>',
  [[v:lua.terminal_behavior()]],
  {expr = true, noremap = true, silent = true}
)
map(
  't',
  '<C-t>',
  [[v:lua.terminal_behavior()]],
  {expr = true, noremap = true, silent = true}
)

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true})

map('n', '<leader>/', ':CommentToggle<CR>', {noremap = true})
map('v', '<leader>/', ':CommentToggle<CR>', {noremap = true})

map('n', '<leader>;', '<cmd>Alpha<CR>', {noremap = true, silent = true})

map("n", "<leader>lr", ":Lspsaga lsp_finder<CR>", { noremap = true, silent = true })
map("n", "<leader>lp", ":Lspsaga preview_definition<CR>", { noremap = true, silent = true })
map("n", "<leader>.", "<cmd>Lspsaga code_action<CR>", { silent = true })
map("n", "K", ":Lspsaga hover_doc<CR>", { noremap = true, silent = true })
map("n", "<leader>ld", "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", { noremap = true, silent = true })
-- map('n', '<F2>', ':Lspsaga rename<CR>', {noremap = true, silent = true})

map('n', '<F2>', '<CMD>lua require("renamer").rename()<CR>', {noremap = true, silent = true})

map('n', 'gb', ':BufferLinePick<CR>', {noremap = true, silent = true})
map('n', '<A-l>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('i', '<A-l>', '<Esc>:BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('v', '<A-l>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('n', '<A-h>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
map('i', '<A-h>', '<Esc>:BufferLineCyclePrev<CR>', {noremap = true, silent = true})
map('v', '<A-h>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
map('n', '<A-Right>', ':BufferLineMoveNext<CR>', {noremap = true, silent = true})
map('v', '<A-Right>', ':BufferLineMoveNext<CR>', {noremap = true, silent = true})
map('n', '<A-Left>', ':BufferLineMovePrev<CR>', {noremap = true, silent = true})
map('v', '<A-Left>', ':BufferLineMovePrev<CR>', {noremap = true, silent = true})
for i = 0, 9, 1 do
  map('n', '<A-' .. i .. '>', '<Cmd>BufferLineGoToBuffer' .. i .. '<CR>', {noremap = true, silent = true})
end

map('n', '<leader>s', ':SearchBoxMatchAll clear_matches=true<CR>', {noremap = true, silent = true})
map('v', '<leader>s', 'y:SearchBoxMatchAll -- <C-r>"<CR>', {noremap = true, silent = true})
map('n', '<leader>r', ':SearchBoxReplace confirm=menu<CR>', {noremap = true, silent = true})
map('v', '<leader>r', 'y:SearchBoxReplace confirm=menu -- <C-r>"<CR>', {noremap = true, silent = true})

map('n', '<leader>T', ':TroubleToggle<CR>', {noremap = true, silent = true})

map('n', '<leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<leader>fw', ':Telescope live_grep<CR>', {noremap = true, silent = true})
map('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true, silent = true})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {noremap = true, silent = true})
map('n', '<leader>fp', ":lua require('telescope').extensions.projects.projects()<CR>", {noremap = true})
map('n', '<leader>fr', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
map('n', '<leader>ft', ':TodoTelescope<CR>', {noremap = true, silent = true})
map('n', '<leader>fgs', ':Telescope git_status<CR>', {noremap = true, silent = true})
map('n', '<leader>fgc', ':Telescope git_commits<CR>', {noremap = true, silent = true})
map('n', '<leader>fgb', ':Telescope git_branches<CR>', {noremap = true, silent = true})

map('n', '<leader>Pc', ':PackerClean<CR>', {noremap = true, silent = true})
map('n', '<leader>Pi', ':PackerInstall<CR>', {noremap = true, silent = true})
map('n', '<leader>Ps', ':PackerStatus<CR>', {noremap = true, silent = true})
map('n', '<leader>Pu', ':PackerUpdate<CR>', {noremap = true, silent = true})

map('n', '<A-n>', '<cmd>lua require("illuminate").next_reference({wrap=true})<CR>', {noremap=true})
map('n', '<A-p>', '<cmd>lua require("illuminate").next_reference({reverse=true,wrap=true})<CR>', {noremap=true})

cmd([[
  map <silent> <A-w> <Plug>CamelCaseMotion_w
  map <silent> <A-b> <Plug>CamelCaseMotion_b
]])

map('n', '<leader>hw', ':HopWord<CR>', {noremap = true, silent = true})
map('n', '<leader>ho', ':HopChar1<CR>', {noremap = true, silent = true})
map('n', '<leader>ht', ':HopChar2<CR>', {noremap = true, silent = true})
map('n', '<leader>hp', ':HopPattern<CR>', {noremap = true, silent = true})
