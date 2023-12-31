function DisplayNotification(alert)
    SendNUIMessage({
        action = 'show_notification',
        type = alert.type or 'grey',
        title = alert.title or ' ',
        body = alert.body and '~w~'..alert.body or ' ',
        icon = alert.icon or 'fas fa-check fa-2x'
    })
end

RegisterNetEvent('panNotifications:notify')
AddEventHandler('panNotifications:notify', function(alert)
    exports.PanNotifications:DisplayNotification({
        title = alert.title,
        body = alert.body,
        type = alert.type,
        icon = alert.icon
    })
end)

Citizen.Wait(500)
