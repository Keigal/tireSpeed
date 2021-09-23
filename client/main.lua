
-- Primary event which runs 
RegisterNetEvent('tireSpeed:client:checkTires')
AddEventHandler('tireSpeed:client:checkTires', function()
 
    local ped = GetPlayerPed(-1)
    local veh = GetVehiclePedIsIn(ped)
    local vehClass = GetVehicleClass(veh)
    local eventName = "tireSpeed:client:checkTires:" .. vehClass

    TriggerEvent(eventName, veh)
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

-- Compact - 0
RegisterNetEvent('tireSpeed:client:checkTires:0')
AddEventHandler('tireSpeed:client:checkTires:0', function(veh)

    oneTire = Config.Compact.oneTire
    twoTires = Config.Compact.twoTires
    threeTires = Config.Compact.threeTires
    fourTires = Config.Compact.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Sedan - 1
RegisterNetEvent('tireSpeed:client:checkTires:1')
AddEventHandler('tireSpeed:client:checkTires:1', function(veh)

    oneTire = Config.Sedan.oneTire
    twoTires = Config.Sedan.twoTires
    threeTires = Config.Sedan.threeTires
    fourTires = Config.Sedan.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- SUV - 2
RegisterNetEvent('tireSpeed:client:checkTires:2')
AddEventHandler('tireSpeed:client:checkTires:2', function(veh)

    oneTire = Config.SUV.oneTire
    twoTires = Config.SUV.twoTires
    threeTires = Config.SUV.threeTires
    fourTires = Config.SUV.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Coupe - 3
RegisterNetEvent('tireSpeed:client:checkTires:3')
AddEventHandler('tireSpeed:client:checkTires:3', function(veh)

    oneTire = Config.Coupe.oneTire
    twoTires = Config.Coupe.twoTires
    threeTires = Config.Coupe.threeTires
    fourTires = Config.Coupe.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Muscle - 4
RegisterNetEvent('tireSpeed:client:checkTires:4')
AddEventHandler('tireSpeed:client:checkTires:4', function(veh)

    oneTire = Config.Muscle.oneTire
    twoTires = Config.Muscle.twoTires
    threeTires = Config.Muscle.threeTires
    fourTires = Config.Muscle.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Sport Classic - 5
RegisterNetEvent('tireSpeed:client:checkTires:5')
AddEventHandler('tireSpeed:client:checkTires:5', function(veh)

    oneTire = Config.SportClassic.oneTire
    twoTires = Config.SportClassic.twoTires
    threeTires = Config.SportClassic.threeTires
    fourTires = Config.SportClassic.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Sport - 6
RegisterNetEvent('tireSpeed:client:checkTires:6')
AddEventHandler('tireSpeed:client:checkTires:6', function(veh)

    oneTire = Config.Sport.oneTire
    twoTires = Config.Sport.twoTires
    threeTires = Config.Sport.threeTires
    fourTires = Config.Sport.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Super - 7
RegisterNetEvent('tireSpeed:client:checkTires:7')
AddEventHandler('tireSpeed:client:checkTires:7', function(veh)

    oneTire = Config.Super.oneTire
    twoTires = Config.Super.twoTires
    threeTires = Config.Super.threeTires
    fourTires = Config.Super.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Motorcycle - 8
RegisterNetEvent('tireSpeed:client:checkTires:8')
AddEventHandler('tireSpeed:client:checkTires:8', function(veh)

    oneTire = Config.Motorcycle.oneTire
    twoTires = Config.Motorcycle.twoTires
    threeTires = Config.Motorcycle.threeTires
    fourTires = Config.Motorcycle.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- OffRoad - 9
RegisterNetEvent('tireSpeed:client:checkTires:9')
AddEventHandler('tireSpeed:client:checkTires:9', function(veh)

    oneTire = Config.OffRoad.oneTire
    twoTires = Config.OffRoad.twoTires
    threeTires = Config.OffRoad.threeTires
    fourTires = Config.OffRoad.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Industrial - 10
RegisterNetEvent('tireSpeed:client:checkTires:10')
AddEventHandler('tireSpeed:client:checkTires:10', function(veh)

    oneTire = Config.Industrial.oneTire
    twoTires = Config.Industrial.twoTires
    threeTires = Config.Industrial.threeTires
    fourTires = Config.Industrial.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Utility - 11
RegisterNetEvent('tireSpeed:client:checkTires:11')
AddEventHandler('tireSpeed:client:checkTires:11', function(veh)

    oneTire = Config.Utility.oneTire
    twoTires = Config.Utility.twoTires
    threeTires = Config.Utility.threeTires
    fourTires = Config.Utility.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Van - 12
RegisterNetEvent('tireSpeed:client:checkTires:12')
AddEventHandler('tireSpeed:client:checkTires:12', function(veh)

    oneTire = Config.Van.oneTire
    twoTires = Config.Van.twoTires
    threeTires = Config.Van.threeTires
    fourTires = Config.Van.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Cycle - 13
RegisterNetEvent('tireSpeed:client:checkTires:13')
AddEventHandler('tireSpeed:client:checkTires:13', function(veh)

    oneTire = Config.Cycle.oneTire
    twoTires = Config.Cycle.twoTires
    threeTires = Config.Cycle.threeTires
    fourTires = Config.Cycle.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Boat - 14
RegisterNetEvent('tireSpeed:client:checkTires:14')
AddEventHandler('tireSpeed:client:checkTires:14', function(veh)

end)

-- Helicopter - 15
RegisterNetEvent('tireSpeed:client:checkTires:15')
AddEventHandler('tireSpeed:client:checkTires:15', function(veh)

end)

-- Plane - 16
RegisterNetEvent('tireSpeed:client:checkTires:16')
AddEventHandler('tireSpeed:client:checkTires:16', function(veh)

end)

-- Service - 17
RegisterNetEvent('tireSpeed:client:checkTires:17')
AddEventHandler('tireSpeed:client:checkTires:17', function(veh)

    oneTire = Config.Service.oneTire
    twoTires = Config.Service.twoTires
    threeTires = Config.Service.threeTires
    fourTires = Config.Service.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Emergency - 18
RegisterNetEvent('tireSpeed:client:checkTires:18')
AddEventHandler('tireSpeed:client:checkTires:18', function(veh)

    oneTire = Config.Emergency.oneTire
    twoTires = Config.Emergency.twoTires
    threeTires = Config.Emergency.threeTires
    fourTires = Config.Emergency.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Military - 19
RegisterNetEvent('tireSpeed:client:checkTires:19')
AddEventHandler('tireSpeed:client:checkTires:19', function(veh)

    oneTire = Config.Military.oneTire
    twoTires = Config.Military.twoTires
    threeTires = Config.Military.threeTires
    fourTires = Config.Military.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Commericial - 20
RegisterNetEvent('tireSpeed:client:checkTires:20')
AddEventHandler('tireSpeed:client:checkTires:20', function(veh)

    oneTire = Config.Commercial.oneTire
    twoTires = Config.Commercial.twoTires
    threeTires = Config.Commercial.threeTires
    fourTires = Config.Commercial.fourTires

    limitSpeed(veh, oneTire, twoTires, threeTires, fourTires)

end)

-- Train - 21
RegisterNetEvent('tireSpeed:client:checkTires:21')
AddEventHandler('tireSpeed:client:checkTires:21', function(veh)

end)