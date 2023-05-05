resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
    'config.lua',
    '@es_extended/locale.lua',
    'client/client.lua',
    'client/animation.lua'
}

server_scripts {
    'config.lua',
    "@mysql-async/lib/MySQL.lua",
    '@es_extended/locale.lua',
    'server/server.lua'
}

ui_page 'html/index.html'
files {
	'html/*.*',
	'html/img/*.*',
    'html/img/icons/*.*',
    'html/img/itemImages/*.*',
    'html/fonts',
    'html/css/*.*',
    'html/js/*.*',
    'html/js/*.*.*'
}