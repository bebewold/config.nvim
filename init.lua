-- pull cong on startup

--[[ print('Pulling config git repo...\n' .. ]]
vim.fn.system('git -C ' .. vim.fn.stdpath 'config' .. ' pull')--[[)]]

require 'main'
