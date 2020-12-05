data = {}
VorpInv = exports.vorp_inventory:vorp_inventoryApi()
local dollars = 0
local rols = 0
local Character = nil
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
local User = VorpCore.getUser(source) -- Return User with functions and all characters
Character = User.getUsedCharacter  
dollars = Character.money
rols = Character.rol
end


AddEventHandler('villano:acquistavukun250', function()
    local _source = source
    CheckMoney() 
    local soldi = dollars

    if soldi >= 25 then
        Character.addCurrency(2, 250)
        Character.removeCurrency(0, 25)
    else 
    TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

AddEventHandler('villano:acquistavukun500', function()
    local _source = source
    CheckMoney() 
    local soldi = dollars
    
    if soldi >= 50 then
        Character.addCurrency(2, 500)
        Character.removeCurrency(0, 50)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

AddEventHandler('villano:acquistavukun750', function()
    local _source = source
    CheckMoney() 
    local soldi = dollars
    
    if soldi >= 75 then
        Character.addCurrency(2, 750)
        Character.removeCurrency(0, 75)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough dollars", 2000)
    end
end)

AddEventHandler('villano:acquistavukun1000', function()
    local _source = source
    CheckMoney()
    local soldi = dollars
    
    if soldi >= 100 then
        Character.addCurrency(2, 1000)
        Character.removeCurrency(0, 100)
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
        Character.addCurrency(0, 25)
        Character.removeCurrency(2, 250)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)

AddEventHandler('villano:acquistadollari500', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 500 then
        Character.addCurrency(0, 50)
        Character.removeCurrency(2, 500)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)

AddEventHandler('villano:acquistadollari750', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 750 then
        Character.addCurrency(0, 75)
        Character.removeCurrency(2, 750)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)

AddEventHandler('villano:acquistadollari1000', function()
    local _source = source
    CheckMoney() 
    local soldi = rols
    
    if soldi >= 1000 then
        Character.addCurrency(0, 100)
        Character.removeCurrency(2, 1000)
    else 
        TriggerClientEvent("vorp:TipBottom", source, "Not enough VuKun", 2000)
    end
end)