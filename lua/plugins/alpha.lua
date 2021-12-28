local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

dashboard.section.header.val = {
[[         ▄              ▄    ]],
[[        ▌▒█           ▄▀▒▌   ]],
[[        ▌▒▒█        ▄▀▒▒▒▐   ]],
[[       ▐▄█▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐   ]],
[[     ▄▄▀▒▒▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐   ]],
[[   ▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌   ]],
[[  ▐▒▒▒▄▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄▒▌  ]],
[[  ▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐  ]],
[[ ▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌ ]],
[[ ▌░▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌ ]],
[[▌▒▒▒▄██▄▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▐ ]],
[[▐▒▒▐▄█▄█▌▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▒▌]],
[[▐▒▒▐▀▐▀▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▐ ]],
[[ ▌▒▒▀▄▄▄▄▄▄▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▌ ]],
[[ ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▒▄▒▒▐  ]],
[[  ▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▄▒▒▒▒▌  ]],
[[    ▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀   ]],
[[      ▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀     ]],
[[         ▀▀▀▀▀▀▀▀▀▀▀▀        ]],
}
dashboard.section.footer.val = { "Loaded " .. plugins_count .. " plugins" }
dashboard.section.buttons.val = {
  dashboard.button('f', '🔎 Find File      ', ':Telescope find_files<CR>'),
  dashboard.button('r', '🕤 Recent Files   ', ':Telescope oldfiles<CR>'),
  dashboard.button('p', '📂 Recent Projects   ', ":lua require('telescope').extensions.projects.projects()<CR>"),
  dashboard.button('s', '🔧 Open setting   ', ':cd ~/.config/nvim | :Telescope find_files<CR>'),
}

alpha.setup(dashboard.opts)
