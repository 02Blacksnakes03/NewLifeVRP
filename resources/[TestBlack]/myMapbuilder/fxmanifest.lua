fx_version 'bodacious'
game 'gta5'

-- Leaked By: FiveShop https://discord.gg/KqBezd3Kpf

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua',
  }
  
  client_scripts {
    "@NativeUILua_Reloaded/src/NativeUIReloaded.lua", -- disable this when you do not want to use NativeUIReloaded
    --'@NativeUI/NativeUI.lua', -- if you want to use NativeUI instead of NativeUI Reloaded -> Activate this!
    'config.lua',
    'client.lua',
  }