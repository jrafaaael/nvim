local function t(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.terminal_behavior = function()
  if #require("toggleterm.terminal").get_all() > 0 then
    if vim.api.nvim_get_mode().mode == 't' then
      return t[[<C-\><C-n>]] .. t':ToggleTermToggleAll' .. t'<CR>'
    elseif vim.bo.filetype == 'toggleterm' then
      return t':ToggleTerm' .. t'<CR>'
    else
      return t':ToggleTermToggleAll' .. t'<CR>'
    end
  else
    return t':ToggleTerm' .. t'<CR>'
  end
end
