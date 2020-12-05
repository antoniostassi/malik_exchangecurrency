local blips = {
	{ name = 'Currency Exchange', sprite = -1138864184, x=582.8699, y=1680.96, z=187.8889 },
}

local function CreateBlipss()
	for k, v in pairs(blips) do
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.x, v.y, v.z)
        SetBlipSprite(blip, v.sprite, 1)
		SetBlipScale(blip, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, v.name)
    end
end

Citizen.CreateThread(function()
        CreateBlipss()
end)

--------------------------------------------------------

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end


function DisplayHelp(_message, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
 local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", _message, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextCentre(centre)
    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
end