-- Notification principale
RegisterNetEvent('blab:notify')
AddEventHandler('blab:notify', function(title, message, type, duration)
    SendNUIMessage({
        action = 'show',
        title = title or "BLab",
        message = message,
        type = type or "info",        -- success, error, warning, info
        duration = duration or 5000
    })
end)

-- Export rapide (le plus utilisé)
exports('Notify', function(title, message, type, duration)
    TriggerEvent('blab:notify', title, message, type, duration)
end)