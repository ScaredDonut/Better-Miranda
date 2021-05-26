-----------------------------------------------------------------------------
-- Better-ID- A Simple FiveM Script, Made By Rocket Development w/ NAT2K15 Development. Minor modifcation by Scared Donut; added the cards as a useable item  --
-----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
                  -- !WARNING! !WARNING! !WARNING! !WARNING! !WARNING! --
        -- DO NOT TOUCH THIS FILE OR YOU /WILL/ FUCK SHIT UP! THERE IS NOTHING TO EDIT --
-- DO NOT BE STUPID AND WHINE TO ME ABOUT THIS BEING BROKEN IF YOU TOUCHED THE LINES BELOW. --
----------------------------------------------------------------------------------------------
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent("redrum:didnotmakethis")
AddEventHandler("redrum:didnotmakethis", function()
    TriggerClientEvent('redrum:didnotmakethis-c', -1, source)
end)

RegisterNetEvent("redrum:didnotmakethiseither")
AddEventHandler("redrum:didnotmakethiseither", function()
    TriggerClientEvent('redrum:didnotmakethiseither-c', -1, source)
end)

--[[
    RegisterNetEvent("redrum:didnotmakethiseither") -- MAKE YOUR OWN EVENT
AddEventHandler("redrum:didnotmakethiseither", function() -- ADD THE EVENT HANDLER
    TriggerClientEvent('redrum:didnotmakethiseither-c', -1, source) -- MATCH YOUR CLIENT EVENT THAT YOUR MADE
end)
]]--


ESX.RegisterUsableItem('mirandacard', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
TriggerClientEvent('betterM:mcardTrigger',playerId)
end)


ESX.RegisterUsableItem('vcard', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
TriggerClientEvent('betterM:vcardTrigger',playerId)
end)