resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

ui_page{
    'html/index.html'
}

files {
    'html/index.html',
    'html/app.js',
    'html/style.css',
    'html/img/*.jpg'
}

client_scripts{
    'client.lua',
    'config.lua'
}

server_script{
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua'
}
