-- ekode_libs/server/initialize.lua

-- EKODE Bridge Authorization Check
CreateThread(function()
    Wait(2000) -- Wait for bridge to initialize
    if not exports['ekode_bridge']:IsResourceAuthorized(GetCurrentResourceName()) then
        print('^1[EKODE] ERROR: Resource not authorized. Check your subscription and server entitlements.^0')
        -- Disable resource functionality
        return
    end
    print('^2[EKODE] Shared Libraries authorized and connected to EKODE platform^0')
end)

RegisterServerEvent("ekode_libs:server:getData")
AddEventHandler("ekode_libs:server:getData", function()
    local src = source

    local data = {
        Config = Config,
        Security = Security,
        DoorData = exports['ekode_libs']:GetAllDoorData()
    }

    TriggerClientEvent("ekode_libs:client:getData", src, data)
    
    if Config.Printing and Config.Printing.Debug then
        exports['ekode_libs']:LogDebug("Sent initial data including door information to player " .. src)
    end
end)