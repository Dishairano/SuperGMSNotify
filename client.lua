RegisterNetEvent('SuperGMS-Notify:sendNotify')
AddEventHandler('SuperGMS-Notify:sendNotify', function(message, type)
    if type then
        SendNUIMessage({
            name = 'addNotification',
            type = type,
            message = message
        })
    else
        SendNUIMessage({
            name = 'addNotification',
            type = nil,
            message = message
        })
    end
end)

RegisterCommand("errornotify", function()
    TriggerEvent('SuperGMS-Notify:sendNotify', 'Error</br>Example Error Notify!', 'error')
end)

RegisterCommand("infonotify", function()
    TriggerEvent('SuperGMS-Notify:sendNotify', 'Information</br>Example Info Notify', 'info')
end)

RegisterCommand("successnotify", function()
    TriggerEvent('SuperGMS-Notify:sendNotify', 'Success</br>Example Success Notify', 'success')
end)

RegisterCommand("warnnotify", function()
    TriggerEvent('SuperGMS-Notify:sendNotify', 'Warning</br>Example Warn Notify.', 'warn')
end)

RegisterCommand("longnotify", function()
    TriggerEvent('SuperGMS-Notify:sendNotify', 'Success</br>This is first line from long notify message. </br>This is second line from long notify message.', 'success')
end)
