local requiredFields = {"Stand", "Create", "Stop", "sendChat", "getPlayer", "ownerPlayer"}
local function isAPIReady()
    local api = getgenv().SocietyStandAPI
    if not api then return false end
    for _, field in ipairs(requiredFields) do
        if api[field] == nil then
            return false
        end
    end
    return true
end

repeat task.wait() until isAPIReady()
local API = getgenv().SocietyStandAPI

if not API or not API.Stand then
    warn("SocietyStandAPI not properly initialized")
    return
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local Stand = API.Stand

local function hrpOf(char) return char and char:FindFirstChild("HumanoidRootPart") end
local function myHRP() return hrpOf(LocalPlayer.Character) end

local function isSlotOnCooldown(slotNumber)
    local hotbar = LocalPlayer.PlayerGui:FindFirstChild("Hotbar")
    if not hotbar then return false end
    
    local backpack = hotbar:FindFirstChild("Backpack")
    if not backpack then return false end
    
    local hotbarSlots = backpack:FindFirstChild("Hotbar")
    if not hotbarSlots then return false end
    
    local slot = hotbarSlots:FindFirstChild(tostring(slotNumber))
    if not slot then return false end
    
    local base = slot:FindFirstChild("Base")
    if not base then return false end
    
    local cooldown = base:FindFirstChild("Cooldown")
    if cooldown then
        return true 
    end
    
    return false 
end

local slotToToolName = {}

local VIM = game:GetService("VirtualInputManager")

local function doM1()
    if not Stand.Attack then return false end
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        pcall(function() hum:UnequipTools() end)
    end

    VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0) 
    task.wait(0.05)
    VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0)
    return true
end


local function getToolByName(name)
    local bp = LocalPlayer:FindFirstChild("Backpack")
    if not bp then return nil end
    return bp:FindFirstChild(name) or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(name))
end

local function getAvailableSlots()
    local availableSlots = {}
    for slotNumber = 1, 4 do
        if not isSlotOnCooldown(slotNumber) then
            table.insert(availableSlots, slotNumber)
        end
    end
    return availableSlots
end

local function equip(tool)
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if hum and tool and tool.Parent ~= LocalPlayer.Character then
        pcall(function() hum:EquipTool(tool) end)
        task.wait(0.1)
    end
end

local function tryFireTool(tool, toolName)
    if not Stand.Attack or not tool then return false end
    local hum = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if not hum then return false end
    pcall(function() hum:EquipTool(tool) end)
    task.wait(0.05)
    if not Stand.Attack then return false end

    local ok = false
    if tool.Activate then ok = pcall(function() tool:Activate() end) or ok end
    for _, d in ipairs(tool:GetDescendants()) do
        if not Stand.Attack then break end
        if d:IsA("RemoteEvent") then
            ok = pcall(function() d:FireServer() end) or ok
        elseif d:IsA("RemoteFunction") then
            ok = pcall(function() d:InvokeServer() end) or ok
        end
        if ok then break end
    end

    task.wait(0.05)
    pcall(function() hum:UnequipTools() end)
    return ok
end

local function clearAttackState()
    if Stand.AttackConn then Stand.AttackConn:Disconnect() Stand.AttackConn = nil end
    if Stand.AttackDeathConn then Stand.AttackDeathConn:Disconnect() Stand.AttackDeathConn = nil end
    Stand.Attack = false
    Stand.Attacking = false
end

local Movesets = {
    [1] = { name = "TheStrongestHero", character = "Bald", tools = {"Normal Punch", "Consecutive Punches", "Shove", "Uppercut"} },
    [2] = { name = "HeroHunter", character = "Hunter", tools = {"Flowing Water","Lethal Whirlwind Stream","Hunter's Grasp","Prey's Peril"} },
    [3] = { name = "DestructiveCyborg", character = "Cyborg", tools = {"Machine Gun Blows","Ignition Burst","Blitz Shot","Jet Dive"} },
    [4] = { name = "DeadlyNinja", character = "Ninja", tools = {"Flash Strike","Whirlwind Kick","Scatter","Explosive Shuriken"} },
    [5] = { name = "BrutalDemon", character = "Batter", tools = {"Homerun","Beatdown","Grand Slam","Foul Ball"} },
    [6] = { name = "BladeMaster", character = "Blade", tools = {"Quick Slice","Atmos Cleave","Pinpoint Cut","Split Second Counter"} },
    [7] = { name = "WildPsychic", character = "Esper", tools = {"Crushing Pull","Windstorm Fury","Stone Coffin","Expulsive Push"} },
    [8] = { name = "MartialArtist", character = "Purple", tools = {"Bullet Barrage","Vanishing Kick","Whirlwind Drop","Head First"} },
}

local function detectToolsAndClass()
    local bp = LocalPlayer:FindFirstChild("Backpack")
    local char = LocalPlayer.Character
    local detectedTools = {}
    local detectedClass = nil

    if bp then
        for _, tool in ipairs(bp:GetChildren()) do
            if tool:IsA("Tool") then
                table.insert(detectedTools, tool.Name)
            end
        end
    end

    if char then
        for _, tool in ipairs(char:GetChildren()) do
            if tool:IsA("Tool") then
                table.insert(detectedTools, tool.Name)
            end
        end
    end

    local uniqueTools = {}
    local seen = {}
    for _, tName in ipairs(detectedTools) do
        if not seen[tName] then
            table.insert(uniqueTools, tName)
            seen[tName] = true
        end
        if #uniqueTools >= 4 then break end
    end

    for _, data in pairs(Movesets) do
        for _, tName in ipairs(data.tools) do
            for _, dt in ipairs(uniqueTools) do
                if dt == tName then
                    detectedClass = data.character
                    break
                end
            end
            if detectedClass then break end
        end
        if detectedClass then break end
    end

    if not detectedClass then
        detectedClass = char and char.Name or "Unknown"
    end

    for i = 1, 4 do
        slotToToolName[i] = uniqueTools[i]
    end

    print("[Auto-detect] Class:", detectedClass)
    print("[Auto-detect] Tools:", table.concat(uniqueTools, ", "))
end

detectToolsAndClass()


local function switchMode(num)
    local data = Movesets[num]
    if not data then
        warn("Invalid mode:", num)
        return
    end

    local args = {{Goal = "Change Character", Character = data.character}}
    local char = LocalPlayer.Character
    local comm = char and char:FindFirstChild("Communicate")
    if comm and comm:IsA("RemoteEvent") then
        comm:FireServer(unpack(args))
    else
        Instance.new("RemoteEvent", nil):FireServer(unpack(args))
    end

    for i, toolName in ipairs(data.tools) do
        slotToToolName[i] = toolName
    end

    print("[Mode Switch] Now:", data.name, "(", data.character, ")")
    return data
end

API.Create("switch", function(args)
    local modeNum = tonumber(args[1])
    if not modeNum then
        API.sendChat("Invalid mode number. Usage: switch <1-8>")
        return
    end
    local data = switchMode(modeNum)
    if data then
        API.sendChat(("Switched mode to %s (%s)"):format(data.name, data.character))
    end
end)

API.Create("attack", function(args)
    if Stand.Attack then
        clearAttackState()
        API.Stand.Following = false
        API.currentFollowTarget = nil
        API.Stop()
        API.sendChat("Stopped attacking.")
        return
    end

    local playerName = table.concat(args, " ")
    local target = (playerName == "" and API.ownerPlayer) or API.getPlayer(playerName)
    if not target then
        local lowerName = playerName:lower()
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and (player.Name:lower():find(lowerName,1,true) or 
                (player.DisplayName and player.DisplayName:lower():find(lowerName,1,true))) then
                target = player
                break
            end
        end
    end

    if not target or not target.Character then
        API.sendChat("Target not found.")
        return
    end

    local humanoid = target.Character:FindFirstChildOfClass("Humanoid")
    local targetHRP = hrpOf(target.Character)
    if not humanoid or not targetHRP then
        API.sendChat("Target invalid (no Humanoid/HRP).")
        return
    end

    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end

    Stand.Summoned = true
    Stand.Following = false
    Stand.Attack = true
    Stand.Attacking = true  
    API.Summon()
    
    if API.Commands and API.Commands["frame"] then
        API.Commands["frame"]({target.Name})
    else
        API.currentFollowTarget = target
    end

    Stand.AttackDeathConn = humanoid.Died:Connect(function()
        clearAttackState()
        API.Stop()
        API.Summon()
    end)

    Stand.AttackConn = RunService.Heartbeat:Connect(function()
        if not Stand.Attack or not (target.Character and targetHRP.Parent) then return end
        if API.currentFollowTarget ~= target then API.currentFollowTarget = target end

        local availableSlots = getAvailableSlots()
        local usedTool = false

        if #availableSlots > 0 then
            for _, slotNumber in ipairs(availableSlots) do
                if not Stand.Attack then break end
                local tool = getToolByName(slotToToolName[slotNumber])
                if tool then
                    Stand.Attacking = true
                    tryFireTool(tool, slotToToolName[slotNumber])
                    usedTool = true
                    task.wait(0.5)
                end
            end
        end

        if not usedTool then
            for i = 1, 3 do
                if not Stand.Attack then break end
                doM1()
                task.wait(0.1)
            end
        end
    end)




    API.sendChat("Attacking " .. target.Name .. "!")
end)

API.Create("unattack", function()
    clearAttackState()
    API.Stand.Following = false
    API.currentFollowTarget = nil
    API.Stop()
    API.Summon()
end)


local VIM = game:GetService("VirtualInputManager")

local recentlyUsedTrashcans = {}
local TRASHCAN_MEMORY_TIME = 35 

local function leftClick()
    VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0) 
    task.wait(0.1)
    VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0) 
end

local function getClosestTrashcan()
    local trashFolder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Trash")
    if not trashFolder then return nil end

    local myPos = myHRP() and myHRP().Position
    if not myPos then return nil end

    local closest, dist = nil, math.huge
    for _, obj in ipairs(trashFolder:GetChildren()) do
        if obj.Name == "Trashcan" and obj:IsDescendantOf(workspace) then
            if not recentlyUsedTrashcans[obj] then
                local primaryPart = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
                if primaryPart then
                    local d = (primaryPart.Position - myPos).Magnitude
                    if d < dist then
                        closest, dist = obj, d
                    end
                end
            end
        end
    end
    return closest
end

local function trashcanStillExists(trashcan)
    return trashcan and trashcan:IsDescendantOf(workspace) and trashcan.Name == "Trashcan"
end

local function markTrashcanUsed(trashcan)
    if trashcan then
        recentlyUsedTrashcans[trashcan] = true
        delay(TRASHCAN_MEMORY_TIME, function()
            recentlyUsedTrashcans[trashcan] = nil
        end)
    end
end

local function trashAttack(target)
    if not target or not target.Character then 
        API.sendChat("Target not found!")
        return 
    end
    
    local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")
    if not targetHRP then 
        return 
    end

    local trashcan = getClosestTrashcan()
    if not trashcan then
        API.sendChat("No available trashcans found! They respawn every 35 seconds.")
        return
    end

    local trashcanPart = trashcan.PrimaryPart or trashcan:FindFirstChildWhichIsA("BasePart")
    if not trashcanPart then
        return
    end

    local wasAttacking = Stand.Attacking
    local wasFollowing = Stand.Following
    local wasSummoned = Stand.Summoned
    local originalTarget = API.currentFollowTarget

    Stand.Attacking = false
    Stand.Following = false
    Stand.Summoned = true
    API.currentFollowTarget = nil
    Stand.TrashAttacking = true

    if not trashcanStillExists(trashcan) then
        API.sendChat("Trashcan disappeared before we could reach it!")
        Stand.TrashAttacking = false
        return
    end

    markTrashcanUsed(trashcan)

    if myHRP() then
        local trashcanPos = trashcanPart.Position
        local lookAtTrashcan = CFrame.lookAt(trashcanPos + Vector3.new(0, 0, -3), trashcanPos)
        myHRP().CFrame = lookAtTrashcan
    end
    task.wait(0.5) 

    if not trashcanStillExists(trashcan) then
        API.sendChat("Trashcan disappeared before we could pick it up!")
        local newTrashcan = getClosestTrashcan()
        if newTrashcan then
            trashcan = newTrashcan
            trashcanPart = trashcan.PrimaryPart or trashcan:FindFirstChildWhichIsA("BasePart")
            if trashcanPart and myHRP() then
                local trashcanPos = trashcanPart.Position
                local lookAtTrashcan = CFrame.lookAt(trashcanPos + Vector3.new(0, 0, -3), trashcanPos)
                myHRP().CFrame = lookAtTrashcan
                task.wait(0.5)
                markTrashcanUsed(trashcan)
            else
                Stand.TrashAttacking = false
                return
            end
        else
            API.sendChat("No trashcans available right now.")
            Stand.TrashAttacking = false
            return
        end
    end

    leftClick()
    task.wait(1.0)  

    if myHRP() and targetHRP then
        local targetPos = targetHRP.Position
        local lookAtTarget = CFrame.lookAt(targetPos + Vector3.new(0, 0, -5), targetPos)
        myHRP().CFrame = lookAtTarget
    end
    task.wait(0.5)  

    leftClick()
    task.wait(1.0)  

    Stand.Attacking = wasAttacking
    Stand.Following = wasFollowing
    Stand.Summoned = wasSummoned
    API.currentFollowTarget = originalTarget
    Stand.TrashAttacking = false
    
    if wasAttacking then
        Stand.Attacking = true
    end
end

API.Create("trashcan", function(args)
    if Stand.TrashAttacking then
        API.sendChat("Already performing trash attack!")
        return
    end
    
    local playerName = table.concat(args, " ")
    local target = (playerName == "" and API.ownerPlayer) or API.getPlayer(playerName)
    
    if not target then
        API.sendChat("Target not found.")
        return
    end
    

    trashAttack(target)
    
end)

local GuardWhitelist = {}

local function isWhitelisted(player)
    return GuardWhitelist[player.UserId] == true
end

API.Create("whitelist", function(args)
    local subCmd = args[1] and args[1]:lower()
    local playerName = table.concat(args, " ", 2)

    if subCmd == "add" then
        local p = API.getPlayer(playerName)
        if not p then
            API.sendChat("Player not found.")
            return
        end
        GuardWhitelist[p.UserId] = true
        API.sendChat(("Whitelisted %s"):format(p.Name))
    elseif subCmd == "remove" then
        local p = API.getPlayer(playerName)
        if not p then
            API.sendChat("Player not found.")
            return
        end
        GuardWhitelist[p.UserId] = nil
        API.sendChat(("Removed %s from whitelist"):format(p.Name))
    elseif subCmd == "list" then
        local names = {}
        for _, p in ipairs(Players:GetPlayers()) do
            if GuardWhitelist[p.UserId] then
                table.insert(names, p.Name)
            end
        end
        if #names == 0 then
            API.sendChat("Whitelist is empty.")
        else
            API.sendChat("Whitelisted: " .. table.concat(names, ", "))
        end
    else
        API.sendChat("Usage: whitelist <add/remove/list> <player>")
    end
end)


local GUARD_RANGE = 20       
local DISENGAGE_RANGE = 28   
local ATTEMPT_EVERY = 0.3    
local RETURN_DELAY = 1    

local guardConn
local guardThreat 
local lastSwing = 0

local function clearGuardState()
    if guardConn then guardConn:Disconnect() guardConn = nil end
    guardThreat = nil
    Stand.Guarding = false
    Stand.Attacking = false
    if API.ownerPlayer then
        API.currentFollowTarget = API.ownerPlayer
        if API.Commands and API.Commands["frame"] then
            pcall(function() API.Commands["frame"]({API.ownerPlayer.Name}) end)
        end
    end
end

local function validHRP(p)
    return p and p.Character and p.Character:FindFirstChild("HumanoidRootPart")
end

local function isAlive(p)
    local hum = p and p.Character and p.Character:FindFirstChildOfClass("Humanoid")
    return hum and hum.Health > 0
end

local function distanceBetween(hrpA, hrpB)
    if not hrpA or not hrpB then return math.huge end
    local ok, dist = pcall(function()
        return (hrpA.Position - hrpB.Position).Magnitude
    end)
    return ok and dist or math.huge
end

local function performGuardSwing()
    local prevAttack = Stand.Attack
    Stand.Attack = true

    local availableSlots = getAvailableSlots()
    local swung = false

    if #availableSlots > 0 then
        for _, slotNumber in ipairs(availableSlots) do
            local toolName = slotToToolName[slotNumber]
            local tool = getToolByName(toolName)
            if tool then
                swung = tryFireTool(tool, toolName) or swung
                task.wait(0.05)
                if swung then break end
            end
        end
    end

    if not swung then
        for i = 1, 2 do
            if doM1() then break end
            task.wait(0.05)
        end
    end

    Stand.Attack = prevAttack
end

local function reframeOwnerDelayed()
    task.delay(RETURN_DELAY, function()
        if Stand.Guarding and not guardThreat then
            API.currentFollowTarget = API.ownerPlayer
            if API.Commands and API.Commands["frame"] then
                pcall(function() API.Commands["frame"]({API.ownerPlayer.Name}) end)
            end
        end
    end)
end

API.Create("guard", function()
    if Stand.Guarding then
        API.sendChat("Already guarding.")
        return
    end

    if not API.ownerPlayer or not validHRP(API.ownerPlayer) then
        API.sendChat("Owner not available to guard.")
        return
    end

    Stand.Guarding = true
    Stand.Summoned = true
    Stand.Following = true
    guardThreat = nil

    API.currentFollowTarget = API.ownerPlayer
    if API.Commands and API.Commands["frame"] then
        pcall(function() API.Commands["frame"]({API.ownerPlayer.Name}) end)
    end

    guardConn = RunService.Heartbeat:Connect(function()
        if not Stand.Guarding then return end

        local ownerHRP = validHRP(API.ownerPlayer) and API.ownerPlayer.Character.HumanoidRootPart
        if not ownerHRP then return end

        if guardThreat then
            if (not isAlive(guardThreat)) or (not validHRP(guardThreat)) then
                guardThreat = nil
                Stand.Attacking = false
                reframeOwnerDelayed()
            else
                local dist = distanceBetween(ownerHRP, guardThreat.Character.HumanoidRootPart)
                if dist > DISENGAGE_RANGE then
                    guardThreat = nil
                    Stand.Attacking = false
                    reframeOwnerDelayed()
                end
            end
        end

        if not guardThreat then
            local closest, closestDist = nil, GUARD_RANGE
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p ~= API.ownerPlayer and not isWhitelisted(p) and isAlive(p) and validHRP(p) then
                    local d = distanceBetween(ownerHRP, p.Character.HumanoidRootPart)
                    if d < closestDist then
                        closest, closestDist = p, d
                    end
                end
            end
            if closest then
                guardThreat = closest
                Stand.Attacking = true
                API.currentFollowTarget = closest
                if API.Commands and API.Commands["frame"] then
                    pcall(function() API.Commands["frame"]({closest.Name}) end)
                end
            end
        end

        if guardThreat and Stand.Attacking then
            local now = os.clock()
            if now - lastSwing >= ATTEMPT_EVERY then
                lastSwing = now
                performGuardSwing()
            end
        end
    end)

    API.sendChat(("Guarding owner."))
end)

API.Create("unguard", function()
    clearGuardState()
    API.sendChat("Stopped guarding.")
end)

local AutoRoastEnabled = false

local roastMessages = {
    "Uninstall the game, %s. You're a lost cause.",
    "%s, your existence is a critical miss.",
    "I've seen more skill from a screen door, %s.",
    "%s, you're the reason your team has a report button.",
    "Go apologize to your parents for those genes, %s.",
    "Is your strategy to bore me to death, %s? It might work.",
    "%s, you fight like a dairy farmer.",
    "I'd call you a noob, %s, but that would be an insult to noobs everywhere.",
    "%s, your gameplay is a cry for help.",
    "Do everyone a favor and unplug your router, %s.",
    "%s, you're so bad you made me win by accident.",
    "I'd rather lick a subway pole than play with %s again.",
    "%s, your birth certificate is an apology letter from the condom factory.",
    "Even a bot would demand a better player, %s.",
    "%s, your IQ is lower than your ping.",
    "The only thing you're carrying, %s, is a disease.",
    "%s, you have the reaction time of a sedated sloth.",
    "Did you buy your account, %s? Or was it a gift from a blind man?",
    "%s, you're about as useful as a chocolate teapot.",
    "Go back to the tutorial and try not to fail it this time, %s."
}

local function getRandomRoast(targetName)
    local msg = roastMessages[math.random(1, #roastMessages)]
    return msg:format(targetName)
end

API.Create("autoroast", function()
    AutoRoastEnabled = not AutoRoastEnabled
    API.sendChat("AutoRoast " .. (AutoRoastEnabled and "enabled" or "disabled"))
end)

local function hookRoastOnDeath(target)
    if not target or not target.Character then return end
    local humanoid = target.Character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    humanoid.Died:Connect(function()
        if AutoRoastEnabled and Stand.Attacking and API.currentFollowTarget == target then
            API.sendChat(getRandomRoast(target.Name))
        end
    end)
end

local oldAttack = API.Commands["attack"]
API.Commands["attack"] = function(args)
    oldAttack(args)
    local playerName = table.concat(args, " ")
    local target = (playerName == "" and API.ownerPlayer) or API.getPlayer(playerName)
    if target then
        hookRoastOnDeath(target)
    end
end


API.Notify({
    Title = "GAME CONFIG",
    Description = (game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name or "Game") .. " Loaded",
    Duration = 20
})
