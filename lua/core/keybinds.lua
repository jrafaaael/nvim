local map = vim.api.nvim_set_keymap

map('n', '<A-k>', ':m .-2<CR>==', {noremap = true, silent = true})
map('n', '<A-j>', ':m .+1<CR>==', {noremap = true, silent = true})
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {noremap = true, silent = true})
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {noremap = true, silent = true})
map('v', '<A-k>', ":m '<-2<CR>gv-gv", {noremap = true, silent = true})
map('v', '<A-j>', ":m '>+1<CR>gv-gv", {noremap = true, silent = true})
map('', '<C-Down>', '<C-E>', {})
map('', '<C-Up>', '<C-Y>', {})
map('', '<C-Right>', ':vertical resize +1<CR>', {noremap = true, silent = true})
map('', '<C-Left>', ':vertical resize -1<CR>', {noremap = true, silent = true})
map('', '<C-h>', ':wincmd h<CR>', {noremap = true, silent = true})
map('', '<C-j>', ':wincmd j<CR>', {noremap = true, silent = true})
map('', '<C-k>', ':wincmd k<CR>', {noremap = true, silent = true})
map('', '<C-l>', ':wincmd l<CR>', {noremap = true, silent = true})
-- map('', '<C-Up>', ':wincmd k<CR>', {noremap = true, silent = true})
-- map('', '<C-Right>', ':wincmd l<CR>', {noremap = true, silent = true})
-- map('', '<C-Down>', ':wincmd j<CR>', {noremap = true, silent = true})
-- map('', '<C-Left>', ':wincmd h<CR>', {noremap = true, silent = true})
map('n', '<leader>w', '<cmd>w<CR>', {noremap = true, silent = true})
map('n', '<leader>q', '<cmd>q<CR>', {noremap = true, silent = true})
map('n', '<leader>c', ':bdelete<CR>', {noremap = true, silent = true})
map('n', '<leader>v', ':vsplit<CR>', {noremap = true, silent = true})
map('v', '<TAB>', '>gv', {noremap = true})
map('v', '<S-TAB>', '<gv', {noremap = true})
map('i', 'jk', '<esc>', {noremap = true})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

map('n', '<leader>/', ':CommentToggle<CR>', {noremap = true})
map('v', '<leader>/', ':CommentToggle<CR>', {noremap = true})

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

map('n', '<leader>rg', ":lua require('spectre').open()<CR>", {noremap = true, silent = true})
map('v', '<leader>rg', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = true})

map('n', '<leader>s', ':SearchBoxMatchAll clear_matches=true<CR>', {noremap = true, silent = true})
map('v', '<leader>s', 'y:SearchBoxMatchAll -- <C-r>"<CR>', {noremap = true, silent = true})
map('n', '<leader>rl', ':SearchBoxReplace confirm=menu<CR>', {noremap = true, silent = true})
map('v', '<leader>rl', 'y:SearchBoxReplace confirm=menu -- <C-r>"<CR>', {noremap = true, silent = true})

map('n', 'm', ':HopWord<CR>', {noremap = true, silent = true})
map('n', 'M', ':HopChar1<CR>', {noremap = true, silent = true})

map('n', '<leader>ff', ':Telescope find_files<CR>', {noremap = true, silent = true})
map('n', '<leader>fw', ':Telescope live_grep<CR>', {noremap = true, silent = true})
map('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true, silent = true})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {noremap = true, silent = true})
map('n', '<leader>fR', ':Telescope registers<CR>', {noremap = true, silent = true})
-- map('n', '<leader>fp', ":lua require('telescope').extensions.projects.projects()<CR>", {noremap = true})
map('n', '<leader>fr', ':Telescope oldfiles<CR>', {noremap = true, silent = true})
map('v', '<leader>S', ([["zy<cmd>exec 'Telescope grep_string default_text=' . escape(@z, ' ')<cr>]]), {noremap = true, silent = true})
-- map('n', '<leader>ft', ':TodoTelescope<CR>', {noremap = true, silent = true})

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
  map('n', '<A-' .. i .. '>', '<Cmd>BufferLineGoToBuffer ' .. i .. '<CR>', {noremap = true, silent = true})
end

map('n', '<leader>Pc', ':PackerClean<CR>', {noremap = true, silent = true})
map('n', '<leader>Pi', ':PackerInstall<CR>', {noremap = true, silent = true})
map('n', '<leader>Ps', ':PackerStatus<CR>', {noremap = true, silent = true})
map('n', '<leader>Pu', ':PackerUpdate<CR>', {noremap = true, silent = true})

map('n', '<leader>ghs', ':Gitsigns stage_hunk<CR>', {noremap = true, silent = true})
map('n', '<leader>ghu', ':Gitsigns undo_stage_hunk<CR>', {noremap = true, silent = true})
map('n', '<leader>ghp', ':Gitsigns preview_hunk<CR>', {noremap = true, silent = true})
map('n', '<leader>gd', ':Gitsigns diffthis<CR>', {noremap = true, silent = true})
map('n', '<leader>gB', ':Gitsigns blame_line<CR>', {noremap = true, silent = true})
map('n', '<leader>gg', ':LazyGit<CR>', {noremap = true, silent = true})
map('n', '<leader>gs', ':Telescope git_status<CR>', {noremap = true, silent = true})
map('n', '<leader>gc', ':Telescope git_commits<CR>', {noremap = true, silent = true})
map('n', '<leader>gb', ':Telescope git_branches<CR>', {noremap = true, silent = true})

map('n', 'tt', ':TroubleToggle<CR>', {noremap = true, silent = true})
