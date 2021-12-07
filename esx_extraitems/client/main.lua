ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer 
end)

-- Start of Bullet Proof Vest

RegisterNetEvent('esx_extraitems:bulletproof')
AddEventHandler('esx_extraitems:bulletproof', function()
	local playerPed = PlayerPedId()
	exports['mythic_progbar']:Progress({
        name = 'heavy',
        duration = 7500,
        label = 'MEMAKAI VEST BAJA',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missmic4",
            anim = "michael_tux_fidget",
            flags = 49,
        },
        prop = {
            model = "prop_bodyarmour_02",
        }
    }, function(status)
        if not status then
            AddArmourToPed(playerPed, 100)
            SetPedArmour(playerPed, 100)
        end
    end)
end)

RegisterNetEvent('esx_extraitems:joint')
AddEventHandler('esx_extraitems:joint', function()
	local playerPed = PlayerPedId()
	exports['mythic_progbar']:Progress({
        name = 'heavy',
        duration = 7500,
        label = 'MEMAKAI SINTE',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missmic4",
            anim = "michael_tux_fidget",
            flags = 49,
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            AddArmourToPed(playerPed, 100)
            SetPedArmour(playerPed, 100)
        end
    end)
end)

-- End of Bullet Proof Vest
-- Clip Senjata

RegisterNetEvent('esx_extraitems:clipcli')
AddEventHandler('esx_extraitems:clipcli', function()
    local playerPed = PlayerPedId()
    local hash      = GetSelectedPedWeapon(playerPed)
    
    
    if IsPedArmed(playerPed, 4) then
        
    exports['mythic_progbar']:Progress({
        name = "clip",
        duration = 5000,
        label = 'Reload',
        useWhileDead = true,
        canCancel = false,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "mp_arresting",
            anim = "a_uncuff",
            flags = 49,
        },
    }, function(cancelled)
        if not cancelled then
            TriggerServerEvent('esx_extraitems:removeclipcli')
            AddAmmoToPed(playerPed, hash, 250)
        end
    end)
    
    else
        exports['mythic_notify']:SendAlert('error', 'Kamu Tidak Memiliki Senjata')
    end
    
end)
