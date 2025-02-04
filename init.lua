-- pull cong on startup
if not os.execute 'git -C ~/.config/nvim/ pull > /dev/null' then
  print 'Could not pull config...'
end

require 'main'
