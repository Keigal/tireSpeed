
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

                -- Gets network id of vehicle
                local vehNetID = NetworkGetNetworkIdFromEntity(veh)

                TriggerClientEvent('chat:addMessage', -1, {
                    color = {255, 0, 0},
                    multiline = true,
                    args = {'server-vehNetID: ', vehNetID}
                })

                -- Gets owner of vehicle entity
                local owner = NetworkGetEntityOwner(vehNetID)

                TriggerClientEvent('chat:addMessage', -1, {
                    color = {255, 0, 0},
                    multiline = true,
                    args = {'server-owner: ', vehNetID}
                })

                -- Tells owner's client to run event to limit speed
                TriggerClientEvent('tireSpeed:client:checkTires', owner, owner)

            end

            TriggerClientEvent('chat:addMessage', -1, {
                color = {255, 0, 0},
                multiline = true,
                args = {'Thread ran.'}
            })

        end

    end

end)

