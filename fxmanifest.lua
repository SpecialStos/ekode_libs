fx_version 'cerulean'
game 'gta5'

name "EKODE - Shared Framework Library"
description "The foundation that powers every EKODE resource - shared utilities, UI components, and framework compatibility."
author "EKODE"
version "0.1.0"
lua54 'yes'

dependencies {
    "ekode_bridge",
    '/onesync',
    '/server:4500'
}

client_scripts {
    '@ox_lib/init.lua',
    '@PolyZone/client.lua', 
    '@PolyZone/BoxZone.lua',
    'client/initialize.lua',
    'client/core.lua',
    'client/utils.lua',
    'client/vehicle.lua',
    'client/weapon.lua',
    'client/logging.lua',
    'client/polyzones.lua',
    'client/doorlock.lua',
    'client/target.lua',
    'framework/framework_client.lua',
}

server_scripts {
    'configs/master_config.lua',
    'configs/discordLogs_config.lua',
    'configs/security_config.lua',
    'framework/framework_server.lua',
    'server/discord.lua',
    'server/database.lua',
    'server/initialize.lua',
    'server/logging.lua',
    'server/doorlock.lua',
    'server/server_error_handler.lua',
    'server/versionCheck.lua',
}

shared_scripts {}