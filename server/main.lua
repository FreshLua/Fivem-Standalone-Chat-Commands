RegisterCommand("twt", function(source, args)
    local msg = table.concat(args, " ")
    if msg == "" then return end

    TriggerClientEvent("chat:addMessage", -1, {
        color = { 0, 245, 255 }, -- Light Blue 
        multiline = true,
        args = { "[twt]", msg }
        TriggerClientEvent("vchat:textPopup", -1, "Tweet", msg)
        Logger.success("Notification Sent")
    })
end)

RegisterCommand("anon", function(source, args)
    local msg = table.concat(args, " ")
    if msg == "" then return end

    TriggerClientEvent("chat:addMessage", -1, {
        color = { 120, 118, 116 }, -- Grey 
        multiline = true,
        args = { "[anon]", msg }
        TriggerClientEvent("vchat:textPopup", -1, "Anonymous", msg)
        Logger.success("Notification Sent")
    })
end)

RegisterCommand("ad", function(source, args)
    local msg = table.concat(args, " ")
    if msg == "" then return end

    TriggerClientEvent("chat:addMessage", -1, {
        color = { 115, 72, 4 }, -- Brown
        multiline = true,
        args = { "[ad]", msg }
        TriggerClientEvent("vchat:textPopup", -1, "Advertisement", msg)
        Logger.success("Notification Sent")
    })
end)
