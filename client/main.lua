-- Simple GTA Online-style text popup (no icons)
function SendTextPopup(title, msg)
    -- Title line
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(title)
    EndTextCommandThefeedPostTicker(false, true)

    -- Message line
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(msg)

    -- No icon, no sender, no subject
    EndTextCommandThefeedPostMessagetext("", "", false, 0, "", "")
    EndTextCommandThefeedPostTicker(false, true)

    -- Optional GTA phone text sound
    PlaySoundFrontend(-1, "Text", "Phone_SoundSet_Default", true)
end

RegisterNetEvent("vchat:textPopup")
AddEventHandler("vchat:textPopup", function(title, msg)
    SendTextPopup(title, msg)
end)
