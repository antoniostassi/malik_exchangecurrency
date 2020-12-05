
-- Malik Cash Converter

Citizen.CreateThread(function()
    WarMenu.CreateMenu('CashForGold', "Exchange")
    WarMenu.SetSubTitle('CashForGold', 'Exchange your money' )
    WarMenu.CreateSubMenu('converti1', 'CashForGold', 'Dollars/VuKun')
    WarMenu.CreateSubMenu('converti2', 'CashForGold', 'VuKun/Dollars')
    local _source = source
    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('CashForGold') then
            if WarMenu.MenuButton('Buy VuKun', 'converti1') then
            elseif WarMenu.MenuButton('Buy Dollars', 'converti2') then
			end
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('converti1') then
            if WarMenu.Button('Buy 250 VuKun - ~pa~$25.0') then
                TriggerServerEvent("villano:acquistavukun250", _source)
            elseif WarMenu.Button('Buy 500 VuKun - ~pa~$50.0') then
                TriggerServerEvent("villano:acquistavukun500")
            elseif WarMenu.Button('Buy 750 VuKun - ~pa~$75.0') then
                TriggerServerEvent("villano:acquistavukun750")
			elseif WarMenu.Button('Buy 1000 VuKun - ~pa~$100.0') then
                TriggerServerEvent("villano:acquistavukun1000")
            end
            WarMenu.Display()
		elseif WarMenu.IsMenuOpened('converti2') then
            if WarMenu.Button('Buy 25 Dollars ~pa~V250.0') then
                TriggerServerEvent("villano:acquistadollari250")  
            elseif WarMenu.Button('Buy 50 Dollars ~pa~V500.0') then
                TriggerServerEvent('villano:acquistadollari500')
            elseif WarMenu.Button('Buy 75 Dollars ~pa~V750.0') then
                TriggerServerEvent('villano:acquistadollari750') 
            elseif WarMenu.Button('Buy 100 Dollars ~pa~V1000.0') then
                TriggerServerEvent('villano:acquistadollari1000')
            end
            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, 582.8699, 1680.96, 187.8889) < 2.0) then
            TriggerEvent("vorp:TipBottom", "Press [G] to exchange your currency!", 1000)
               if whenKeyJustPressed(keys["G"]) then
                WarMenu.OpenMenu('CashForGold')
               end
        end
        Citizen.Wait(0)
    end
end)
