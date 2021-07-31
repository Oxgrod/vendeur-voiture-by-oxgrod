RegisterCommand("co", function(source, args, rawcommand)
    local pos = GetEntityCoords(PlayerPedId())
    print(pos.x..", "..pos.y..", "..pos.z)
end, false)

RMenu.Add("vendeur-voiture-by-oxgrod", "vendeur-voiture-by-oxgrod_main", RageUI.CreateMenu("Vendeur Voiture by Oxgrod", "Un vendeur de voiture gratuite fait par Oxgrod."))
RMenu:Get("vendeur-voiture-by-oxgrod", "vendeur-voiture-by-oxgrod_main").Closed = function()
    print("Vous avez fermé le menu")
end

Citizen.CreateThread(function()
    while true do
        local interval = 1
        local pos = GetEntityCoords(PlayerPedId())
        local dest = vector3(237.73, -860.43, 29.66)
        local distance = GetDistanceBetweenCoords(pos, dest, true)

        if distance > 30 then
            interval = 200
        else
            interval = 1
            --DrawMarker(2, 2747.82, 1447.58, 24.49, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255,0,0, 170, 0, 1, 2, 0, nil, nil, 0)
            if distance < 1 then
                AddTextEntry("HELP", "Appuyez sur ~INPUT_CONTEXT~ ~s~pour parler à Will")
                DisplayHelpTextThisFrame("HELP", false)
                if IsControlJustPressed(1, 51) then
                    RageUI.Visible(RMenu:Get("vendeur-voiture-by-oxgrod", "vendeur-voiture-by-oxgrod_main"), true)
                end
            end
        end

        Citizen.Wait(interval)
    end
end)

Citizen.CreateThread(function()
    while true do

        RageUI.IsVisible(RMenu:Get("vendeur-voiture-by-oxgrod", "vendeur-voiture-by-oxgrod_main"),true,true,true,function()

            RageUI.Button("Blista", "Spawn une Blista", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("Blista")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Reaper", "Spawn une Reaper", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("Reaper")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Adder", "Spawn une Adder", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("adder")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Alpha", "Spawn une Alpha", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("alpha")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Ardent", "Spawn une Ardent", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("ardent")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Asea", "Spawn une Asea", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("asea")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Autarch", "Spawn une Autarch", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("autarch")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Baller", "Spawn un Baller", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("baller2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Baller Sport", "Spawn un Baller Sport", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("baller3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Banshee", "Spawn une Banshee", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("banshee")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Banshee 900R", "Spawn une Banshee 900R", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("banshee2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bestia GTS", "Spawn une Bestia GTS", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("bestiagts")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bf Injection", "Spawn une Bf Injection", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("bfinjection")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bifta", "Spawn une Bifta", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("bifta")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bison", "Spawn un Bison", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("bison")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Blade", "Spawn un Blade", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("blade")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Blazer", "Spawn un Blazer", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("blazer")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Blazer Sport", "Spawn un Blazer Sport", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("blazer4")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bobcat XL", "Spawn un Bobcat XL", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("bobcatxl")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Brawler", "Spawn un Brawler", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("brawler")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Brioso R/A", "Spawn une Brioso R/A", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("brioso")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Btype", "Spawn une Btype", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("btype")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Btype Hotroad", "Spawn une Btype Hotroad", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("btype2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Btype Luxe", "Spawn une Btype Luxe", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("btype3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Buccaneer", "Spawn une Buccaneer", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("buccaneer")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Buccaneer Rider", "Spawn une Buccanner Rider", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("buccanner2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Buffalo", "Spawn une Buffalo", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("buffalo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Buffalo S", "Spawn une Buffalo S", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("buffalo2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bullet", "Spawn une Bullet", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("bullet")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Burrito", "Spawn une Burrito", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("burrito3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Camper", "Spawn une Camper", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("camper")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Carbonizzare", "Spawn une Carbonizzare", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("carbonizzare")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Casco", "Spawn une Casco", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("casco")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Cavalcade", "Spawn une Cavalcade", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("cavalcade2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Cheetah", "Spawn une Cheetah", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("cheetah")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Chino", "Spawn une Chino", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("chino")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Chino Luxe", "Spawn une Chino Luxe", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("chino2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Cognoscenti Cabrio", "Spawn une Cognoscenti Cabrio", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("cogcabrio")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Cognoscenti", "Spawn une Cognoscenti", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("cognoscenti")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Comet", "Spawn une Comet", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("comet2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Comet 5", "Spawn une Comet 5", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("comet5")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Contender", "Spawn une Contender", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("contender")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Coquette", "Spawn une Coquette", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("coquette")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Coquette Classic", "Spawn une Coquette Classic", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("coquette2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Coquette BlackFin", "Spawn une Coquette BlackFin", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("coquette3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Cyclone", "Spawn une Cyclone", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("cyclone")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Deluxo", "Spawn une Deluxo", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("deluxo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Dominator", "Spawn une Dominator", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("dominator")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Dubsta", "Spawn une Dubsta", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("dubsta")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Dubsta Luxuary", "Spawn une Dubsta Luxuary", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("dubsta2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Bubsta 6x6", "Spawn une Bubsta 6x6", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("dubsta3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Dukes", "Spawn une Dukes", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("dukes")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Dune Buggy", "Spawn une Dune Buggy", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("dune")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Elegy", "Spawn une Elegy", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("elegy2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Emperor", "Spawn une Emperor", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("emperor")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Entity XF", "Spawn une Entity XF", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("entityxf")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Exemplar", "Spawn une Exemplar", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("exemplar")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("F620", "Spawn une F620", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("f620")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Faction", "Spawn une Faction", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("faction")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Faction Rider", "Spawn une Faction Rider", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("faction2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Faction XL", "Spawn une Faction XL", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("faction3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Felon", "Spawn une Felon", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("felon")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Felon GT", "Spawn une Felon GT", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("felon2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Feltzer", "Spawn une Feltzer", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("feltzer2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Stirling GT", "Spawn une Stirling GT", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("feltzer3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("FMJ", "Spawn une FMJ", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("fmj")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Fhantom", "Spawn une Fhantom", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("fq2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Fugitive", "Spawn une Fugitive", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("fugitive")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Furor GT", "Spawn une Furor GT", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("furorgt")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Fusilade", "Spawn une Fusilade", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("fusilade")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Gauntlet", "Spawn une Gauntlet", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("gauntlet")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Gang Burrito", "Spawn une Gang Burrito", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("gburrito")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Burrito", "Spawn une Burrito", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("gburrito")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Glendale", "Spawn une Glendale", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("glendale")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Grabger", "Spawn une Grabger", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("granger")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Gresley", "Spawn une Gresley", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("gresley")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("GT 500", "Spawn une GT 500", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("gt500")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Guardian", "Spawn une Guardian", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("guardian")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Hermes", "Spawn une Hermes", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("hermes")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Hotknife", "Spawn une Hotknife", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("hotknife")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Huntley S", "Spawn une Huntley S", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("huntley")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Hustler", "Spawn une Hustler", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("hustler")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Infernus", "Spawn une Infernus", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("infernus")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Intruder", "Spawn une Intruder", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("intruder")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Issi", "Spawn une Issi", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("issi2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Jackal", "Spawn une Jackal", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("jackal")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Jester", "Spawn une Jester", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("jester")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Jester(Racecar)", "Spawn une Jester(Racecar)", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("jester2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Journey", "Spawn une Journey", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("journey")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Kamacho", "Spawn une Kamacho", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("kamacho")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Khamelion", "Spawn une Khamelion", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("khamelion")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Kuruma", "Spawn une Kuruma", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("kuruma")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Landstalker", "Spawn une Landstalker", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("landstalker")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("RE-7B", "Spawn une RE-7B", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("le7b")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Lynx", "Spawn une Lynx", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("lynx")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Mamba", "Spawn une Mamba", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("mamba")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Manana", "Spawn une Manana", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("manana")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Massacro", "Spawn une Massacro", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("massacro")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Massacro(Racecar)", "Spawn une Massacro(Racecar)", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("massacro2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Mesa", "Spawn une Mesa", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("mesa")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Mesa Trail", "Spawn une Mesa Trail", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("mesa3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Minivan", "Spawn une Minivan", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("minivan")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Monroe", "Spawn une Monroe", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("monroe")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("TheLiberator", "Spawn une TheLiberator", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("monster")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Moonbeam", "Spawn une Moonbeam", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("moonbeam")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Moonbeam Rider", "Spawn une Moonbeam Rider", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("moonbeam2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Neon", "Spawn une Neon", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("neon")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Nightshade", "Spawn une Nightshade", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("nightshade")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("9F", "Spawn une 9F", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("ninef")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("9F Cabrio", "Spawn une 9F Cabrio", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("ninef2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Omnis", "Spawn une Omnis", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("omnis")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Oppressor", "Spawn une Oppressor", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("oppressor")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Oracle XS", "Spawn une Oracle XS", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("oracle2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Osiris", "Spawn une Osiris", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("osiris")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Panto", "Spawn une Panto", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("Panto")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Paradise", "Spawn une Paradise", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("paradise")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Pariah", "Spawn une Pariah", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("pariah")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Patriot", "Spawn une Patriot", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("patriot")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Penumbra", "Spawn une Penumbra", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("penumbra")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Pfister", "Spawn une Pfister", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("pfister811")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Phoenix", "Spawn une Phoenix", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("phoenix")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Picador", "Spawn une Picador", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("picador")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Pigalle", "Spawn une Pigalle", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("pigalle")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Prairie", "Spawn une Prairie", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("prairie")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Premier", "Spawn une Premier", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("premier")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Primo Custom", "Spawn une Primo Custom", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("primo2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("X80 Proto", "Spawn une X80 Proto", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("prototipo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Radius", "Spawn une Radius", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("radi")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Raiden", "Spawn une Raiden", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("raiden")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rapid GT", "Spawn une Rapid GT", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rapidgt")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rapid GT Convertible", "Spawn une Rapid GT Convertible", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rapidgt2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rapid GT 3", "Spawn une Rapid GT 3", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rapidgt3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rebel", "Spawn une Rebel", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rebel2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Regina", "Spawn une Regina", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("regina")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Retinue", "Spawn une Retinue", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("retinue")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Revolter", "Spawn une Revolter", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("revolter")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Riata", "Spawn une Riata", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("riata")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rocoto", "Spawn une Rocoto", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rocoto")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Ruiner 2", "Spawn une Ruiner 2", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("ruiner2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rumpo", "Spawn une Rumpo", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rumpo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Rumpo Trail", "Spawn une Rumpo Trail", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("rumpo3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sabre Turbo", "Spawn une Sabre Turbo", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sabregt")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sabre GT", "Spawn une Sabre GT", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sabregt2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sandking", "Spawn une Sandking", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sandking")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Savestra", "Spawn une Savestra", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("savestra")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("SC 1", "Spawn une SC 1", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sc1")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Schafter", "Spawn une Schafter", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("schafter2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Schafter V12", "Spawn une Schafter V12", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("schafter3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Seminole", "Spawn une Seminole", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("seminole")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sentinel", "Spawn une Sentinel", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sentinel")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sentinel XS", "Spawn une Sentinel XS", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sentinel2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sentinel 3", "Spawn une Sentinel 3", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sentinel3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Seven 70", "Spawn une Seven 70", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("seven70")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("ETR1", "Spawn une ETR1", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sheava")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Slam Van", "Spawn une Slam Van", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("slamvan3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Stinger", "Spawn une Stinger", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("stinger")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Stinger GT", "Spawn une Stinger GT", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("stingergt")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Streiter", "Spawn une Streiter", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("streiter")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Stretch", "Spawn une Stretch", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("stretch")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Stromberg", "Spawn une Stromberg", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("stromberg")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sultan", "Spawn une Sultan", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sultan")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Sultan RS", "Spawn une Sultan RS", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("sultanrs")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Super Diamond", "Spawn une Super Diamond", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("superd")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Surano", "Spawn une Surano", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("surano")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Surfer", "Spawn une Surfer", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("surfer")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("T20", "Spawn une T20", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("t20")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Tailgater", "Spawn une Tailgater", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("tailgater")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Tampa", "Spawn une Tampa", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("tampa")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Drift Tampa", "Spawn une Drift Tampa", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("tampa2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Drift", "Spawn une Drift", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("tampa3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Trophy Truck", "Spawn une Trophy Truck", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("trophytruck")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Trophy Truck Limited", "Spawn une Trophy Truck Limited", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("trophytruck2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Tropos", "Spawn une Tropos", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("tropos")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Turismo R", "Spawn une Turismo R", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("turismor")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Tyrus", "Spawn une Tyrus", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("tyrus")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Vacca", "Spawn une Vacca", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("vacca")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Verlierer", "Spawn une Verlierer", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("verlierer2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Vigero", "Spawn une Vigero", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("vigero")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Virgo", "Spawn une Virgo", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("virgo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Viseris", "Spawn une Viseris", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("viseris")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Visione", "Spawn une Visione", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("visione")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Voltic", "Spawn une Voltic", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("voltic")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Voltic 2", "Spawn une Voltic 2", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("voltic2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Voodoo", "Spawn une Voodoo", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("voodoo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Warrener", "Spawn une Warrener", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("warrener")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Washington", "Spawn une Washington", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("washington")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Windsor", "Spawn une Windsor", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("windsor")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Windsor Drop", "Spawn une Windsor Drop", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("windsor2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("XLS", "Spawn une XLS", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("xls")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Yosemite", "Spawn une Yosemite", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("yosemite")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Youga", "Spawn une Youga", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("youga")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Youga Luxuary", "Spawn une Youga Luxuary", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("youga2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Z190", "Spawn une Z190", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("z190")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Zentorno", "Spawn une Zentorno", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("zentorno")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Zion", "Spawn une Zion", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("zion")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Zion Cabrio", "Spawn une Zio Cabrio", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("zion2")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

            RageUI.Button("Z-Type", "Spawn une Z-Type", {RightBadge = RageUI.BadgeStyle.Car}, true,function(h,a,s)
                if s then
                    RageUI.CloseAll()
                    local model = GetHashKey("ztype")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, pos.x, pos.y, pos.z, 90.0, true, false)
                    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
                end
            end)

        end, function()end, 1)

        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("g_m_y_pologoon_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "g_m_y_pologoon_01", 237.73, -860.43, 28.66, 352.28, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

local v1 = vector3(237.73, -860.43, 29.66)

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0, 0.35)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

local distance = 20

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if Vdist2(GetEntityCoords(PlayerPedId(), false), v1) < distance then
            Draw3DText(v1.x,v1.y,v1.z, "Tu veux une voiture gratuite ? J'en donne plein. Eloigne toi de moi lorsque tu choisis ta caisse.")
        end
    end
end)