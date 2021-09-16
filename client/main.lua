
-- Thread checks tire status and acts appropriately
Citizen.CreateThread(function()

    while true do

        -- Due to the nature of how wheels pop this thread doesn't need to run often
        Citizen.Wait(5000)

        local playerPed = PlayerPedId()

        local vehicle = GetVehiclePedIsIn(playerPed, false)

        -- Only runs the logic if player is in a vehicle.
        if (vehicle ~= 0)
        then

            local poppedTires = 0

            local maxSpeed = 0.0

            -- Gets number of poppedTires
            -- Wheel locations are numbered non-standard in FiveM, so we check each location.
            for i = 0, 5, 1
            do
                
                if (IsVehicleTyreBurst(vehicle, i, false))
                then
                    poppedTires = poppedTires + 1
                end

            end

            -- Logic for limiting speed
            -- To convert from MPH to m/s we multiply by 0.447
            if (poppedTires == 0)
            then
                SetVehicleMaxSpeed(vehicle, maxSpeed)
            
            elseif (poppedTires == 1)
            then
                maxSpeed = Config.oneTire * 0.447
                SetVehicleMaxSpeed(vehicle, maxSpeed)
            
            elseif (poppedTires == 2)
            then
                maxSpeed = Config.twoTires * 0.447
                SetVehicleMaxSpeed(vehicle, maxSpeed)
            
            elseif (poppedTires == 3)
            then
                maxSpeed = Config.threeTires * 0.447
                SetVehicleMaxSpeed(vehicle, maxSpeed)
           
            else
                maxSpeed = Config.fourTires * 0.447
                SetVehicleMaxSpeed(vehicle, maxSpeed)
            end

        end
    
    end

end)