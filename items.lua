ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterUsableItem('painkillers', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('painkillers', 1)

    TriggerClientEvent('renz_items:painkillers', source)
end)

ESX.RegisterUsableItem('bulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)	
	xPlayer.removeInventoryItem('bulletproof', 1)
	xPlayer.addInventoryItem('bagbulletproof', 1)

	TriggerClientEvent('renz_items:bulletproof', source)
end)

ESX.RegisterUsableItem('bagbulletproof', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('bagbulletproof', 1)
	xPlayer.addInventoryItem('bulletproof', 1)

	TriggerClientEvent('renz_items:bulletproofoff', source)
end)

ESX.RegisterUsableItem('drugsdrunk', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('drugsdrunk', 1)

	TriggerClientEvent('esx_status:remove', source, 'drunk', 250000)
	TriggerClientEvent('esx_optionalneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, ('You used a hangover pill'))
end)

