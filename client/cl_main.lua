
local desmayo = false
local player = GetPlayerPed(-1)


CreateThread(function()

    TriggerEvent('chat:addSuggestion', '/+desmayo',  ('Caer al suelo'))
	while true do
 		Wait(0)
         if not IsPedInAnyVehicle(player, false) then
            if desmayo then
                SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
            end
        end
    end
end)
 	

RegisterCommand('+desmayo', function()
        desmayo = true
end,false)

RegisterCommand('-desmayo', function()
        desmayo = false
end,false)
    
RegisterKeyMapping('+desmayo', 'desmayo', 'keyboard', 'J')

CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/+desmayo',  ('Caer al suelo'))
    TriggerEvent('chat:addSuggestion', '/-desmayo',  ('Levantarse de suelo'))
end)
