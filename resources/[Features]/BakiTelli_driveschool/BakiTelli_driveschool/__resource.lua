resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX DMV School'

version '1.0.4'

server_scripts {
	'@es_extended/locale.lua',
	-- '@qb-core/locale.lua',    QB CORE
	'locales/br.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/en.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'config.lua',
	'sv_config.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/br.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/en.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'config.lua',
	'client/main.lua'
}

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/logo.png',
	'html/dmv.png',
	'html/styles.css',
	'html/img/*.png',
	'html/questions.js',
	'html/scripts.js',
	'html/debounce.min.js'
}

lua54 'yes'
escrow_ignore {
	'config.lua',
	'sv_config.lua'
}