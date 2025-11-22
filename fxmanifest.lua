fx_version 'cerulean'
game 'gta5'

name 'BLab Notify'
author 'BLab'
description 'Notifications ultra clean & modernes - 2025 style'
version '1.0.0'

ui_page 'html/index.html'

client_scripts {
    'client.lua'
}

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/sound/notification.ogg'
}

sound 'BLAB_NOTIFY_SOUND' {
    'html/sound/notification.ogg'
}