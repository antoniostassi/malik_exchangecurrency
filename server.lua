data = {}
VorpInv = exports.vorp_inventory:vorp_inventoryApi()

local VorpCore = {}
TriggerEvent("getCore",function(core)
    VorpCore = core
end)


RegisterServerEvent('villano:acquistavukun250')
RegisterServerEvent('villano:acquistavukun500')
RegisterServerEvent('villano:acquistavukun750')
RegisterServerEvent('villano:acquistavukun1000')
--------------------------------------------------------------------


function CheckMoney()
local User = VorpCore.getUser(_source) -- Return User with functions and all characters
local Character = User.getUsedCharacter 
local dollars = Character.money
local rols = Character.rol
end


AddEventHandler('villano:acquistavukun250', function()
    local _source = source
    CheckMoney() 
    local soldi = dollars

    if soldi >= 25 then
        VORP.addMoney(source, 2, 250)
        VORP.removeMoney(source, 0, 25)
    else 
    TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

AddEventHandler('villano:acquistavukun500', function()
    local _source = source
    CheckMoney() 
    local soldi = dollars
    
    if soldi >= 50 then
            VORP.addMoney(source, 2, 500)
            VORP.removeMoney(source, 0, 50)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

AddEventHandler('villano:acquistavukun750', function()
    local _source = source
    CheckMoney() 
    local soldi = dollars
    
    if soldi >= 75 then
            VORP.addMoney(source, 2, 750)
            VORP.removeMoney(source, 0, 75)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

AddEventHandler('villano:acquistavukun1000', function()
    local _source = source
    CheckMoney()
    local soldi = dollars
    
    if soldi >= 100 then
            VORP.addMoney(source, 2, 1000)
            VORP.removeMoney(source, 0, 100)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

--------------------------------------------------------------------


RegisterServerEvent('villano:acquistadollari250')
RegisterServerEvent('villano:acquistadollari500')
RegisterServerEvent('villano:acquistadollari750')
RegisterServerEvent('villano:acquistadollari1000')

AddEventHandler('villano:acquistadollari250', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 250 then
            VORP.addMoney(source, 0, 25)
            VORP.removeMoney(source, 2, 250)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)

AddEventHandler('villano:acquistadollari500', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 500 then
            VORP.addMoney(source, 0, 50)
            VORP.removeMoney(source, 2, 500)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)

AddEventHandler('villano:acquistadollari750', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 750 then
            VORP.addMoney(source, 0, 75)
            VORP.removeMoney(source, 2, 750)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)

AddEventHandler('villano:acquistadollari1000', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 1000 then
            VORP.addMoney(source, 0, 100)
            VORP.removeMoney(source, 2, 1000)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)