local dap, dapui, api = require("dap"), require("dapui"), vim.api

require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
dapui.setup({
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "l", "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  expand_lines = false,
  layouts = {
    {
      elements = {
        -- Elements can be strings or table with id and size keys.
        "watches",
        "stacks",
        "breakpoints",
        "scopes",
        -- { id = "scopes", size = 0.25 },
      },
      size = 40,
      position = "left",
    },
    {
      elements = {
        -- "repl",
        "console",
      },
      size = 10,
      position = "bottom",
    },
  },
})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

api.nvim_set_hl(0, "DapRed", { fg = '#E82424' })

vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DapRed', linehl = '', numhl = 'DapRed' })
