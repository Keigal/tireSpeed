
-- Compacts - 0
RegisterNetEvent('tireSpeed:client:checkTires:0')
AddEventHandler('tireSpeed:client:checkTires:0', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Sedans - 1
RegisterNetEvent('tireSpeed:client:checkTires:1')
AddEventHandler('tireSpeed:client:checkTires:1', function()

    limitSpeed(60, 40, 20, 10)

end)

-- SUVs - 2
RegisterNetEvent('tireSpeed:client:checkTires:2')
AddEventHandler('tireSpeed:client:checkTires:2', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Coupes - 3
RegisterNetEvent('tireSpeed:client:checkTires:3')
AddEventHandler('tireSpeed:client:checkTires:3', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Muscle - 4
RegisterNetEvent('tireSpeed:client:checkTires:4')
AddEventHandler('tireSpeed:client:checkTires:4', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Sports Classics - 5
RegisterNetEvent('tireSpeed:client:checkTires:5')
AddEventHandler('tireSpeed:client:checkTires:5', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Sports - 6
RegisterNetEvent('tireSpeed:client:checkTires:6')
AddEventHandler('tireSpeed:client:checkTires:6', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Super - 7
RegisterNetEvent('tireSpeed:client:checkTires:7')
AddEventHandler('tireSpeed:client:checkTires:7', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Motorcycles - 8
RegisterNetEvent('tireSpeed:client:checkTires:8')
AddEventHandler('tireSpeed:client:checkTires:8', function()

    limitSpeed(60, 40, 20, 10)

end)

-- Function to limit speed takes in 4 args which are: oneTire, twoTires, threeTires, fourTires max speeds
function limitSpeed(oneTire, twoTires, threeTires, fourTires)

    -- Initializes variables
    local poppedTires = 0
    local maxSpeed = 0.0

    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped)

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