local QBCore = exports['qb-core']:GetCoreObject()

--Selling Menu
RegisterNetEvent('qb-drugdealer:client:selldrugs')
AddEventHandler('qb-drugdealer:client:selldrugs', function()
    exports['qb-menu']:openMenu({
		{
            header = "Drug Dealer",
            isMenuHeader = true
        },
        {
            header = "LSD",
            txt = "Price: $3000",
            params = {
				isServer = true,
                event = "qb-drugdealer:server:selldrugs",
				args = 1
            }
        },
        {
            header = "Meth",
            txt = "Price: $1500",
            params = {
				isServer = true,
                event = "qb-drugdealer:server:selldrugs",
				args = 2
            }
        },
		{
            header = "Coke",
            txt = "Price: $2000",
            params = {
				isServer = true,
                event = "qb-drugdealer:server:selldrugs",
				args = 3 
            }
        },
        {
            header = "Weed",
            txt = "Price: $1000",
            params = {
				isServer = true,
                event = "qb-drugdealer:server:selldrugs",
				args = 4 
            }
        },
        {
            header = "Crack",
            txt = "Price: $3000",
            params = {
				isServer = true,
                event = "qb-drugdealer:server:selldrugs",
				args = 5 
            }
        },
        {
            header = "XTC",
            txt = "Price: $3000",
            params = {
				isServer = true,
                event = "qb-drugdealer:server:selldrugs",
				args = 6 
            }
        },
        {
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:closemenu",
            }
        },
    })
end)

--Ped
local dealerPed = {
	{-2166.03, 5197.17, 15.88,"Sr Manel",101.85,0x7E4F763F,"g_m_m_chigoon_01"},
  
  }
  Citizen.CreateThread(function()
	  for _,v in pairs(dealerPed) do
		  RequestModel(GetHashKey(v[7]))
		  while not HasModelLoaded(GetHashKey(v[7])) do
			  Wait(1)
		  end
		  CokeProcPed =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
		  SetEntityHeading(CokeProcPed, v[5])
		  FreezeEntityPosition(CokeProcPed, true)
		  SetEntityInvincible(CokeProcPed, true)
		  SetBlockingOfNonTemporaryEvents(CokeProcPed, true)
		  TaskStartScenarioInPlace(CokeProcPed, "WORLD_HUMAN_AA_SMOKE", 0, true) 
	  end
  end)


--Targets
Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("dealer", vector3(-2166.03, 5197.17, 15.88), 1, 1, {
        name = "dealer",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "qb-drugdealer:client:selldrugs",
                icon = "fas fa-seedling",
                label = 'Sell Drugs'
            },
        },
        distance = 2.5
    })
end)