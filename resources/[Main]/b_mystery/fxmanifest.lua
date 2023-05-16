fx_version 'cerulean'
game 'gta5'
lua54 'yes'

escrow_ignore {
    'config.lua'
}


ui_page 'progress.html'


client_scripts {
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'config.lua',
	'server/main.lua'
}

files {
	'progress.html'
}

dependency '/assetpacks'