-- pull cong on startup

local config_path = ''
if vim.loop.os_uname().sysname == 'Windows_NT' then
  config_path = '~/AppData/Local/nvim/'
else
  config_path = '~/.config/nvim/'
end

if not (os.execute 'git -C ' .. config_path .. ' pull > /dev/null') then
  print 'Could not pull config...'
end

require 'main'
