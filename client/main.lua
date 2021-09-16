
-- Thread checks tire status and acts appropriately
Citizen.CreateThread(function()

    while true do

        -- Due to the nature of how wheels pop this thread doesn't need to run often
        Citizen.Wait(3000)

        local playerPed = PlayerPedId()

        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if (vehicle ~= 0)
        then

            local maxTires = GetVehicleNumberOfWheels(vehicle)

            local poppedTires = 0

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

            if (poppedTires == 0)
            then
                SetVehicleMaxSpeed(0)
            elseif (poppedTires == 1)
            then
                SetVehicleMaxSpeed(100)
            elseif (poppedTires == 2)
            then
                SetVehicleMaxSpeed(80)
            elseif (poppedTires == 3)
            then
                SetVehicleMaxSpeed(60)
            else
                SetVehicleMaxSpeed(40)

            TriggerEvent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {'Popped tires: ', poppedTires}
            })

        end
    
    end

end)