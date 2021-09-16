
-- Thread checks tire status and acts appropriately
Citizen.CreateThread(function()

    while true do

        -- Due to the nature of how wheels pop this thread doesn't need to run often
        Citizen.Wait(3000)

        local playerPed = PlayerPedId()

        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if !(vehicle == 0)
        then

            local maxTires = GetVehicleNumberOfWheels(vehicle)

            local poppedTires = 0

            -- Gets number of poppedTires
            for i = 0, maxTires, 1
            do
                -- local wheelHealth = GetVehicleWheelHealth(vehicle, i)

                -- TriggerEvent('chat:addMessage', {
                --     color = {255, 0, 0},
                --     multiline = true,
                --     args = {'Tire Health', wheelHealth}
                -- })
                
                if (IsVehicleTyreBurst(vehicle, i, false))
                then
                    poppedTires = poppedTires + 1
                end

            end

            -- Logic for limiting speed

            -- TriggerEvent('chat:addMessage', {
            --     color = {255, 0, 0},
            --     multiline = true,
            --     args = {'Max tires: ', maxTires}
            -- })

            TriggerEvent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {'Popped tires: ', poppedTires}
            })

        end
    
    end

end)