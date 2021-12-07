ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Bullet-Proof Vest
ESX.RegisterUsableItem('bulletproof', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_extraitems:bulletproof', source)
    xPlayer.removeInventoryItem('bulletproof', 1)
end)

ESX.RegisterUsableItem('joint', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:joint', source)
	xPlayer.removeInventoryItem('joint', 1)
end)

-- Weapon Clip
ESX.RegisterUsableItem('clip', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_extraitems:clipcli', source)
	xPlayer.removeInventoryItem('clip', 1)
end)
