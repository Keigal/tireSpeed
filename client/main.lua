
-- Event to limit speed of vehicle, server instructs client on when to run event
RegisterNetEvent('tireSpeed:client:checkTires')
AddEventHandler('tireSpeed:client:checkTires', function()

    local poppedTires = 0
    local maxSpeed = 0.0

    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped)

    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {'client-ped: ', ped}
    })

    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {'client-veh: ', veh}
    })

    -- Gets number of poppedTires
    -- Wheel locations are numbered non-standard in FiveM, so we check each location.
    for i = 0, 5, 1
    do        
        if (IsVehicleTyreBurst(veh, i, false))
        then
            poppedTires = poppedTires + 1
        end
    end

    -- Logic for limiting speed
    -- To convert from MPH to m/s we multiply by 0.447
    if (poppedTires == 0)
    then
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    elseif (poppedTires == 1)
    then
        maxSpeed = Config.oneTire * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    elseif (poppedTires == 2)
    then
        maxSpeed = Config.twoTires * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    elseif (poppedTires == 3)
    then
        maxSpeed = Config.threeTires * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    else
        maxSpeed = Config.fourTires * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    end


end)
