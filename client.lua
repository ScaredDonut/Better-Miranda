-----------------------------------------------------------------------------
-- Better-ID- A Simple FiveM Script, Made By Rocket Development w/ NAT2K15 Development --
-----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
                  -- !WARNING! !WARNING! !WARNING! !WARNING! !WARNING! --
        -- DO NOT TOUCH THIS FILE OR YOU /WILL/ FUCK SHIT UP! THERE IS NOTHING TO EDIT --
-- DO NOT BE STUPID AND WHINE TO ME ABOUT THIS BEING BROKEN IF YOU TOUCHED THE LINES BELOW. --
----------------------------------------------------------------------------------------------

RegisterNetEvent("betterM:mcardTrigger")
AddEventHandler("betterM:mcardTrigger", function() 
  Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 120000

    TriggerServerEvent('redrum:didnotmakethis')
    TriggerEvent('mcard:display', true)
    TriggerEvent('anima', true)

    while display do
      Citizen.Wait(1)
      ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('mcard:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('mcard:display', false)
        ClearPedTasks(PlayerPedId())
        StopAnimTask(GetPlayerPed(-1), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      end
    end
  end)
end)

RegisterCommand('mcard', function()
TriggerEvent('betterM:mcardTrigger')
end)
  
  RegisterNetEvent('mcard:display')
  AddEventHandler('mcard:display', function(value)
    SendNUIMessage({
      type = "mcard",
      display = value
    })
  end)
  
  RegisterNetEvent('redrum:didnotmakethis-c')
  AddEventHandler('redrum:didnotmakethis-c', function(id)
    Citizen.CreateThread(function()
    local display = true
    local myid = PlayerId() -- Define my id
    local pid = GetPlayerFromServerId(id) -- Define Jo Shmoes ID
    local startTime = GetGameTimer()
    local delay = 120000
    if pid ~= myid then
      if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myid)), GetEntityCoords(GetPlayerPed(pid)), true) < 1.99 then 
        TriggerEvent('mcard:display', true)
        TriggerEvent('anima', true)    
            while display do
                Citizen.Wait(1)
                ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
                if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
                display = false
                TriggerEvent('mcard:display', false)
            end
                if (IsControlJustPressed(1, 51)) then
                    display = false
                    TriggerEvent('mcard:display', false)
                    ClearPedTasks(PlayerPedId())
                    StopAnimTask(GetPlayerPed(-1), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
                  end  
            end          
        else
                TriggerEvent('mcard:display', false)
                display = true    
            end
        end
end)
end)
  
RegisterNetEvent("anima")
AddEventHandler("anima", function(inputText) 
  RequestAnimDict("amb@code_human_wander_clipboard@male@base")
  TaskPlayAnim(GetPlayerPed(-1),"amb@code_human_wander_clipboard@male@base", "static", 5.0, -1, -1, 50, 0, false, false, false)
  local IsInVehicle = IsPedInAnyVehicle(PlayerPedId(), false)
	if not IsInVehicle then
		TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_CLIPBOARD", 0, true)
	end
end)
  
  
function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end

RegisterNetEvent("betterM:vcardTrigger")
AddEventHandler("betterM:vcardTrigger", function() 
Citizen.CreateThread(function()
    local display = true
    local startTime = GetGameTimer()
    local delay = 120000

    TriggerServerEvent('redrum:didnotmakethiseither')
    TriggerEvent('vcard:display', true)
    TriggerEvent('anima', true)

    while display do
      Citizen.Wait(1)
      ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then 
        display = false
        TriggerEvent('vcard:display', false)
      end
      if (IsControlJustPressed(1, 51)) then
        display = false
        TriggerEvent('vcard:display', false)
        ClearPedTasks(PlayerPedId())
        StopAnimTask(GetPlayerPed(-1), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      end
    end
  end)
end)
  
  
RegisterCommand('vcard', function()
  TriggerEvent("betterM:vcardTrigger")
end)

RegisterNetEvent('redrum:didnotmakethiseither-c')
AddEventHandler('redrum:didnotmakethiseither-c', function(id)
  Citizen.CreateThread(function()
  local display = true
  local myid = PlayerId() -- Define my id
  local pid = GetPlayerFromServerId(id) -- Define Jo Shmoes ID
  local startTime = GetGameTimer()
  local delay = 120000
  if pid ~= myid then
    if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myid)), GetEntityCoords(GetPlayerPed(pid)), true) < 1.9 then -- If the person is within 25 meters run this
      TriggerEvent('vcard:display', true)
      TriggerEvent('anima', true)    
          while display do
              Citizen.Wait(1)
              ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
              if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
              display = false
              TriggerEvent('vcard:display', false)
          end
              if (IsControlJustPressed(1, 51)) then
                  display = false
                  TriggerEvent('vcard:display', false)
                  ClearPedTasks(PlayerPedId())
                  StopAnimTask(GetPlayerPed(-1), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
                end  
          end          
      else
              TriggerEvent('vcard:display', false)
              display = true    
          end
      end
end)
end)

  
  RegisterNetEvent('vcard:display')
  AddEventHandler('vcard:display', function(value)
    SendNUIMessage({
      type = "vcard",
      display = value
    })
  end)
  
  
  function ShowInfo(text, state)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, state, 0, -1)
  end