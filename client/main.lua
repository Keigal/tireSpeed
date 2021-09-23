
-- Compacts - 0
RegisterNetEvent('tireSpeed:client:checkTires')
AddEventHandler('tireSpeed:client:checkTires', function()
 
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped)
    local vehClass = GetVehicleClass()

    local eventName = "tireSpeed:client:checkTires:" .. vehClass

    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {'client-vehClass', vehClass}
    })

    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {'client-eventName', eventName}
    })

    TriggerEvent(eventName, veh)

end)

-- Super - 7
RegisterNetEvent('tireSpeed:client:checkTires:7')
AddEventHandler('tireSpeed:client:checkTires:7', function(veh)

    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {'event-veh', veh}
    })

    limitSpeed(veh, 60, 40, 20, 10)

end)

-- Function to limit speed takes in 5 args which are: Vehicle, oneTire, twoTires, threeTires, fourTires max speeds
function limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

    -- Initializes variables
    local poppedTires = 0
    local maxSpeed = 0.0

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
        maxSpeed = oneTire * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    elseif (poppedTires == 2)
    then
        maxSpeed = twoTires * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    elseif (poppedTires == 3)
    then
        maxSpeed = threeTires * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    
    else
        maxSpeed = fourTires * 0.447
        SetVehicleMaxSpeed(veh, maxSpeed)
    end

end