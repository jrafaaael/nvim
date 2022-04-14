require('spectre').setup({
  mapping = {
  ['enter_file'] = {
      map = "<TAB>",
      cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
      desc = "goto current file"
    },
    ['run_replace'] = {
      map = "<CR>",
      cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
      desc = "replace all"
    },
  }
})
