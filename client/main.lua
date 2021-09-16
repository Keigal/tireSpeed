
-- Thread checks tire status and acts appropriately
Citizen.CreateThread(function()

    while true do

        -- Due to the nature of how wheels pop this thread doesn't need to run often
        Citizen.Wait(1000)

        local playerPed = PlayerPedId()

        local vehicle = GetVehiclePedIsIn(playerPed)

        local maxTires = GetVehicleNumberOfWheels(vehicle)

        local poppedTires = 0

        -- Gets number of poppedTires
        for i = 0, maxTires, 1
        do
            local wheelHealth = GetVehicleWheelHealth(vehicle, i)

            TriggerEVent('chat:addMessage', {
                color = {255, 0, 0},
                multiline = true,
                args = {'Tire ', i, ' Health: ', wheelHealth}
            })
            
            if (wheelHealth == 0)
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

        -- TriggerEvent('chat:addMessage', {
        --     color = {255, 0, 0},
        --     multiline = true,
        --     args = {'Popped tires: ', poppedTires}
        -- })

    end

end)