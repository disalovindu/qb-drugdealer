local QBCore = exports['qb-core']:GetCoreObject()

--Selling
RegisterNetEvent('qb-drugdealer:server:selldrugs', function(args) 
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local args = tonumber(args)
	if args == 1 then
		local lsd = Player.Functions.GetItemByName("lsd")
		if lsd ~= nil then
			local payment = 3000
			Player.Functions.RemoveItem("lsd", 1, k)
			Player.Functions.AddMoney('bank', payment , "lsd-sell")
			TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["lsd"], "remove", 1)
			TriggerClientEvent('QBCore:Notify', src, "1 "..source.." sold for $"..payment, "success")
			TriggerClientEvent("qb-drugdealer:client:selldrugs", source)
		else
		    TriggerClientEvent('QBCore:Notify', src, "You dont have anything to sell", "error")
        end
    elseif args == 2 then
        local meth = Player.Functions.GetItemByName("meth")
        if meth ~= nil then
            local payment = 1500
            Player.Functions.RemoveItem("meth", 1, k)
            Player.Functions.AddMoney('bank', payment , "meth-sell")
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["meth"], "remove", 1)
            TriggerClientEvent('QBCore:Notify', src, "1 "..source.." sold for $"..payment, "success")
            TriggerClientEvent("qb-drugdealer:client:selldrugs", source)
        else
            TriggerClientEvent('QBCore:Notify', src, "You dont have anything to sell", "error")
        end
    elseif args == 3 then
        local cokebaggy = Player.Functions.GetItemByName("cokebaggy")
        if cokebaggy ~= nil then
            local payment = 2000
            Player.Functions.RemoveItem("cokebaggy", 1, k)
            Player.Functions.AddMoney('bank', payment , "cokebaggy-sell")
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["cokebaggy"], "remove", 1)
            TriggerClientEvent('QBCore:Notify', src, "1 "..source.." sold for $"..payment, "success")
            TriggerClientEvent("qb-drugdealer:client:selldrugs", source)
        else
            TriggerClientEvent('QBCore:Notify', src, "You dont have anything to sell", "error")
        end
    elseif args == 4 then
        local weed_bag = Player.Functions.GetItemByName("weed_bag")
        if weed_bag ~= nil then
            local payment = 1000
            Player.Functions.RemoveItem("weed_bag", 1, k)
            Player.Functions.AddMoney('bank', payment , "weed_bag-sell")
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_bag"], "remove", 1)
            TriggerClientEvent('QBCore:Notify', src, "1 "..source.." sold for $"..payment, "success")
            TriggerClientEvent("qb-drugdealer:client:selldrugs", source)
        else
            TriggerClientEvent('QBCore:Notify', src, "You dont have anything to sell", "error")
        end
    elseif args == 5 then
        local crack_baggy = Player.Functions.GetItemByName("crack_baggy")
        if crack_baggy ~= nil then
            local payment = 3000
            Player.Functions.RemoveItem("crack_baggy", 1, k)
            Player.Functions.AddMoney('bank', payment , "crack_baggy-sell")
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["crack_baggy"], "remove", 1)
            TriggerClientEvent('QBCore:Notify', src, "1 "..source.." sold for $"..payment, "success")
            TriggerClientEvent("qb-drugdealer:client:selldrugs", source)
        else
            TriggerClientEvent('QBCore:Notify', src, "You dont have anything to sell", "error")
        end
    elseif args == 6 then
        local xtcbaggy = Player.Functions.GetItemByName("xtcbaggy")
        if xtcbaggy ~= nil then
            local payment = 3000
            Player.Functions.RemoveItem("xtcbaggy", 1, k)
            Player.Functions.AddMoney('bank', payment , "xtcbaggy-sell")
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["xtcbaggy"], "remove", 1)
            TriggerClientEvent('QBCore:Notify', src, "1 "..source.." sold for $"..payment, "success")
            TriggerClientEvent("qb-drugdealer:client:selldrugs", source)
        else
            TriggerClientEvent('QBCore:Notify', src, "You dont have anything to sell", "error")
        end    
    end
end)