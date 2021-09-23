
Citizen.CreateThread(function()

    while true do

        Citizen.Wait(5000)

        -- Get all players in server
        for _, playerId in ipairs(GetPlayers()) do

            local ped = GetPlayerPed(playerId)
            local veh = GetVehiclePedIsIn(ped, false)

            -- Checks if ped is in vehicle
            if (veh ~= 0)
            then

                -- Gets owner of vehicle entity
                local owner = NetworkGetEntityOwner(veh)

                -- Gets vehicle class and creates event string
                local vehClass = tostring(GetVehicleClass(veh))

                local eventName = "tireSpeed:client:checkTires:" .. vehClass

                -- Tells owner's client to run event to limit speed
                TriggerClientEvent(eventName, owner)

            end

        end

    end

end)

