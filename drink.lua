ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)


--- water, cola, redbull, nestea, coffee, beer, vodka, whisky,
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'you drink mineral water!'})
end)

ESX.RegisterUsableItem('cola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('cola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'you drink coca-cola!'})
end)

ESX.RegisterUsableItem('redbull', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('redbull', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'you drink redbull!'})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Speed ​​bonus per minute!'})
	TriggerClientEvent('przedmioty:redbull', source)
end)

ESX.RegisterUsableItem('nestea', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('nestea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You drank tea!'})
end)

ESX.RegisterUsableItem('coffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('coffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You drank coffee!'})
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------

ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
    TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
    TriggerClientEvent('esx_status:remove', source, 'stress', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You drank beer'})
end)

ESX.RegisterUsableItem('vodka', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vodka', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
    TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
    TriggerClientEvent('esx_status:remove', source, 'stress', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'you drank vodka!'})
end)

ESX.RegisterUsableItem('whisky', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('whisky', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
    TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
    TriggerClientEvent('esx_status:remove', source, 'stress', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'you drank whisky!'})
end)
