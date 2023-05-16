fx_version 'cerulean'
game 'gta5'

author 'Skurllex@b-dev.eu'

lua54 'yes'

client_scripts {
   'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

shared_scripts {
    'shared/**/*.lua',
}

escrow_ignore {
    'shared/configs/*.lua',
}
dependency '/assetpacks'