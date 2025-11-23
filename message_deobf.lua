MoonSec_StringsHiddenAttr = true;
if _ufLpQBksSMvM ~= "Script made by Punchy39 (punchingfella on Discord .gg/j4PgkQ72wp)" then
    return;
elseif AltControlLoaded then
    return;
else
    getgenv().AltControlLoaded = true;
    local v0 = {
        bangAnim = nil, 
        bang = nil, 
        bangDied = nil, 
        bangLoop = nil, 
        orbitRadius = 10, 
        orbitSpeed = 0.5, 
        orbit2Radius = 10, 
        orbit2Speed = 0.5, 
        indexcircle = 0, 
        jerking = nil, 
        jerkLoop = nil
    };
    local _ = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))();
    local v2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))();
    local _ = game:GetService("TextChatService");
    local _ = game:GetService("TextChatService");
    local _ = game:GetService("TextChatService");
    local l_TextChatService_3 = game:GetService("TextChatService");
    local l_RunService_0 = game:GetService("RunService");
    local _ = game:GetService("RunService");
    local l_RunService_2 = game:GetService("RunService");
    local l_Players_0 = game:GetService("Players");
    local _ = game:GetService("Players");
    local l_Players_2 = game:GetService("Players");
    local _ = game:GetService("Players");
    local _ = game:GetService("ReplicatedStorage");
    local l_ReplicatedStorage_1 = game:GetService("ReplicatedStorage");
    local _ = game:GetService("ReplicatedStorage");
    local _ = game:GetService("ReplicatedStorage");
    local l_VirtualUser_0 = game:GetService("VirtualUser");
    local _ = game:GetService("VirtualUser");
    local _ = game:GetService("VirtualUser");
    local _ = game:GetService("VirtualUser");
    local _ = l_Players_0.LocalPlayer;
    local l_LocalPlayer_1 = l_Players_0.LocalPlayer;
    local l_LocalPlayer_2 = l_Players_0.LocalPlayer;
    local _ = l_Players_0.LocalPlayer;
    local _ = l_Players_0.LocalPlayer;
    local _ = l_Players_0.LocalPlayer;
    local _ = game:GetService("UserInputService");
    local _ = game:GetService("UserInputService");
    local l_UserInputService_2 = game:GetService("UserInputService");
    local _ = game:GetService("UserInputService");
    local l_TweenService_0 = game:GetService("TweenService");
    local _ = game:GetService("TweenService");
    local _ = game:GetService("TweenService");
    local _ = game:GetService("TweenService");
    local _ = game:GetService("ContentProvider");
    local _ = game:GetService("ContentProvider");
    local _ = game:GetService("ContentProvider");
    local _ = game:GetService("ContentProvider");
    local _ = game:GetService("Workspace");
    local _ = game:GetService("Workspace");
    local l_Workspace_2 = game:GetService("Workspace");
    local l_Workspace_3 = game:GetService("Workspace");
    local _ = game:GetService("Workspace");
    local _ = game:GetService("Workspace");
    local l_PathfindingService_0 = game:GetService("PathfindingService");
    local _ = game:GetService("PathfindingService");
    local _ = game:GetService("PathfindingService");
    local _ = game:GetService("PathfindingService");
    local v50 = {};
    local v51 = {
        [Settings.mainAccount] = true
    };
    local v52 = l_TextChatService_3.ChatVersion == Enum.ChatVersion.LegacyChatService;
    local _ = false;
    l_Players_0.LocalPlayer.Idled:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_VirtualUser_0 (ref)
        l_VirtualUser_0:CaptureController();
        l_VirtualUser_0:ClickButton2(Vector2.new());
    end);
    local function v58(v54, v55, v56, v57) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v50 (ref)
        v50[v54:lower()] = {
            description = v55, 
            handler = v56, 
            mainOnly = v57 and v57.mainOnly or false, 
            altOnly = v57 and v57.altOnly or false, 
            authRequired = not v57 or v57.authRequired or true, 
            ownerOnly = v57 and v57.ownerOnly or false
        };
    end;
    option = function(v59, v60, v61, v62) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v2 (ref)
        v2:Notify({
            Title = "Punchys Alt Control", 
            Description = v59
        }, {
            OutlineColor = v60, 
            Time = v61, 
            Type = "option"
        }, {
            Image = "rbxassetid://16754163547", 
            ImageColor = Color3.fromRGB(255, 84, 84), 
            Callback = function(v63) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v62 (ref)
                v62(v63);
            end
        });
    end;
    notif = function(v64, v65, v66) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v2 (ref)
        v2:Notify({
            Title = "Punchys Alt Control", 
            Description = v64
        }, {
            OutlineColor = v65, 
            Time = v66, 
            Type = "Default"
        });
    end;
    chat = function(v67) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v52 (ref), l_TextChatService_3 (ref), l_ReplicatedStorage_1 (ref)
        if not v52 then
            l_TextChatService_3.TextChannels.RBXGeneral:SendAsync(v67);
        else
            l_ReplicatedStorage_1.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v67, "All");
        end;
    end;
    local function v69(v68) --[[ Line: 0 ]] --[[ Name:  ]]
        return Settings.altAccounts[v68.Name] ~= nil;
    end;
    isFirstAlt = function(v70) --[[ Line: 0 ]] --[[ Name:  ]]
        return next(Settings.altAccounts) == v70.Name;
    end;
    local function v72(v71) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v51 (ref)
        return v51[v71.Name] == true;
    end;
    createAltControlOverlay = function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        local l_ScreenGui_0 = Instance.new("ScreenGui");
        l_ScreenGui_0.Name = "AltControlOverlay";
        l_ScreenGui_0.IgnoreGuiInset = false;
        l_ScreenGui_0.ResetOnSpawn = false;
        local l_Frame_0 = Instance.new("Frame");
        l_Frame_0.Size = UDim2.new(1, 0, 1, 0);
        l_Frame_0.Position = UDim2.new(0, 0, 0, 0);
        l_Frame_0.BackgroundColor3 = Color3.new(0, 0, 0);
        l_Frame_0.BorderSizePixel = 0;
        l_Frame_0.Parent = l_ScreenGui_0;
        local l_TextLabel_0 = Instance.new("TextLabel");
        l_TextLabel_0.Size = UDim2.new(0.5, 0, 0.5, 0);
        l_TextLabel_0.Position = UDim2.new(0.5, 0, 0.5, 0);
        l_TextLabel_0.AnchorPoint = Vector2.new(0.5, 0.5);
        l_TextLabel_0.BackgroundTransparency = 1;
        l_TextLabel_0.Font = Enum.Font.GothamBold;
        l_TextLabel_0.TextColor3 = Color3.new(1, 1, 1);
        l_TextLabel_0.TextScaled = true;
        l_TextLabel_0.Text = "Alt Control made by Punchy39\npunchingfella on discord\nDiscord.ggj4PgkQ72wp\ndsc.gg/botcontrol";
        l_TextLabel_0.Parent = l_Frame_0;
        l_ScreenGui_0.Parent = l_LocalPlayer_2:WaitForChild("PlayerGui");
    end;
    stopAllMovementLoops = function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref)
        if v0.followLoop then
            v0.followLoop:Disconnect();
            v0.followLoop = nil;
        end;
        if v0.orbitLoop then
            v0.orbitLoop:Disconnect();
            v0.orbitLoop = nil;
        end;
        if v0.orbit2Loop then
            v0.orbit2Loop:Disconnect();
            v0.orbit2Loop = nil;
        end;
        if v0.orbit3Loop then
            v0.orbit3Loop:Disconnect();
            v0.orbit3Loop = nil;
        end;
        if v0.spiralLoop then
            v0.spiralLoop:Disconnect();
            v0.spiralLoop = nil;
        end;
        if v0.stalkLoop then
            v0.stalkLoop:Disconnect();
            v0.stalkLoop = nil;
        end;
        if v0.swarmLoop then
            v0.swarmLoop:Disconnect();
            v0.swarmLoop = nil;
        end;
        if v0.spiral2Loop then
            v0.spiral2Loop:Disconnect();
            v0.spiral2Loop = nil;
        end;
        if v0.stareLoop then
            v0.stareLoop:Disconnect();
            v0.stareLoop = nil;
        end;
        if v0.bangLoop then
            v0.bangLoop:Disconnect();
            v0.bangLoop = nil;
        end;
        if v0.wormLoop then
            v0.wormLoop:Disconnect();
            v0.wormLoop = nil;
        end;
        if v0.stackingLoop then
            v0.stackingLoop:Disconnect();
            v0.stackingLoop = nil;
        end;
        if v0.swarm2Loop then
            v0.swarm2Loop:Disconnect();
            v0.swarm2Loop = nil;
        end;
        v0.orbiting = false;
        v0.orbiting2 = false;
        v0.orbiting3 = false;
        v0.spiraling = false;
        v0.swarming = false;
        v0.spiraling2 = false;
        v0.staring = false;
        v0.wondering = false;
    end;
    local function v81(v76) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_Players_0 (ref)
        if not v76 then
            return nil;
        else
            v76 = string.lower(v76);
            for _, v78 in ipairs(l_Players_0:GetPlayers()) do
                if string.lower(v78.Name) == v76 or string.lower(v78.DisplayName) == v76 then
                    return v78;
                end;
            end;
            for _, v80 in ipairs(l_Players_0:GetPlayers()) do
                if string.lower(v80.Name):find(v76) or string.lower(v80.DisplayName):find(v76) then
                    return v80;
                end;
            end;
            notif("findPlayer failed to find player for query:", v76, Color3.fromRGB(255, 102, 0), 5);
            return nil;
        end;
    end;
    local function v85() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        local l_Character_0 = l_LocalPlayer_2.Character;
        if not l_Character_0 then
            return;
        else
            for _, v84 in pairs(l_Character_0:GetDescendants()) do
                if v84:IsA("BasePart") then
                    v84.Velocity = Vector3.zero;
                    v84.RotVelocity = Vector3.zero;
                elseif v84:IsA("BodyVelocity") or v84:IsA("BodyAngularVelocity") then
                    v84.Velocity = Vector3.zero;
                elseif v84:IsA("BodyPosition") then
                    v84.Position = v84.Position;
                elseif v84:IsA("BodyGyro") then
                    v84.CFrame = v84.CFrame;
                end;
            end;
            return;
        end;
    end;
    print("[Debug] : Current player:", l_LocalPlayer_1.Name);
    if l_LocalPlayer_2.Name == Settings.mainAccount then
        local l_ScreenGui_1 = Instance.new("ScreenGui");
        l_ScreenGui_1.Name = "CommandBarUI";
        l_ScreenGui_1.Parent = l_LocalPlayer_1:WaitForChild("PlayerGui");
        l_ScreenGui_1.ResetOnSpawn = false;
        local l_Frame_1 = Instance.new("Frame");
        l_Frame_1.Size = UDim2.new(0.4, 0, 0, 40);
        l_Frame_1.Position = UDim2.new(0.3, 0, 1.1, 0);
        l_Frame_1.BackgroundColor3 = Color3.fromRGB(25, 25, 25);
        l_Frame_1.BackgroundTransparency = 0.1;
        l_Frame_1.BorderSizePixel = 0;
        l_Frame_1.Visible = false;
        l_Frame_1.Parent = l_ScreenGui_1;
        local l_UICorner_0 = Instance.new("UICorner");
        l_UICorner_0.CornerRadius = UDim.new(0, 8);
        l_UICorner_0.Parent = l_Frame_1;
        local l_Frame_2 = Instance.new("Frame");
        l_Frame_2.Size = UDim2.new(1, -20, 1, -10);
        l_Frame_2.Position = UDim2.new(0, 10, 0, 5);
        l_Frame_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
        l_Frame_2.BackgroundTransparency = 0.1;
        l_Frame_2.BorderSizePixel = 0;
        l_Frame_2.ClipsDescendants = true;
        l_Frame_2.Parent = l_Frame_1;
        local l_UICorner_1 = Instance.new("UICorner");
        l_UICorner_1.CornerRadius = UDim.new(0, 6);
        l_UICorner_1.Parent = l_Frame_2;
        local l_TextLabel_1 = Instance.new("TextLabel");
        l_TextLabel_1.Size = UDim2.new(1, -10, 1, 0);
        l_TextLabel_1.Position = UDim2.new(0, 5, 0.5, 0);
        l_TextLabel_1.AnchorPoint = Vector2.new(0, 0.5);
        l_TextLabel_1.BackgroundTransparency = 1;
        l_TextLabel_1.TextColor3 = Color3.fromRGB(80, 80, 80);
        l_TextLabel_1.Font = Enum.Font.GothamBold;
        l_TextLabel_1.TextSize = 18;
        l_TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left;
        l_TextLabel_1.Parent = l_Frame_2;
        local l_TextBox_0 = Instance.new("TextBox");
        l_TextBox_0.Size = UDim2.new(1, -10, 1, 0);
        l_TextBox_0.Position = UDim2.new(0, 5, 0.5, 0);
        l_TextBox_0.AnchorPoint = Vector2.new(0, 0.5);
        l_TextBox_0.BackgroundTransparency = 1;
        l_TextBox_0.TextColor3 = Color3.fromRGB(255, 255, 255);
        l_TextBox_0.Font = Enum.Font.GothamBold;
        l_TextBox_0.TextSize = 18;
        l_TextBox_0.ClearTextOnFocus = false;
        l_TextBox_0.PlaceholderText = "Enter command...";
        l_TextBox_0.TextXAlignment = Enum.TextXAlignment.Left;
        l_TextBox_0.Parent = l_Frame_2;
        local l_Frame_3 = Instance.new("Frame");
        l_Frame_3.Size = UDim2.new(0.4, 0, 0, 140);
        l_Frame_3.Position = UDim2.new(0.3, 0, 1, -190);
        l_Frame_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30);
        l_Frame_3.BackgroundTransparency = 0.1;
        l_Frame_3.BorderSizePixel = 0;
        l_Frame_3.Visible = false;
        l_Frame_3.Parent = l_ScreenGui_1;
        local l_UICorner_2 = Instance.new("UICorner");
        l_UICorner_2.CornerRadius = UDim.new(0, 8);
        l_UICorner_2.Parent = l_Frame_3;
        local l_TextLabel_2 = Instance.new("TextLabel");
        l_TextLabel_2.Size = UDim2.new(1, -20, 1, -10);
        l_TextLabel_2.Position = UDim2.new(0, 10, 0, 5);
        l_TextLabel_2.BackgroundTransparency = 1;
        l_TextLabel_2.TextColor3 = Color3.fromRGB(200, 200, 200);
        l_TextLabel_2.Font = Enum.Font.Gotham;
        l_TextLabel_2.TextSize = 16;
        l_TextLabel_2.TextWrapped = true;
        l_TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left;
        l_TextLabel_2.Parent = l_Frame_3;
        local v96 = false;
        local v97 = {};
        local function v102(v98, v99, v100) --[[ Line: 0 ]] --[[ Name:  ]]
            -- upvalues: l_TweenService_0 (ref)
            local v101 = TweenInfo.new(v100 or 0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
            return l_TweenService_0:Create(v98, v101, v99);
        end;
        do
            local l_l_Frame_1_0, l_l_TextLabel_1_0, l_l_TextBox_0_0, l_l_Frame_3_0, l_l_TextLabel_2_0, l_v96_0, l_v97_0, l_v102_0 = l_Frame_1, l_TextLabel_1, l_TextBox_0, l_Frame_3, l_TextLabel_2, v96, v97, v102;
            local function v112() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_v96_0 (ref), l_l_Frame_1_0 (ref), l_v102_0 (ref), l_l_TextBox_0_0 (ref), l_l_TextLabel_1_0 (ref), l_l_Frame_3_0 (ref)
                l_v96_0 = not l_v96_0;
                l_l_Frame_1_0.Visible = true;
                if l_v96_0 then
                    l_v102_0(l_l_Frame_1_0, {
                        Position = UDim2.new(0.3, 0, 1, -50)
                    }):Play();
                    l_l_TextBox_0_0.Text = "";
                    l_l_TextLabel_1_0.Text = "";
                    task.wait(0.05);
                    l_l_TextBox_0_0:CaptureFocus();
                else
                    local v111 = l_v102_0(l_l_Frame_1_0, {
                        Position = UDim2.new(0.3, 0, 1.1, 0)
                    });
                    v111:Play();
                    v111.Completed:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_l_Frame_1_0 (ref)
                        l_l_Frame_1_0.Visible = false;
                    end);
                    l_l_TextBox_0_0:ReleaseFocus();
                    l_l_Frame_3_0.Visible = false;
                end;
            end;
            local function v120(v113) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v50 (ref)
                local v114 = {};
                if v113 ~= "" then
                    for v115, v116 in pairs(v50) do
                        if v115:lower():sub(1, #v113) == v113:lower() then
                            local v117 = v116.args and #v116.args > 0 and " (args)" or "";
                            table.insert(v114, {
                                full = v115, 
                                display = v115 .. v117
                            });
                        end;
                    end;
                    table.sort(v114, function(v118, v119) --[[ Line: 0 ]] --[[ Name:  ]]
                        return v118.full < v119.full;
                    end);
                end;
                return v114;
            end;
            local function v126() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_l_TextBox_0_0 (ref), l_v97_0 (ref), v120 (ref), l_l_TextLabel_1_0 (ref), l_l_TextLabel_2_0 (ref), l_l_Frame_3_0 (ref)
                local l_Text_0 = l_l_TextBox_0_0.Text;
                l_v97_0 = v120(l_Text_0);
                if #l_v97_0 > 0 then
                    local l_full_0 = l_v97_0[1].full;
                    if #l_Text_0 > 0 then
                        l_l_TextLabel_1_0.Text = l_Text_0 .. l_full_0:sub(#l_Text_0 + 1);
                    else
                        l_l_TextLabel_1_0.Text = "";
                    end;
                else
                    l_l_TextLabel_1_0.Text = "";
                end;
                local v123 = 7;
                local v124 = {};
                for v125 = 1, math.min(#l_v97_0, v123) do
                    v124[v125] = l_v97_0[v125].display;
                end;
                if #v124 > 0 then
                    l_l_TextLabel_2_0.Text = table.concat(v124, "\n");
                    l_l_Frame_3_0.Size = UDim2.new(0.4, 0, 0, #v124 * 20);
                    l_l_Frame_3_0.Position = UDim2.new(0.3, 0, 1, -50 - #v124 * 20);
                    l_l_Frame_3_0.Visible = true;
                else
                    l_l_Frame_3_0.Visible = false;
                end;
            end;
            local function v129() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_v97_0 (ref), l_l_TextBox_0_0 (ref), v126 (ref)
                if #l_v97_0 > 0 then
                    local l_Text_1 = l_l_TextBox_0_0.Text;
                    local l_full_1 = l_v97_0[1].full;
                    if l_Text_1 ~= "" and l_full_1:lower():sub(1, #l_Text_1) == l_Text_1:lower() then
                        l_l_TextBox_0_0.Text = l_full_1;
                        l_l_TextBox_0_0.CursorPosition = #l_full_1 + 1;
                        v126();
                    end;
                end;
            end;
            l_UserInputService_2.InputBegan:Connect(function(v130, v131) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_v96_0 (ref), v129 (ref)
                if not l_v96_0 or v131 then
                    return;
                elseif v130.KeyCode == Enum.KeyCode.Tab then
                    v129();
                    return true;
                else
                    return;
                end;
            end);
            l_UserInputService_2.InputBegan:Connect(function(v132, v133) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v112 (ref)
                if v133 then
                    return;
                else
                    if v132.KeyCode == Enum.KeyCode.Quote then
                        v112();
                    end;
                    return;
                end;
            end);
            l_l_TextBox_0_0.FocusLost:Connect(function(v134, v135) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_l_TextBox_0_0 (ref), l_l_Frame_3_0 (ref), v112 (ref)
                if v135 and v135.KeyCode == Enum.KeyCode.Tab then
                    task.wait();
                    l_l_TextBox_0_0:CaptureFocus();
                    return;
                else
                    if v134 then
                        local l_Text_2 = l_l_TextBox_0_0.Text;
                        l_l_TextBox_0_0.Text = "";
                        l_l_Frame_3_0.Visible = false;
                        v112();
                        if l_Text_2 ~= "" then
                            game.Players:Chat(Settings.prefix .. l_Text_2, "All");
                        end;
                    end;
                    return;
                end;
            end);
            l_l_TextBox_0_0:GetPropertyChangedSignal("Text"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_l_TextBox_0_0 (ref), v126 (ref)
                if l_l_TextBox_0_0.Text:match("\t") then
                    l_l_TextBox_0_0.Text = l_l_TextBox_0_0.Text:gsub("\t", "");
                end;
                v126();
            end);
            print("[Debug] : Running as main account");
            notif("Loaded as main! Discord.gg/j4PgkQ72wp", Color3.fromRGB(255, 102, 0), 5);
        end;
    elseif v69(l_LocalPlayer_1) then
        print("[Debug] : Running as alt account");
        l_RunService_0:Set3dRenderingEnabled(false);
        createAltControlOverlay();
        setfpscap(Settings.fpslimit);
        UserSettings():GetService("UserGameSettings").MasterVolume = 0;
        for _, v138 in pairs(l_Workspace_3:GetDescendants()) do
            do
                local l_v138_0 = v138;
                if l_v138_0:IsA("Seat") or l_v138_0:IsA("VehicleSeat") then
                    pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_v138_0 (ref)
                        l_v138_0:Destroy();
                    end);
                end;
            end;
        end;
        settings().Rendering.QualityLevel = 1;
        settings().Physics.PhysicsEnvironmentalThrottle = 1;
        for _, v141 in pairs(l_Workspace_3:GetDescendants()) do
            do
                local l_v141_0 = v141;
                if l_v141_0:IsA("ParticleEmitter") or l_v141_0:IsA("Smoke") or l_v141_0:IsA("Fire") or l_v141_0:IsA("Sparkles") then
                    pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_v141_0 (ref)
                        l_v141_0.Enabled = false;
                    end);
                end;
            end;
        end;
        notif("Loaded as alt! Discord.gg/j4PgkQ72wp", Color3.fromRGB(255, 102, 0), 6942069);
    else
        print("[Debug] : Running as non-alt account");
    end;
    local function v145() --[[ Line: 0 ]] --[[ Name:  ]]
        local v143 = 0;
        for _ in pairs(Settings.altAccounts) do
            v143 = v143 + 1;
        end;
        return v143;
    end;
    local function v150() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v145 (ref), l_LocalPlayer_2 (ref)
        local v146 = 0;
        local v147 = v145();
        for v148, _ in pairs(Settings.altAccounts) do
            v146 = v146 + 1;
            if v148 == l_LocalPlayer_2.Name then
                return v147 - v146 + 1;
            end;
        end;
        return 0;
    end;
    local function v159(v151, v152) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v50 (ref), v72 (ref), v69 (ref), l_LocalPlayer_2 (ref)
        if not v152:find("^" .. Settings.prefix) then
            return;
        else
            local v153 = {};
            for v154 in v152:sub(2):gmatch("%S+") do
                table.insert(v153, v154);
            end;
            if #v153 == 0 then
                return;
            else
                local v155 = v153[1]:lower();
                table.remove(v153, 1);
                local v156 = v50[v155];
                if not v156 then
                    print("[Debug] : Command not found:", v155);
                    notif("Command not found:" .. v155, Color3.fromRGB(255, 0, 0), 5);
                    return;
                elseif v156.authRequired and not v72(v151) then
                    print("[Debug] : Player is not authorized to use this command:", v151.Name);
                    return;
                else
                    if v69(l_LocalPlayer_2) then
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v156 (ref), v153 (ref), v151 (ref)
                            local l_status_0, l_result_0 = pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: v156 (ref), v153 (ref), v151 (ref)
                                v156.handler(v153, v151);
                            end);
                            if not l_status_0 then
                                warn("[Debug] : Command handler failed:", l_result_0);
                            end;
                        end);
                    end;
                    return;
                end;
            end;
        end;
    end;
    l_Players_0.PlayerAdded:Connect(function(v160) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v159 (ref)
        v160.Chatted:Connect(function(v161) --[[ Line: 0 ]] --[[ Name:  ]]
            -- upvalues: v159 (ref), v160 (ref)
            v159(v160, v161);
        end);
    end);
    for _, v163 in ipairs(l_Players_0:GetPlayers()) do
        do
            local l_v163_0 = v163;
            l_v163_0.Chatted:Connect(function(v165) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v159 (ref), l_v163_0 (ref)
                v159(l_v163_0, v165);
            end);
        end;
    end;
    v58("adduser", "Adds a user to authorized list", function(v166, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v51 (ref)
        local v168 = v81(table.concat(v166, " "));
        if v168 then
            v51[v168.Name] = true;
            chat("Added " .. v168.Name .. " as an authorized user.");
        end;
    end, {
        ownerOnly = true
    });
    v58("removeuser", "Removes a user from authorized list", function(v169, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v51 (ref)
        local v171 = v81(table.concat(v169, " "));
        if v171 then
            v51[v171.Name] = nil;
            chat("Removed " .. v171.Name .. " from authorized users.");
        end;
    end, {
        ownerOnly = true
    });
    v58("chat", "Send chat message", function(v172) --[[ Line: 0 ]] --[[ Name:  ]]
        chat(table.concat(v172, " "));
    end, {
        authRequired = true
    });
    v58("jump", "Make alt jump", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        local l_Humanoid_0 = l_LocalPlayer_2.Character:FindFirstChild("Humanoid");
        if l_Humanoid_0 then
            l_Humanoid_0.Jump = true;
        end;
    end, {
        authRequired = true
    });
    v58("sit", "Make alt sit", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        l_LocalPlayer_2.Character.Humanoid.Sit = true;
    end, {
        authRequired = true
    });
    v58("follow", "Follow target player", function(v174) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_RunService_2 (ref)
        local v175 = v81(table.concat(v174, " ")) or l_LocalPlayer_2;
        if v0.followLoop then
            v0.followLoop:Disconnect();
            v0.followLoop = nil;
        end;
        v0.followLoop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
            -- upvalues: v175 (ref), l_LocalPlayer_2 (ref), v0 (ref)
            if v175 and v175.Character and v175.Character:FindFirstChild("HumanoidRootPart") then
                local l_HumanoidRootPart_0 = v175.Character.HumanoidRootPart;
                local l_Character_1 = l_LocalPlayer_2.Character;
                if l_Character_1 and l_Character_1:FindFirstChild("Humanoid") then
                    l_Character_1.Humanoid:MoveTo(l_HumanoidRootPart_0.Position);
                end;
            else
                v0.followLoop:Disconnect();
                v0.followLoop = nil;
            end;
        end);
    end, {
        authRequired = true
    });
    v58("unfollow", "Stop following", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref)
        if v0.followLoop then
            v0.followLoop:Disconnect();
            v0.followLoop = nil;
        end;
    end, {
        authRequired = true
    });
    v58("wonder", "Makes alts wonder randomly", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        Settings.wondering = true;
        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
            -- upvalues: l_LocalPlayer_2 (ref)
            while Settings.wondering and wait(math.random(1, 3)) do
                if l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("Humanoid") and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") then
                    local v178 = l_LocalPlayer_2.Character.HumanoidRootPart.Position + Vector3.new(math.random(-20, 20), 0, math.random(-20, 20));
                    l_LocalPlayer_2.Character.Humanoid:MoveTo(v178);
                end;
            end;
        end);
    end, {
        authRequired = true
    });
    v58("fwonder", "Makes alts wonder randomly but follows the first alt", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref), l_Players_2 (ref), l_RunService_2 (ref)
        local v179 = {};
        for v180, _ in pairs(Settings.altAccounts) do
            table.insert(v179, v180);
        end;
        Settings.wonderLeader = v179[1];
        if l_LocalPlayer_2.Name == SettingswonderLeader then
            Settings.wondering = true;
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_LocalPlayer_2 (ref)
                while Settings.wondering and wait(math.random(2, 4)) do
                    if l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("Humanoid") and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") then
                        local v182 = l_LocalPlayer_2.Character.HumanoidRootPart.Position + Vector3.new(math.random(-20, 20), 0, math.random(-20, 20));
                        l_LocalPlayer_2.Character.Humanoid:MoveTo(v182);
                    end;
                end;
            end);
        else
            local v183 = 0;
            for v184, v185 in ipairs(v179) do
                if v185 == l_LocalPlayer_2.Name then
                    v183 = v184;
                    break;
                end;
            end;
            local v186 = nil;
            if v183 > 1 then
                v186 = l_Players_2:FindFirstChild(v179[v183 - 1]);
            end;
            do
                local l_v186_0 = v186;
                if l_v186_0 then
                    Settings.wondering = true;
                    Settings.wonderFollowLoop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_LocalPlayer_2 (ref), l_v186_0 (ref)
                        if Settings.wondering and l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("Humanoid") and l_v186_0.Character and l_v186_0.Character:FindFirstChild("HumanoidRootPart") then
                            local l_Position_0 = l_LocalPlayer_2.Character.HumanoidRootPart.Position;
                            local l_Position_1 = l_v186_0.Character.HumanoidRootPart.Position;
                            local v190 = l_Position_1 - (l_Position_1 - l_Position_0).Unit * 3;
                            l_LocalPlayer_2.Character.Humanoid:MoveTo(v190);
                        end;
                    end);
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unwonder", "Makes alts stop woondering/fwondering", function() --[[ Line: 0 ]] --[[ Name:  ]]
        Settings.wondering = false;
        if Settings.wonderFollowLoop then
            Settings.wonderFollowLoop:Disconnect();
            Settings.wonderFollowLoop = nil;
        end;
    end, {
        authRequired = true
    });
    v58("worm", "Makes bots follow the player in a train-like pattern", function(v191) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_RunService_2 (ref)
        stopAllMovementLoops();
        local v192 = v81(table.concat(v191, " ")) or l_LocalPlayer_2;
        if v192 and v69(l_LocalPlayer_2) then
            local v193 = {};
            for v194, _ in pairs(Settings.altAccounts) do
                table.insert(v193, v194);
            end;
            local v196 = 0;
            for v197, v198 in ipairs(v193) do
                if v198 == l_LocalPlayer_2.Name then
                    v196 = v197;
                    break;
                end;
            end;
            local v199 = v196 == 1 and v192 or game.Players:FindFirstChild(v193[v196 - 1]);
            do
                local l_v199_0 = v199;
                if l_v199_0 then
                    v0.wormLoop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_LocalPlayer_2 (ref), l_v199_0 (ref)
                        local l_Character_2 = l_LocalPlayer_2.Character;
                        local l_Character_3 = l_v199_0.Character;
                        if l_Character_2 and l_Character_3 and l_Character_2:FindFirstChild("Humanoid") and l_Character_2:FindFirstChild("HumanoidRootPart") and l_Character_3:FindFirstChild("HumanoidRootPart") then
                            local l_HumanoidRootPart_1 = l_Character_2.HumanoidRootPart;
                            local l_HumanoidRootPart_2 = l_Character_3.HumanoidRootPart;
                            local v205 = 3;
                            if v205 < (l_HumanoidRootPart_1.Position - l_HumanoidRootPart_2.Position).Magnitude then
                                l_Character_2.Humanoid:MoveTo(l_HumanoidRootPart_2.Position - l_HumanoidRootPart_2.CFrame.LookVector * v205);
                            end;
                        end;
                    end);
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unworm", "Stops the worm follow", function() --[[ Line: 0 ]] --[[ Name:  ]]
        if Settings.wormLoop then
            Settings.wormLoop:Disconnect();
            Settings.wormLoop = nil;
        end;
    end, {
        authRequired = true
    });
    v58("walkto", "Makes the alts walk to a player", function(v206) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref)
        local v207 = v81(table.concat(v206, " ")) or l_LocalPlayer_2;
        if v207 and v69(l_LocalPlayer_2) then
            local l_Character_4 = l_LocalPlayer_2.Character;
            if l_Character_4 and l_Character_4:FindFirstChild("Humanoid") and v207.Character and v207.Character:FindFirstChild("HumanoidRootPart") then
                l_Character_4.Humanoid:MoveTo(v207.Character.HumanoidRootPart.Position);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("pf", "Pathfinds to a player and walks to them", function(v209) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_1 (ref), v69 (ref), l_LocalPlayer_2 (ref), l_Workspace_3 (ref), l_PathfindingService_0 (ref), l_RunService_0 (ref), v0 (ref)
        stopAllMovementLoops();
        table.remove(v209, 1);
        local v210 = table.concat(v209, " ");
        local v211 = v81(v210) or l_LocalPlayer_1;
        if not v211 or not v69(l_LocalPlayer_2) then
            return;
        else
            local l_Character_5 = l_LocalPlayer_2.Character;
            local v213 = l_Character_5 and l_Character_5:FindFirstChild("Humanoid");
            local v214 = l_Character_5 and l_Character_5:FindFirstChild("HumanoidRootPart");
            local l_Character_6 = v211.Character;
            local v216 = l_Character_6 and l_Character_6:FindFirstChild("HumanoidRootPart");
            if not v213 or not v214 or not v216 then
                return;
            else
                local v217 = 4;
                local v218 = 2.5;
                local v219 = 10;
                local v220 = 3;
                local v221 = 2;
                local v222 = 5;
                local l_Position_2 = v214.Position;
                local v224 = 0;
                local v225 = 0;
                local v226 = false;
                local function v231() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v214 (ref), v222 (ref), l_Character_5 (ref), l_Workspace_3 (ref), v213 (ref), v226 (ref)
                    local l_Position_3 = v214.Position;
                    local v228 = v214.CFrame.LookVector * v222;
                    local v229 = RaycastParams.new();
                    v229.FilterType = Enum.RaycastFilterType.Blacklist;
                    v229.FilterDescendantsInstances = {
                        l_Character_5
                    };
                    local v230 = l_Workspace_3:Raycast(l_Position_3, v228, v229);
                    if v230 and v230.Instance.CanCollide then
                        v213.Jump = true;
                        v226 = true;
                        task.wait(0.1);
                    end;
                end;
                local function v232() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_PathfindingService_0 (ref)
                    return (l_PathfindingService_0:CreatePath({
                        AgentRadius = 2.5, 
                        AgentHeight = 5, 
                        AgentCanJump = true, 
                        AgentCanClimb = true, 
                        WaypointSpacing = 3, 
                        Costs = {
                            Water = 50, 
                            Wall = 100
                        }
                    }));
                end;
                local function v234(v233) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Position_2 (ref), v224 (ref), l_RunService_0 (ref), v221 (ref), v213 (ref)
                    if (v233 - l_Position_2).Magnitude < 0.1 then
                        v224 = v224 + l_RunService_0.Heartbeat:Wait();
                        if v221 < v224 then
                            v213.Jump = true;
                            v224 = 0;
                            return true;
                        end;
                    else
                        v224 = 0;
                    end;
                    l_Position_2 = v233;
                    return false;
                end;
                if v213.Sit then
                    v213.Jump = true;
                    task.wait(0.1);
                end;
                local v235 = v232();
                if Settings.pathfindingLoop then
                    Settings.pathfindingLoop:Disconnect();
                    Settings.pathfindingLoop = nil;
                end;
                local function v238() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v235 (ref), v214 (ref), v216 (ref), v225 (ref)
                    local l_status_1, l_result_1 = pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v235 (ref), v214 (ref), v216 (ref)
                        v235:ComputeAsync(v214.Position, v216.Position);
                    end);
                    if l_status_1 and v235.Status == Enum.PathStatus.Success then
                        v225 = 0;
                        return v235:GetWaypoints();
                    else
                        notif("Path computation failed:", l_result_1, Color3.fromRGB(255, 0, 0));
                        v225 = v225 + 1;
                        return nil;
                    end;
                end;
                local v239 = v238();
                if not v239 then
                    return;
                else
                    local v240 = 1;
                    v0.pathfindingLoop = l_RunService_0.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_Character_5 (ref), l_Workspace_3 (ref), l_Character_6 (ref), v225 (ref), v220 (ref), v0 (ref), v239 (ref), v240 (ref), v214 (ref), v216 (ref), v218 (ref), v213 (ref), v234 (ref), v231 (ref), v217 (ref), v219 (ref), v238 (ref)
                        if not l_Character_5:IsDescendantOf(l_Workspace_3) or not l_Character_6:IsDescendantOf(l_Workspace_3) or v220 <= v225 then
                            v0.pathfindingLoop:Disconnect();
                            return;
                        else
                            local v241 = v239[v240];
                            if not v241 then
                                return;
                            else
                                local l_Magnitude_0 = (v214.Position - v241.Position).Magnitude;
                                local l_Magnitude_1 = (v214.Position - v216.Position).Magnitude;
                                if v241.Position.Y > v214.Position.Y + v218 then
                                    v213.Jump = true;
                                end;
                                if v234(v214.Position) then
                                    v231();
                                end;
                                v213:MoveTo(v241.Position);
                                if v241.Action == Enum.PathWaypointAction.Jump then
                                    v213.Jump = true;
                                end;
                                if l_Magnitude_0 < v217 then
                                    v240 = v240 + 1;
                                    if v240 > #v239 or v219 < l_Magnitude_1 then
                                        v239 = v238();
                                        if v239 then
                                            v240 = 1;
                                        end;
                                    end;
                                end;
                                return;
                            end;
                        end;
                    end);
                    return;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("rline", "Line up bots to the right of target", function(v244, v245) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v150 (ref), v85 (ref), l_LocalPlayer_2 (ref)
        local v246 = table.concat(v244, " ");
        local v247 = v246 ~= "" and v81(v246) or v245;
        if v247 and v247.Character and v247.Character:FindFirstChild("HumanoidRootPart") then
            local v248 = 4;
            local v249 = v150();
            v85();
            local v250 = v247.Character.HumanoidRootPart.CFrame * CFrame.new(v248 * v249, 0, 0);
            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v250;
        end;
    end, {
        authRequired = true
    });
    v58("lline", "Line up bots to the left of target", function(v251, v252) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v150 (ref), v85 (ref), l_LocalPlayer_2 (ref)
        local v253 = table.concat(v251, " ");
        local v254 = v253 ~= "" and v81(v253) or v252;
        if v254 and v254.Character and v254.Character:FindFirstChild("HumanoidRootPart") then
            local v255 = -4;
            local v256 = v150();
            v85();
            local v257 = v254.Character.HumanoidRootPart.CFrame * CFrame.new(v255 * v256, 0, 0);
            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v257;
        end;
    end, {
        authRequired = true
    });
    v58("bline", "Line up bots behind target", function(v258, v259) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v150 (ref), v85 (ref), l_LocalPlayer_2 (ref)
        local v260 = table.concat(v258, " ");
        local v261 = v260 ~= "" and v81(v260) or v259;
        if v261 and v261.Character and v261.Character:FindFirstChild("HumanoidRootPart") then
            local v262 = 1;
            local v263 = v150();
            v85();
            local v264 = v261.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, v262 * v263);
            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v264;
        end;
    end, {
        authRequired = true
    });
    v58("circle", "Arrange bots in a circle around the target player", function(v265, v266) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v150 (ref), v85 (ref), l_LocalPlayer_2 (ref)
        local v267 = table.concat(v265, " ");
        local v268 = v267 ~= "" and v81(v267) or v266;
        if v268 and v268.Character and v268.Character:FindFirstChild("HumanoidRootPart") then
            local v269 = 10;
            local v270 = v150();
            local v271 = 0;
            for _ in pairs(Settings.altAccounts) do
                v271 = v271 + 1;
            end;
            if v271 == 0 then
                return;
            else
                v85();
                local v273 = (v270 - 1) / v271 * (2 * math.pi);
                local v274 = CFrame.new(v269 * math.cos(v273), 0, v269 * math.sin(v273));
                local v275 = v268.Character.HumanoidRootPart.CFrame * v274;
                local v276 = CFrame.lookAt(v275.Position, v268.Character.HumanoidRootPart.Position);
                l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v276;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("bring", "Brings alt to the command issuer", function(_, v278) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref), v85 (ref)
        local l_v278_0 = v278;
        if l_v278_0 and l_v278_0.Character and l_v278_0.Character:FindFirstChild("HumanoidRootPart") then
            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = l_v278_0.Character.HumanoidRootPart.CFrame;
            v85();
        end;
    end, {
        authRequired = true
    });
    v58("goto", "Teleport to a player", function(v280) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v85 (ref)
        local v281 = v81(table.concat(v280, " ")) or l_LocalPlayer_2;
        if v281 and v281.Character and v281.Character:FindFirstChild("HumanoidRootPart") then
            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v281.Character.HumanoidRootPart.CFrame;
            v85();
        end;
    end, {
        authRequired = true
    });
    v58("stare", "Make alt stare at a player", function(v282) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_RunService_2 (ref)
        local v283 = v81(table.concat(v282, " ")) or l_LocalPlayer_2;
        if v283 then
            if v0.stareLoop then
                v0.stareLoop:Disconnect();
                v0.stareLoop = nil;
            end;
            v0.staring = true;
            v0.currentStareTarget = v283;
            v0.stareLoop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v0 (ref), l_LocalPlayer_2 (ref)
                if v0.staring and l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") and v0.currentStareTarget.Character and v0.currentStareTarget.Character:FindFirstChild("HumanoidRootPart") then
                    local v284 = CFrame.new(l_LocalPlayer_2.Character.HumanoidRootPart.Position, v0.currentStareTarget.Character.HumanoidRootPart.Position);
                    l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v284;
                end;
            end);
        end;
    end, {
        authRequired = true
    });
    v58("unstare", "Stop staring at a player", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref)
        v0.staring = false;
        v0.currentStareTarget = nil;
        if v0.stareLoop then
            v0.stareLoop:Disconnect();
            v0.stareLoop = nil;
        end;
    end, {
        authRequired = true
    });
    v58("re", "Resets the alt (BreakJoints)", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        if l_LocalPlayer_2.Character then
            l_LocalPlayer_2.Character:BreakJoints();
        end;
    end, {
        authRequired = true
    });
    v58("forcereset", "Force reset alt (Destroy Character)", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: l_LocalPlayer_2 (ref)
        if l_LocalPlayer_2.Character then
            l_LocalPlayer_2.Character:Destroy();
        end;
    end, {
        authRequired = true
    });
    v58("quit", "Forces the alt to quit", function() --[[ Line: 0 ]] --[[ Name:  ]]
        chat("Quitting...");
        wait(1);
        game:Shutdown();
    end, {
        authRequired = true
    });
    v58("stackon", "Stack bots on a target player", function(v285) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_Workspace_3 (ref), l_RunService_2 (ref), v85 (ref)
        stopAllMovementLoops();
        local v286 = v81(table.concat(v285, " ")) or l_LocalPlayer_2;
        if v286 and v69(l_LocalPlayer_2) then
            local v287 = 0;
            for v288, _ in pairs(Settings.altAccounts) do
                v287 = v287 + 1;
                if v288 == l_LocalPlayer_2.Name then
                    break;
                end;
            end;
            if v0.stackPlatform then
                v0.stackPlatform:Destroy();
            end;
            local l_Part_0 = Instance.new("Part");
            l_Part_0.Size = Vector3.new(6, 1, 6);
            l_Part_0.Name = "StackPlatform";
            l_Part_0.Anchored = true;
            l_Part_0.CanCollide = true;
            l_Part_0.Transparency = 0.7;
            l_Part_0.BrickColor = BrickColor.new("Really blue");
            l_Part_0.Parent = l_Workspace_3;
            v0.stackPlatform = l_Part_0;
            if v0.stackingLoop then
                v0.stackingLoop:Disconnect();
            end;
            do
                local l_v287_0, l_l_Part_0_0 = v287, l_Part_0;
                v0.stackingLoop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_LocalPlayer_2 (ref), v286 (ref), l_v287_0 (ref), l_l_Part_0_0 (ref), v85 (ref)
                    if l_LocalPlayer_2.Character and v286.Character and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") and v286.Character:FindFirstChild("HumanoidRootPart") then
                        local v293 = v286.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5 * l_v287_0, 0);
                        l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v293;
                        l_l_Part_0_0.CFrame = v293 * CFrame.new(0, -3, 0);
                        v85();
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unstack", "Unstack all bots", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            if v0.stackingLoop then
                v0.stackingLoop:Disconnect();
                v0.stackingLoop = nil;
            end;
            if v0.stackPlatform then
                v0.stackPlatform:Destroy();
                v0.stackPlatform = nil;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("bang", "Smoothly move back and forth behind target", function(v294) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), v85 (ref)
        stopAllMovementLoops();
        local v295 = v81(table.concat(v294, " ")) or UserUser;
        if v295 and v69(l_LocalPlayer_2) then
            v0.banging = true;
            local v296 = 2;
            local v297 = 7;
            local v298 = 1;
            local v299 = 0.03;
            do
                local l_v296_0, l_v297_0, l_v298_0, l_v299_0 = v296, v297, v298, v299;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_LocalPlayer_2 (ref), v295 (ref), l_v296_0 (ref), v0 (ref), l_v299_0 (ref), l_v297_0 (ref), l_v298_0 (ref), v85 (ref)
                    if l_LocalPlayer_2.Character and v295.Character then
                        l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v295.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, l_v296_0);
                    end;
                    local v304 = tick();
                    while v0.banging and wait(l_v299_0) do
                        if l_LocalPlayer_2.Character and v295.Character then
                            local v305 = tick() - v304;
                            local v306 = math.sin(v305 * l_v297_0) * l_v298_0;
                            local l_CFrame_0 = v295.Character.HumanoidRootPart.CFrame;
                            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = l_CFrame_0 * CFrame.new(0, 0, l_v296_0 + v306);
                            v85();
                        end;
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unbang", "Stop the bang actions", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            v0.banging = false;
            if bang and type(bang.Stop) == "function" then
                bang:Stop();
            end;
            if bangAnim and bangAnim.Destroy then
                bangAnim:Destroy();
            end;
            if bangDied and bangDied.Disconnect then
                bangDied:Disconnect();
            end;
            if bangLoop and bangLoop.Disconnect then
                bangLoop:Disconnect();
            end;
            local v308 = nil;
            local v309 = nil;
            local v310 = nil;
            bangLoop = nil;
            bangDied = v310;
            bangAnim = v309;
            bang = v308;
            stopAllMovementLoops();
            v308 = l_LocalPlayer_2.Character;
            if v308 and v308.PrimaryPart then
                v308.PrimaryPart.Velocity = Vector3.zero;
                v308.PrimaryPart.RotVelocity = Vector3.zero;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("orbit", "Make bot orbit around target", function(v311) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_RunService_2 (ref), v85 (ref)
        stopAllMovementLoops();
        local v312 = v81(table.concat(v311, " ")) or l_LocalPlayer_2;
        if v312 and v69(l_LocalPlayer_2) then
            if v0.orbitLoop then
                v0.orbitLoop:Disconnect();
                v0.orbitLoop = nil;
            end;
            v0.orbitRadius = v0.orbitRadius or 10;
            v0.orbitSpeed = v0.orbitSpeed or 0.5;
            local v313 = 0;
            local v314 = 0;
            for v315, _ in pairs(Settings.altAccounts) do
                v313 = v313 + 1;
                if v315 == l_LocalPlayer_2.Name then
                    v314 = v313;
                end;
            end;
            local v317 = 2 * math.pi / v313 * (v314 - 1);
            v0.orbiting = true;
            do
                local l_v317_0 = v317;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v0 (ref), l_RunService_2 (ref), l_LocalPlayer_2 (ref), v312 (ref), l_v317_0 (ref), v85 (ref)
                    while v0.orbiting and l_RunService_2.RenderStepped:Wait() do
                        if l_LocalPlayer_2.Character and v312.Character and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") and v312.Character:FindFirstChild("HumanoidRootPart") then
                            local l_Position_4 = v312.Character.HumanoidRootPart.Position;
                            local v320 = l_v317_0 + v0.orbitSpeed * os.clock();
                            local v321 = Vector3.new(l_Position_4.X + v0.orbitRadius * math.cos(v320), l_Position_4.Y, l_Position_4.Z + v0.orbitRadius * math.sin(v320));
                            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = CFrame.new(v321, l_Position_4);
                            v85();
                        end;
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unorbit", "Stop orbiting target", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            v0.orbiting = false;
            if v0.orbitLoop then
                v0.orbitLoop:Disconnect();
                v0.orbitLoop = nil;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("orbit2", "Orbit around a target in a different way", function(v322) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_Workspace_2 (ref), l_RunService_2 (ref), v85 (ref)
        stopAllMovementLoops();
        local v323 = v81(table.concat(v322, " ")) or l_LocalPlayer_2;
        if v323 and v69(l_LocalPlayer_2) then
            if v0.orbit2Loop then
                v0.orbit2Loop:Disconnect();
                v0.orbit2Loop = nil;
            end;
            v0.orbitRadius = v0.orbitRadius or 10;
            v0.orbitSpeed = v0.orbitSpeed or 0.5;
            local v324 = 0;
            local v325 = 0;
            for v326, _ in pairs(Settings.altAccounts) do
                v324 = v324 + 1;
                if v326 == l_LocalPlayer_2.Name then
                    v325 = v324;
                end;
            end;
            local v328 = 360 / v324 * (v325 - 1);
            l_Workspace_2.Gravity = 0;
            v0.orbiting2 = true;
            do
                local l_v328_0 = v328;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_v328_0 (ref), v0 (ref), l_RunService_2 (ref), l_LocalPlayer_2 (ref), v323 (ref), v85 (ref)
                    local l_l_v328_0_0 = l_v328_0;
                    while v0.orbiting2 and l_RunService_2.Heartbeat:Wait() do
                        if l_LocalPlayer_2.Character and v323.Character and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") and v323.Character:FindFirstChild("HumanoidRootPart") then
                            v85();
                            local v331 = CFrame.new(v323.Character.HumanoidRootPart.Position) * CFrame.Angles(math.rad(l_l_v328_0_0), math.rad(l_l_v328_0_0), 0) * CFrame.new(v0.orbitRadius, 0, 0);
                            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v331;
                            local v332 = CFrame.new(l_LocalPlayer_2.Character.HumanoidRootPart.Position, v323.Character.HumanoidRootPart.Position);
                            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v332;
                            l_l_v328_0_0 = (l_l_v328_0_0 + v0.orbitSpeed) % 360;
                        end;
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("spiral", "Spiral movement around target", function(v333) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_RunService_2 (ref), v85 (ref)
        stopAllMovementLoops();
        local v334 = v81(table.concat(v333, " ")) or l_LocalPlayer_2;
        if v334 and v69(l_LocalPlayer_2) then
            if v0.spiralLoop then
                v0.spiralLoop:Disconnect();
                v0.spiralLoop = nil;
            end;
            v0.spiralRadius = v0.spiralRadius or 6;
            v0.spiralSpeed = v0.spiralSpeed or 0.3;
            local v335 = 15;
            local v336 = 0;
            local v337 = 0;
            local v338 = true;
            v0.spiraling = true;
            do
                local l_v335_0, l_v336_0, l_v337_0, l_v338_0 = v335, v336, v337, v338;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v0 (ref), l_RunService_2 (ref), l_LocalPlayer_2 (ref), v334 (ref), v85 (ref), l_v338_0 (ref), l_v337_0 (ref), l_v335_0 (ref), l_v336_0 (ref)
                    local v343 = 0;
                    while v0.spiraling and l_RunService_2.Heartbeat:Wait() do
                        if l_LocalPlayer_2.Character and v334.Character and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") and v334.Character:FindFirstChild("HumanoidRootPart") then
                            v85();
                            if l_v338_0 then
                                l_v337_0 = l_v337_0 + v0.spiralSpeed;
                                if l_v335_0 <= l_v337_0 then
                                    l_v338_0 = false;
                                end;
                            else
                                l_v337_0 = l_v337_0 - v0.spiralSpeed;
                                if l_v337_0 <= l_v336_0 then
                                    l_v338_0 = true;
                                end;
                            end;
                            local l_Position_5 = v334.Character.HumanoidRootPart.Position;
                            local l_Position_6 = (CFrame.new(l_Position_5) * CFrame.Angles(0, math.rad(v343), 0) * CFrame.new(v0.spiralRadius, l_v337_0, 0)).Position;
                            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = CFrame.new(l_Position_6, Vector3.new(l_Position_5.X, l_Position_6.Y, l_Position_5.Z));
                            v343 = (v343 + v0.spiralSpeed * 2) % 360;
                        end;
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("spiral2", "Make bot spiral in a different way around target", function(v346) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_Workspace_2 (ref), l_RunService_2 (ref), v85 (ref)
        stopAllMovementLoops();
        local v347 = v81(table.concat(v346, " ")) or l_LocalPlayer_2;
        if v347 and v69(l_LocalPlayer_2) then
            v0.spiraling2 = false;
            wait(0.1);
            if v0.spiral2Loop then
                v0.spiral2Loop:Disconnect();
                v0.spiral2Loop = nil;
            end;
            v0.spiralRadius = v0.spiralRadius or 6;
            v0.spiralSpeed = v0.spiralSpeed or 0.3;
            local v348 = 0;
            local v349 = 0;
            for v350, _ in pairs(Settings.altAccounts) do
                v348 = v348 + 1;
                if v350 == l_LocalPlayer_2.Name then
                    v349 = v348;
                end;
            end;
            local v352 = 15;
            local v353 = 0;
            local v354 = 0;
            if v349 > 1 then
                v354 = (v349 - 1) * -1;
            end;
            local v355 = true;
            l_Workspace_2.Gravity = 0;
            v0.spiraling2 = true;
            do
                local l_v349_0, l_v352_0, l_v353_0, l_v354_0, l_v355_0 = v349, v352, v353, v354, v355;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_v349_0 (ref), v0 (ref), l_RunService_2 (ref), l_LocalPlayer_2 (ref), v347 (ref), v85 (ref), l_v355_0 (ref), l_v354_0 (ref), l_v352_0 (ref), l_v353_0 (ref)
                    local v361 = 0;
                    local v362 = (l_v349_0 - 1) * 2;
                    while v0.spiraling2 and l_RunService_2.Heartbeat:Wait() do
                        local l_Character_7 = l_LocalPlayer_2.Character;
                        local v364 = l_Character_7 and l_Character_7:FindFirstChild("HumanoidRootPart");
                        local l_Character_8 = v347.Character;
                        local v366 = l_Character_8 and l_Character_8:FindFirstChild("HumanoidRootPart");
                        if v364 and v366 then
                            v85();
                            if l_v355_0 then
                                l_v354_0 = l_v354_0 + v0.spiralSpeed;
                                if l_v352_0 <= l_v354_0 then
                                    l_v355_0 = false;
                                end;
                            else
                                l_v354_0 = l_v354_0 - v0.spiralSpeed;
                                if l_v354_0 <= l_v353_0 then
                                    l_v355_0 = true;
                                end;
                            end;
                            local l_Position_7 = v366.Position;
                            local l_Position_8 = (CFrame.new(l_Position_7) * CFrame.Angles(0, math.rad(v361), 0) * CFrame.new(v0.spiralRadius, l_v354_0, -v362)).Position;
                            v364.CFrame = CFrame.new(l_Position_8, Vector3.new(l_Position_7.X, l_Position_8.Y, l_Position_7.Z));
                            v361 = (v361 + v0.spiralSpeed * 2) % 360;
                        end;
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unspiral", "Stop all spiral movements", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            v0.spiraling = false;
            v0.spiraling2 = false;
            if v0.spiralLoop then
                v0.spiralLoop:Disconnect();
                v0.spiralLoop = nil;
            end;
            if v0.spiral2Loop then
                v0.spiral2Loop:Disconnect();
                v0.spiral2Loop = nil;
            end;
            game.Workspace.Gravity = 196.2;
            if l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("Humanoid") then
                l_LocalPlayer_2.Character.Humanoid.PlatformStand = false;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("spiralspeed", "Set the speed of the spiral movement", function(v369) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        local v370 = tonumber(v369[1]);
        if v370 and v69(l_LocalPlayer_2) then
            v0.spiralSpeed = v370;
        end;
    end, {
        authRequired = true
    });
    v58("spiralradius", "Set the radius of the spiral movement", function(v371) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        local v372 = tonumber(v371[1]);
        if v372 and v69(l_LocalPlayer_2) then
            v0.spiralRadius = v372;
        end;
    end, {
        authRequired = true
    });
    v58("unorbit", "Stop all orbit movements", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_2 (ref)
        if v69(l_LocalPlayer_2) then
            v0.orbiting = false;
            v0.orbiting2 = false;
            v0.orbiting3 = false;
            if v0.orbitLoop then
                v0.orbitLoop:Disconnect();
                v0.orbitLoop = nil;
            end;
            if v0.orbit2Loop then
                v0.orbit2Loop:Disconnect();
                v0.orbit2Loop = nil;
            end;
            l_Workspace_2.Gravity = 196.2;
            if l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("Humanoid") then
                l_LocalPlayer_2.Character.Humanoid.PlatformStand = false;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("orbitradius", "Set the orbit radius", function(v373) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        local v374 = tonumber(v373[1]);
        if v374 and v69(l_LocalPlayer_2) then
            v0.orbitRadius = v374;
            v0.orbit2Radius = v374;
        end;
    end, {
        authRequired = true
    });
    v58("orbitspeed", "Set the orbit speed", function(v375) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        local v376 = tonumber(v375[1]);
        if v376 and v69(l_LocalPlayer_2) then
            v0.orbitSpeed = v376;
            v0.orbit2Speed = v376;
        end;
    end, {
        authRequired = true
    });
    v58("dance1", "Perform dance1 animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e dance1");
        end;
    end, {
        authRequired = true
    });
    v58("dance2", "Perform dance2 animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e dance2");
        end;
    end, {
        authRequired = true
    });
    v58("dance3", "Perform dance3 animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e dance3");
        end;
    end, {
        authRequired = true
    });
    v58("point", "Perform point animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e point");
        end;
    end, {
        authRequired = true
    });
    v58("cheer", "Perform cheer animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e cheer");
        end;
    end, {
        authRequired = true
    });
    v58("wave", "Perform wave animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e wave");
        end;
    end, {
        authRequired = true
    });
    v58("laugh", "Perform laugh animation", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            game.Players:Chat("/e laugh");
        end;
    end, {
        authRequired = true
    });
    v58("float", "Make the alt float at a certain height", function(v377) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_3 (ref), l_RunService_2 (ref)
        local v378 = tonumber(v377[1]) or 1;
        if v69(l_LocalPlayer_2) then
            local l_Character_9 = l_LocalPlayer_2.Character;
            if l_Character_9 then
                local l_HumanoidRootPart_3 = l_Character_9:FindFirstChild("HumanoidRootPart");
                do
                    local l_l_HumanoidRootPart_3_0 = l_HumanoidRootPart_3;
                    if l_l_HumanoidRootPart_3_0 then
                        v0.floating = true;
                        game.Workspace.Gravity = 0;
                        if v0.floatPlatform then
                            v0.floatPlatform:Destroy();
                        end;
                        v0.floatPlatform = Instance.new("Part");
                        v0.floatPlatform.Size = Vector3.new(2, 0.1, 2);
                        v0.floatPlatform.Anchored = true;
                        v0.floatPlatform.CanCollide = true;
                        v0.floatPlatform.Transparency = 0.5;
                        v0.floatPlatform.Parent = l_Workspace_3;
                        if v0.floatConnection then
                            v0.floatConnection:Disconnect();
                        end;
                        if not v0.initialFloatY then
                            v0.initialFloatY = l_l_HumanoidRootPart_3_0.Position.Y;
                        end;
                        v0.floatConnection = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v0 (ref), l_l_HumanoidRootPart_3_0 (ref), v378 (ref)
                            if not v0.floating then
                                v0.floatConnection:Disconnect();
                                if v0.floatPlatform then
                                    v0.floatPlatform:Destroy();
                                    v0.floatPlatform = nil;
                                end;
                                v0.initialFloatY = nil;
                                game.Workspace.Gravity = 196.2;
                                return;
                            else
                                local l_Rotation_0 = l_l_HumanoidRootPart_3_0.CFrame.Rotation;
                                local v383 = Vector3.new(l_l_HumanoidRootPart_3_0.Position.X, v0.initialFloatY + v378, l_l_HumanoidRootPart_3_0.Position.Z);
                                l_l_HumanoidRootPart_3_0.CFrame = CFrame.new(v383) * l_Rotation_0;
                                l_l_HumanoidRootPart_3_0.Velocity = Vector3.new(0, 0, 0);
                                v0.floatPlatform.CFrame = CFrame.new(l_l_HumanoidRootPart_3_0.Position.X, v0.initialFloatY + v378 - 3, l_l_HumanoidRootPart_3_0.Position.Z);
                                return;
                            end;
                        end);
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unfloat", "Stop floating and return gravity to normal", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_2 (ref)
        if v69(l_LocalPlayer_2) then
            v0.floating = false;
            v0.initialFloatY = nil;
            if v0.floatPlatform then
                v0.floatPlatform:Destroy();
                v0.floatPlatform = nil;
            end;
            l_Workspace_2.Gravity = 196.2;
        end;
    end, {
        authRequired = true
    });
    v58("spin", "Make the alt spin at a set speed", function(v384) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_RunService_2 (ref)
        local v385 = tonumber(v384[1]) or 1;
        if v69(l_LocalPlayer_2) then
            v0.spinning = true;
            v0.spinSpeed = v385;
            local l_Character_10 = l_LocalPlayer_2.Character;
            if l_Character_10 then
                local l_HumanoidRootPart_4 = l_Character_10:FindFirstChild("HumanoidRootPart");
                do
                    local l_l_HumanoidRootPart_4_0 = l_HumanoidRootPart_4;
                    if l_l_HumanoidRootPart_4_0 then
                        if v0.spinConnection then
                            v0.spinConnection:Disconnect();
                        end;
                        v0.spinConnection = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v0 (ref), l_l_HumanoidRootPart_4_0 (ref)
                            if not v0.spinning then
                                v0.spinConnection:Disconnect();
                                v0.spinConnection = nil;
                                return;
                            else
                                l_l_HumanoidRootPart_4_0.CFrame = l_l_HumanoidRootPart_4_0.CFrame * CFrame.Angles(0, math.rad(v0.spinSpeed), 0);
                                return;
                            end;
                        end);
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unspin", "Stop spinning", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            v0.spinning = false;
            if v0.spinConnection then
                v0.spinConnection:Disconnect();
                v0.spinConnection = nil;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("stalk", "Teleport behind a player while facing them", function(v389) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_RunService_2 (ref)
        stopAllMovementLoops();
        local v390 = v81(table.concat(v389, " ")) or l_LocalPlayer_2;
        if v390 and v69(l_LocalPlayer_2) then
            if v0.stalkLoop then
                v0.stalkLoop:Disconnect();
                v0.stalkLoop = nil;
            end;
            v0.stalking = true;
            v0.stalkLoop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_LocalPlayer_2 (ref), v390 (ref)
                local l_Character_11 = l_LocalPlayer_2.Character;
                local l_Character_12 = v390.Character;
                if l_Character_11 and l_Character_12 and l_Character_11:FindFirstChild("HumanoidRootPart") and l_Character_12:FindFirstChild("HumanoidRootPart") then
                    local l_Position_9 = l_Character_11.HumanoidRootPart.Position;
                    local l_Position_10 = l_Character_12.HumanoidRootPart.Position;
                    if (l_Position_9 - l_Position_10).Magnitude > 30 then
                        local v395 = l_Position_10 + l_Character_12.HumanoidRootPart.CFrame.LookVector * -5 + Vector3.new(math.random(-6.5, 6.5), 0, math.random(-6.5, 6.5));
                        l_Character_11.HumanoidRootPart.CFrame = CFrame.new(v395, l_Position_10);
                    end;
                end;
            end);
        end;
    end, {
        authRequired = true
    });
    v58("unstalk", "Stop teleporting behind the target", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            v0.stalking = false;
            if v0.stalkLoop then
                v0.stalkLoop:Disconnect();
                v0.stalkLoop = nil;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("check", "Check the bot's position in the alt list", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            local v396 = 0;
            for v397, _ in pairs(Settings.altAccounts) do
                v396 = v396 + 1;
                if v397 == l_LocalPlayer_2.Name then
                    break;
                end;
            end;
            chat("I'm bot " .. v396 .. "!");
        end;
    end, {
        authRequired = true
    });
    v58("helicopter", "Make the alt orbit the target while spinning like a helicopter", function(v399) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_2 (ref), v69 (ref), v0 (ref), l_Workspace_2 (ref), l_RunService_2 (ref), v85 (ref)
        stopAllMovementLoops();
        local v400 = v81(table.concat(v399, " ")) or l_LocalPlayer_2;
        if v400 and v69(l_LocalPlayer_2) then
            if v0.helicopterLoop then
                v0.helicopterLoop:Disconnect();
                v0.helicopterLoop = nil;
            end;
            v0.helicopterRadius = v0.helicopterRadius or 3;
            v0.helicopterSpeed = v0.helicopterSpeed or 1;
            local v401 = 0;
            local v402 = 0;
            local v403 = 0;
            for v404, _ in pairs(Settings.altAccounts) do
                v402 = v402 + 1;
                if v404 == l_LocalPlayer_2.Name then
                    v403 = v402;
                end;
            end;
            local v406 = 2 * math.pi / v402;
            v0.helicoptering = true;
            l_Workspace_2.Gravity = 0;
            do
                local l_v401_0, l_v403_0, l_v406_0 = v401, v403, v406;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v0 (ref), l_RunService_2 (ref), l_LocalPlayer_2 (ref), v400 (ref), l_v401_0 (ref), l_v406_0 (ref), l_v403_0 (ref), v85 (ref)
                    while v0.helicoptering and l_RunService_2.Heartbeat:Wait() do
                        if l_LocalPlayer_2.Character and l_LocalPlayer_2.Character:FindFirstChild("HumanoidRootPart") and v400.Character and v400.Character:FindFirstChild("Head") then
                            local v410 = l_v401_0 + l_v406_0 * (l_v403_0 - 1);
                            local l_Position_11 = v400.Character.Head.Position;
                            local v412 = Vector3.new(l_Position_11.X + v0.helicopterRadius * math.cos(v410), l_Position_11.Y, l_Position_11.Z + v0.helicopterRadius * math.sin(v410));
                            local v413 = CFrame.lookAt(v412, l_Position_11) * CFrame.Angles(math.pi / 2, 0, 0);
                            l_LocalPlayer_2.Character.HumanoidRootPart.CFrame = v413;
                            v85();
                            l_v401_0 = l_v401_0 + v0.helicopterSpeed * 0.1;
                        end;
                    end;
                end);
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unhelicopter", "Stop helicopter movement", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_2 (ref)
        if v69(l_LocalPlayer_2) then
            v0.helicoptering = false;
            if v0.helicopterLoop then
                v0.helicopterLoop:Disconnect();
                v0.helicopterLoop = nil;
            end;
            l_Workspace_2.Gravity = 196.2;
        end;
    end, {
        authRequired = true
    });
    v58("helicopterspeed", "Set the helicopter rotation speed", function(v414) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        local v415 = tonumber(v414[1]);
        if v415 and v69(l_LocalPlayer_2) then
            v0.helicopterSpeed = v415;
        end;
    end, {
        authRequired = true
    });
    v58("helicopterradius", "Set the helicopter orbit radius", function(v416) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        local v417 = tonumber(v416[1]);
        if v417 and v69(l_LocalPlayer_2) then
            v0.helicopterRadius = v417;
        end;
    end, {
        authRequired = true
    });
    v58("credits", "Show credits for the script", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref)
        if v69(l_LocalPlayer_2) then
            chat("Thanks to punchy39 on Roblox And My Friend TheGirlOofBoi for testing for this alt control! (punchingfella on Blue app) Server: gg");
            chat("/j4PgkQ72wp");
        end;
    end, {
        authRequired = true
    });
    v58("totalcmds", "Display the total number of available commands", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v50 (ref)
        if v69(l_LocalPlayer_2) then
            local v418 = 0;
            for _ in pairs(v50) do
                v418 = v418 + 1;
            end;
            chat("This script has " .. v418 .. " commands!");
        end;
    end, {
        authRequired = true
    });
    v58("swarm", "Make alts swarm around a target player", function(v420) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_1 (ref), v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        stopAllMovementLoops();
        local v421 = table.concat(v420, " ");
        local v422 = v81(v421) or l_LocalPlayer_1;
        if v422 and v69(l_LocalPlayer_2) then
            v0.swarming = true;
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v0 (ref), v422 (ref), l_LocalPlayer_2 (ref)
                while v0.swarming do
                    local l_status_2, l_result_2 = pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v422 (ref), l_LocalPlayer_2 (ref)
                        local v423 = v422 and v422.Character;
                        local v424 = v423 and v423:FindFirstChild("HumanoidRootPart");
                        local l_Character_13 = l_LocalPlayer_2.Character;
                        local v426 = l_Character_13 and l_Character_13:FindFirstChild("HumanoidRootPart");
                        local v427 = l_Character_13 and l_Character_13:FindFirstChild("Humanoid");
                        if v424 and v426 and v427 then
                            local v428 = Vector3.new(math.random(-7, 7), 0, math.random(-7, 7));
                            v427:MoveTo(v424.Position + v428);
                        end;
                    end);
                    if not l_status_2 then
                        warn("[Debug]: Swarm error:", l_result_2);
                        break;
                    else
                        wait(0.3);
                    end;
                end;
            end);
        end;
    end, {
        authRequired = true
    });
    v58("swarm2", "Make alts swarm around a target player in a wider, more erratic dome pattern", function(v431) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_1 (ref), v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_RunService_2 (ref)
        stopAllMovementLoops();
        local v432 = table.concat(v431, " ");
        local v433 = v81(v432) or l_LocalPlayer_1;
        if v433 and v69(l_LocalPlayer_2) then
            v0.swarming2 = true;
            game.Workspace.Gravity = 0;
            local l_Character_14 = l_LocalPlayer_2.Character;
            local v435 = l_Character_14 and l_Character_14:FindFirstChild("HumanoidRootPart");
            local v436 = l_Character_14 and l_Character_14:FindFirstChild("Humanoid");
            do
                local l_v435_0 = v435;
                if l_v435_0 and v436 then
                    v436.PlatformStand = true;
                    local function v443(v438) --[[ Line: 0 ]] --[[ Name:  ]]
                        local v439 = 15;
                        local v440 = 10;
                        local v441 = math.random() * math.pi * 2;
                        local v442 = math.random() * v440;
                        return v438 + Vector3.new(v439 * math.cos(v441) * math.sqrt(1 - (v442 / v440) ^ 2), v442, v439 * math.sin(v441) * math.sqrt(1 - (v442 / v440) ^ 2));
                    end;
                    local v444 = v443(v433.Character.HumanoidRootPart.Position);
                    local v445 = 25;
                    local v446 = 1.5;
                    do
                        local l_v443_0, l_v444_0, l_v445_0, l_v446_0 = v443, v444, v445, v446;
                        v0.swarm2Loop = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v0 (ref), v433 (ref), l_v444_0 (ref), l_v443_0 (ref), l_v445_0 (ref), l_v435_0 (ref), l_v446_0 (ref), l_RunService_2 (ref)
                            if not v0.swarming2 or not v433.Character or not v433.Character.Parent then
                                return;
                            else
                                if (v433.Character.HumanoidRootPart.Position - l_v444_0).Magnitude > 25 then
                                    l_v444_0 = l_v443_0(v433.Character.HumanoidRootPart.Position);
                                    l_v445_0 = math.random(20, 30);
                                end;
                                local l_Position_12 = l_v435_0.Position;
                                local l_l_v444_0_0 = l_v444_0;
                                if (l_Position_12 - l_l_v444_0_0).Magnitude <= l_v446_0 then
                                    l_v444_0 = l_v443_0(v433.Character.HumanoidRootPart.Position);
                                    l_v445_0 = math.random(20, 30);
                                    task.wait(math.random(0.1, 0.5));
                                end;
                                local l_Unit_0 = ((l_l_v444_0_0 - l_Position_12).Unit + Vector3.new(math.random(-0.3, 0.3), math.random(-0.2, 0.2), math.random(-0.3, 0.3))).Unit;
                                local v454 = l_RunService_2.Heartbeat:Wait();
                                local v455 = l_Unit_0 * l_v445_0 * v454;
                                local v456 = Vector3.new(l_l_v444_0_0.X + math.random(-3, 3), l_l_v444_0_0.Y + math.random(-2, 2), l_l_v444_0_0.Z + math.random(-3, 3));
                                l_v435_0.CFrame = CFrame.lookAt(l_Position_12 + v455, v456);
                                return;
                            end;
                        end);
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unswarm", "Stop all swarm movements", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_2 (ref), v85 (ref)
        if v69(l_LocalPlayer_2) then
            v0.swarming = false;
            v0.swarming2 = false;
            if v0.swarm2Loop then
                v0.swarm2Loop:Disconnect();
                v0.swarm2Loop = nil;
            end;
            l_Workspace_2.Gravity = 196.2;
            local l_Character_15 = l_LocalPlayer_2.Character;
            if l_Character_15 then
                local l_Humanoid_1 = l_Character_15:FindFirstChild("Humanoid");
                if l_Humanoid_1 then
                    l_Humanoid_1.PlatformStand = false;
                end;
                v85();
            end;
        end;
    end, {
        authRequired = true
    });
    v58("firework", "Make the alt spin and launch upward like a firework", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), l_Workspace_2 (ref)
        if v69(l_LocalPlayer_2) then
            stopAllMovementLoops();
            local l_Character_16 = l_LocalPlayer_2.Character;
            local v460 = l_Character_16 and l_Character_16:FindFirstChild("HumanoidRootPart");
            local v461 = l_Character_16 and l_Character_16:FindFirstChildWhichIsA("Humanoid");
            if v460 and v461 then
                local l_BodyAngularVelocity_0 = Instance.new("BodyAngularVelocity");
                l_BodyAngularVelocity_0.AngularVelocity = Vector3.new(0, 30, 0);
                l_BodyAngularVelocity_0.MaxTorque = Vector3.new(0, math.huge, 0);
                l_BodyAngularVelocity_0.Parent = v460;
                v460.AssemblyLinearVelocity = Vector3.new(0, 200, 0);
                local v463 = os.clock();
                while os.clock() - v463 < 0.8 and v460 and v460.Parent do
                    v460.CFrame = v460.CFrame * CFrame.Angles(0, math.rad(10), 0);
                    task.wait();
                end;
                v461.Health = 0;
                l_BodyAngularVelocity_0:Destroy();
                l_Workspace_2.Gravity = 196.2;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("stop", "Stop all movements, reset alt, and restore physics", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_2 (ref), v85 (ref)
        if v69(l_LocalPlayer_2) then
            stopAllMovementLoops();
            for _, v465 in pairs({
                "InternalVars.pathfindingLoop", 
                "InternalVars.wonderFollowLoop", 
                "InternalVars.wormLoop", 
                "InternalVars.stackingLoop", 
                "InternalVars.swarm2Loop", 
                "InternalVars.floatConnection", 
                "InternalVars.helicopterLoop"
            }) do
                if v0[v465] then
                    v0[v465]:Disconnect();
                    v0[v465] = nil;
                end;
            end;
            for _, v467 in pairs({
                "InternalVars.stackPlatform", 
                "InternalVars.floatPlatform"
            }) do
                if v0[v467] then
                    v0[v467]:Destroy();
                    v0[v467] = nil;
                end;
            end;
            if v0.bang then
                v0.bang:Stop();
                v0.bang = nil;
            end;
            if v0.bangAnim then
                v0.bangAnim:Destroy();
                v0.bangAnim = nil;
            end;
            if v0.bangDied then
                v0.bangDied:Disconnect();
                v0.bangDied = nil;
            end;
            v0.banging = false;
            v0.floating = false;
            v0.spinning = false;
            v0.helicoptering = false;
            v0.swarming2 = false;
            if v0.flingSpinVelocity then
                v0.flingSpinVelocity:Destroy();
                v0.flingSpinVelocity = nil;
            end;
            if v0.flingFollowLoop then
                v0.flingFollowLoop:Disconnect();
                v0.flingFollowLoop = nil;
            end;
            if v0.fling2Loop then
                v0.fling2Loop:Disconnect();
                v0.fling2Loop = nil;
            end;
            l_Workspace_2.Gravity = 196.2;
            if l_LocalPlayer_2.Character then
                for _, v469 in pairs(l_LocalPlayer_2.Character:GetDescendants()) do
                    if v469:IsA("BasePart") then
                        v469.CanCollide = true;
                    end;
                end;
                local l_Humanoid_2 = l_LocalPlayer_2.Character:FindFirstChild("Humanoid");
                if l_Humanoid_2 then
                    l_Humanoid_2.PlatformStand = false;
                end;
                v85();
            end;
        end;
    end, {
        authRequired = true
    });
    v58("orbit3", "Make the alt orbit around a target in a tilted ring pattern", function(v471) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_LocalPlayer_1 (ref), v69 (ref), l_LocalPlayer_2 (ref), v0 (ref), l_Workspace_2 (ref), v85 (ref), l_RunService_2 (ref)
        stopAllMovementLoops();
        local v472 = table.concat(v471, " ");
        local v473 = v81(v472) or l_LocalPlayer_1;
        if v473 and v69(l_LocalPlayer_2) then
            v0.orbiting3 = false;
            wait(0.1);
            local v474 = 0;
            local v475 = 0;
            for v476, _ in pairs(Settings.altAccounts) do
                v474 = v474 + 1;
                if v476 == l_LocalPlayer_2.Name then
                    v475 = v474;
                end;
            end;
            if v475 == 0 then
                return;
            else
                local v478 = 10;
                local v479 = 2;
                local v480 = v475 / v474 * math.pi;
                local v481 = math.random() * (2 * math.pi);
                l_Workspace_2.Gravity = 0;
                v0.orbiting3 = true;
                do
                    local l_v478_0, l_v479_0, l_v480_0, l_v481_0 = v478, v479, v480, v481;
                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_v481_0 (ref), v0 (ref), l_LocalPlayer_2 (ref), v473 (ref), l_v478_0 (ref), l_v480_0 (ref), l_v479_0 (ref), v85 (ref), l_RunService_2 (ref)
                        local l_l_v481_0_0 = l_v481_0;
                        while v0.orbiting3 do
                            local l_Character_17 = l_LocalPlayer_2.Character;
                            local v488 = l_Character_17 and l_Character_17:FindFirstChild("HumanoidRootPart");
                            local l_Character_18 = v473.Character;
                            local v490 = l_Character_18 and l_Character_18:FindFirstChild("HumanoidRootPart");
                            if v488 and v490 then
                                local v491 = l_v478_0 * math.cos(l_l_v481_0_0);
                                local v492 = l_v478_0 * math.sin(l_l_v481_0_0);
                                local l_v491_0 = v491;
                                local v494 = math.sin(l_v480_0) * v492;
                                local v495 = math.cos(l_v480_0) * v492;
                                local v496 = v490.Position + Vector3.new(l_v491_0, v494, v495);
                                v488.CFrame = CFrame.new(v496, v490.Position);
                                l_l_v481_0_0 = l_l_v481_0_0 + math.rad(l_v479_0);
                            end;
                            v85();
                            l_RunService_2.Heartbeat:Wait();
                        end;
                    end);
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("spam", "Make the alt spam a message in chat", function(v497) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            table.remove(v497, 1);
            local v498 = table.concat(v497, " ");
            do
                local l_v498_0 = v498;
                if l_v498_0 and not v0.spamming then
                    v0.spamming = true;
                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v0 (ref), v69 (ref), l_LocalPlayer_2 (ref), l_v498_0 (ref)
                        while v0.spamming and v69(l_LocalPlayer_2) do
                            chat(l_v498_0);
                            wait(v0.spamSpeed);
                        end;
                        v0.spamming = false;
                    end);
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unspam", "Stop spamming messages in chat", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        if v69(l_LocalPlayer_2) then
            v0.spamming = false;
        end;
    end, {
        authRequired = true
    });
    v58("spamspeed", "Set the delay between spam messages", function(v500) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_LocalPlayer_2 (ref), v0 (ref)
        table.remove(v500, 1);
        local v501 = tonumber(v500[1]);
        if v501 and v69(l_LocalPlayer_2) then
            v0.spamSpeed = math.max(0.1, v501);
        end;
    end, {
        authRequired = true
    });
    v58("info", "Displays information about a command", function(v502, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v50 (ref), l_LocalPlayer_2 (ref)
        local v504 = table.concat(v502, " "):lower();
        if v504 == "" then
            return;
        else
            local v505 = v50[v504];
            if not v505 then
                return;
            else
                if next(Settings.altAccounts) == l_LocalPlayer_2.Name then
                    chat(v504 .. ": " .. v505.description);
                end;
                return;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("nuke", "Make all bots divebomb a target spinning", function(v506, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_Players_0 (ref), v69 (ref)
        local v508 = table.concat(v506, " ");
        local v509 = v508 ~= "" and v81(v508) or nil;
        if v509 and v509.Character and v509.Character:FindFirstChild("HumanoidRootPart") then
            local l_Position_13 = v509.Character.HumanoidRootPart.Position;
            local v511 = 10;
            local v512 = 1;
            local v513 = 100;
            do
                local l_l_Position_13_0, l_v511_0, l_v512_0 = l_Position_13, v511, v512;
                for _, v518 in pairs(l_Players_0:GetPlayers()) do
                    do
                        local l_v518_0 = v518;
                        if v69(l_v518_0) and l_v518_0.Character and l_v518_0.Character:FindFirstChild("HumanoidRootPart") then
                            local l_HumanoidRootPart_5 = l_v518_0.Character.HumanoidRootPart;
                            local _ = l_v518_0.Character:FindFirstChild("Humanoid");
                            l_HumanoidRootPart_5.CFrame = CFrame.new(l_l_Position_13_0 + Vector3.new(0, v513, 0)) * CFrame.Angles(math.rad(90), 0, 0);
                            local l_BodyAngularVelocity_1 = Instance.new("BodyAngularVelocity");
                            l_BodyAngularVelocity_1.AngularVelocity = Vector3.new(0, 150, 0);
                            l_BodyAngularVelocity_1.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
                            l_BodyAngularVelocity_1.Parent = l_HumanoidRootPart_5;
                            do
                                local l_l_HumanoidRootPart_5_0, l_l_BodyAngularVelocity_1_0 = l_HumanoidRootPart_5, l_BodyAngularVelocity_1;
                                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                    -- upvalues: l_l_HumanoidRootPart_5_0 (ref), l_l_Position_13_0 (ref), l_v511_0 (ref), l_v512_0 (ref), l_v518_0 (ref), l_l_BodyAngularVelocity_1_0 (ref)
                                    while l_l_HumanoidRootPart_5_0.Position.Y > l_l_Position_13_0.Y + l_v511_0 do
                                        task.wait();
                                    end;
                                    l_l_HumanoidRootPart_5_0.CFrame = CFrame.new(l_l_Position_13_0 + Vector3.new(0, l_v512_0, 0)) * CFrame.Angles(math.rad(90), 0, 0);
                                    task.wait(0.25);
                                    if l_v518_0.Character then
                                        l_v518_0.Character:BreakJoints();
                                    end;
                                    task.wait(0.1);
                                    l_l_BodyAngularVelocity_1_0:Destroy();
                                end);
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("fling", "Fling a target by following them and spinning on all axes", function(v525, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), l_RunService_2 (ref), v69 (ref), v0 (ref), l_Workspace_3 (ref)
        local v527 = table.concat(v525, " ");
        local v528 = v527 ~= "" and v81(v527) or nil;
        if v528 and v528.Character and v528.Character:FindFirstChild("HumanoidRootPart") then
            local l_HumanoidRootPart_6 = v528.Character.HumanoidRootPart;
            local l_l_RunService_2_0 = l_RunService_2;
            do
                local l_l_HumanoidRootPart_6_0 = l_HumanoidRootPart_6;
                for _, v533 in pairs(game.Players:GetPlayers()) do
                    if v69(v533) and v533.Character and v533.Character:FindFirstChild("HumanoidRootPart") then
                        local l_Character_19 = v533.Character;
                        local l_HumanoidRootPart_7 = l_Character_19.HumanoidRootPart;
                        local l_Humanoid_4 = l_Character_19:FindFirstChild("Humanoid");
                        if v0.flingLoop then
                            v0.flingLoop:Disconnect();
                            v0.flingLoop = nil;
                        end;
                        if l_Humanoid_4 then
                            l_Humanoid_4.PlatformStand = false;
                        end;
                        for _, v538 in pairs(l_Character_19:GetDescendants()) do
                            if v538:IsA("BasePart") then
                                v538.CanCollide = false;
                                v538.CanTouch = false;
                                v538.CanQuery = false;
                                v538.Massless = true;
                            end;
                        end;
                        local l_BodyAngularVelocity_2 = Instance.new("BodyAngularVelocity");
                        l_BodyAngularVelocity_2.AngularVelocity = Vector3.new(99999, 99999, 99999);
                        l_BodyAngularVelocity_2.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
                        l_BodyAngularVelocity_2.P = math.huge;
                        l_BodyAngularVelocity_2.Parent = l_HumanoidRootPart_7;
                        do
                            local l_l_Character_19_0, l_l_HumanoidRootPart_7_0, l_l_BodyAngularVelocity_2_0 = l_Character_19, l_HumanoidRootPart_7, l_BodyAngularVelocity_2;
                            v0.flingLoop = l_l_RunService_2_0.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: l_l_Character_19_0 (ref), l_Workspace_3 (ref), v528 (ref), v0 (ref), l_l_BodyAngularVelocity_2_0 (ref), l_l_HumanoidRootPart_7_0 (ref), l_l_HumanoidRootPart_6_0 (ref)
                                if not l_l_Character_19_0:IsDescendantOf(l_Workspace_3) or not v528.Character:IsDescendantOf(l_Workspace_3) then
                                    v0.flingLoop:Disconnect();
                                    l_l_BodyAngularVelocity_2_0:Destroy();
                                    return;
                                else
                                    l_l_HumanoidRootPart_7_0.CFrame = l_l_HumanoidRootPart_6_0.CFrame;
                                    l_l_HumanoidRootPart_7_0.Velocity = Vector3.new(99999, 99999, 99999);
                                    l_l_HumanoidRootPart_7_0.RotVelocity = Vector3.new(99999, 99999, 99999);
                                    for _, v544 in pairs(l_l_Character_19_0:GetDescendants()) do
                                        if v544:IsA("BasePart") then
                                            v544.CanCollide = false;
                                        end;
                                    end;
                                    return;
                                end;
                            end);
                        end;
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("fling2", "Flings a player using physics manipulation", function(v545, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v69 (ref)
        local v547 = table.concat(v545, " ");
        local v548 = v547 ~= "" and v81(v547) or nil;
        if v548 and v548.Character and v548.Character:FindFirstChild("HumanoidRootPart") then
            local l_HumanoidRootPart_8 = v548.Character.HumanoidRootPart;
            for _, v551 in pairs(game.Players:GetPlayers()) do
                if v69(v551) and v551.Character and v551.Character:FindFirstChild("HumanoidRootPart") then
                    local l_HumanoidRootPart_9 = v551.Character.HumanoidRootPart;
                    local l_CFrame_1 = l_HumanoidRootPart_9.CFrame;
                    local l_Velocity_0 = l_HumanoidRootPart_9.Velocity;
                    for _, v556 in pairs(v551.Character:GetDescendants()) do
                        if v556:IsA("BasePart") then
                            v556.CanCollide = false;
                        end;
                    end;
                    l_HumanoidRootPart_9.Velocity = Vector3.new(0, 500, 0);
                    task.wait(0.2);
                    l_HumanoidRootPart_9.Velocity = (l_HumanoidRootPart_8.Position - l_HumanoidRootPart_9.Position).Unit * 100 + Vector3.new(0, 50, 0);
                    local v557 = tick();
                    repeat
                        task.wait();
                    until (l_HumanoidRootPart_8.Position - l_HumanoidRootPart_9.Position).Magnitude >= 60 or tick() - v557 >= 2.5;
                    task.wait(0.5);
                    l_HumanoidRootPart_9.Velocity = l_Velocity_0;
                    l_HumanoidRootPart_9.CFrame = l_CFrame_1;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("unfling", "Stops all flinging actions and restores collisions", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref), v85 (ref), v69 (ref)
        if v0.flingSpinVelocity then
            v0.flingSpinVelocity:Destroy();
            v0.flingSpinVelocity = nil;
        end;
        if v0.flingBotHRP then
            v0.flingBotHRP.Velocity = Vector3.zero;
        end;
        if v0.flingFollowLoop then
            v0.flingFollowLoop:Disconnect();
            v0.flingFollowLoop = nil;
        end;
        v85();
        if v0.fling2Loop then
            v0.fling2Loop:Disconnect();
            v0.fling2Loop = nil;
        end;
        if bot.Character:FindFirstChild("HumanoidRootPart") then
            local l_HumanoidRootPart_10 = bot.Character.HumanoidRootPart;
            if l_HumanoidRootPart_10:FindFirstChild("BodyVelocity") then
                l_HumanoidRootPart_10.BodyVelocity:Destroy();
            end;
            l_HumanoidRootPart_10.Velocity = Vector3.zero;
        end;
        for _, v560 in pairs(game.Players:GetPlayers()) do
            if v69(v560) and v560.Character then
                for _, v562 in pairs(v560.Character:GetDescendants()) do
                    if v562:IsA("BasePart") then
                        v562.CanCollide = true;
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("npc", "Makes bots act like NPCs", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v69 (ref), l_RunService_2 (ref), v0 (ref)
        local v563 = {
            "Hmm... I should go this way.", 
            "I love this game!", 
            "Have you seen my hat?", 
            "I'm just an NPC.", 
            "What a nice day!", 
            "I need to find the shop.", 
            "I wonder where this leads...", 
            "Excuse me, coming through.", 
            "I swear I just saw something weird...", 
            "This place gives me the creeps.", 
            "I think I'm lost.", 
            "Oops, wrong way!", 
            "HOLY MOLY IS THAT JOHN DOE"
        };
        local v564 = {
            "/e dance", 
            "/e wave", 
            "/e cheer", 
            "/e point", 
            "/e laugh"
        };
        local v565 = {};
        local v566 = {};
        for _, v568 in pairs(game.Players:GetPlayers()) do
            do
                local l_v568_0 = v568;
                if v69(l_v568_0) and l_v568_0.Character and l_v568_0.Character:FindFirstChild("Humanoid") then
                    local l_Humanoid_5 = l_v568_0.Character:FindFirstChildOfClass("Humanoid");
                    local l_HumanoidRootPart_11 = l_v568_0.Character.HumanoidRootPart;
                    v565[l_v568_0] = {
                        moving = false, 
                        busy = false, 
                        lastAction = 0, 
                        currentDestination = nil
                    };
                    do
                        local l_l_Humanoid_5_0, l_l_HumanoidRootPart_11_0 = l_Humanoid_5, l_HumanoidRootPart_11;
                        v566[l_v568_0] = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_v568_0 (ref), l_l_Humanoid_5_0 (ref), v565 (ref), v563 (ref), v564 (ref), l_l_HumanoidRootPart_11_0 (ref)
                            if not l_v568_0.Character or not l_l_Humanoid_5_0 or l_l_Humanoid_5_0.Health <= 0 then
                                return;
                            elseif v565[l_v568_0].busy then
                                return;
                            else
                                local v574 = tick();
                                local v575 = math.random();
                                local v576 = 12 + math.random(-4, 4);
                                if v574 - v565[l_v568_0].lastAction > math.random(3, 8) then
                                    v565[l_v568_0].busy = true;
                                    if v575 <= 0.15 then
                                        chat(v563[math.random(#v563)]);
                                        task.wait(2);
                                    elseif v575 <= 0.3 then
                                        game.Players:Chat(v564[math.random(#v564)]);
                                        task.wait(3);
                                    else
                                        local v577 = Vector3.new(math.random(-50, 50), 0, math.random(-50, 50));
                                        local v578 = l_l_HumanoidRootPart_11_0.Position + v577;
                                        l_l_Humanoid_5_0.WalkSpeed = v576;
                                        l_l_Humanoid_5_0:MoveTo(v578);
                                        v565[l_v568_0].moving = true;
                                        v565[l_v568_0].currentDestination = v578;
                                        local v579 = tick();
                                        while v565[l_v568_0].moving do
                                            task.wait(1);
                                            if (l_l_HumanoidRootPart_11_0.Position - v578).Magnitude < 4 then
                                                v565[l_v568_0].moving = false;
                                                break;
                                            elseif tick() - v579 >= 15 then
                                                v565[l_v568_0].moving = false;
                                                break;
                                            end;
                                        end;
                                    end;
                                    v565[l_v568_0].lastAction = tick();
                                    v565[l_v568_0].busy = false;
                                    v565[l_v568_0].moving = false;
                                end;
                                if v565[l_v568_0].moving and math.random() < 0.2 then
                                    l_l_Humanoid_5_0.WalkSpeed = v576 + math.random(-2, 2);
                                end;
                                return;
                            end;
                        end);
                    end;
                end;
            end;
        end;
        v0.npcLoops = v566;
    end, {
        authRequired = true
    });
    v58("unnpc", "Stops NPC mode for all bots", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref)
        if v0.npcLoops then
            for v580, v581 in pairs(v0.npcLoops) do
                v581:Disconnect();
                if v580.Character then
                    local l_Humanoid_6 = v580.Character:FindFirstChildOfClass("Humanoid");
                    if l_Humanoid_6 then
                        l_Humanoid_6.Sit = false;
                        l_Humanoid_6.WalkSpeed = 16;
                    end;
                end;
            end;
            v0.npcLoops = nil;
        end;
    end, {
        authRequired = true
    });
    v58("elevator", "Creates an elevator platform of alts beneath the target", function(v583, v584) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v69 (ref)
        local v585 = table.concat(v583, " ");
        local v586 = v585 ~= "" and v81(v585) or v584;
        if v586 and v586.Character and v586.Character:FindFirstChild("HumanoidRootPart") then
            local l_HumanoidRootPart_12 = v586.Character.HumanoidRootPart;
            local v588 = 3;
            local v589 = 1;
            local v590 = {};
            for _, v592 in pairs(game.Players:GetPlayers()) do
                if v69(v592) and v592.Character and v592.Character:FindFirstChild("HumanoidRootPart") then
                    table.insert(v590, v592);
                end;
            end;
            do
                local l_l_HumanoidRootPart_12_0, l_v589_0 = l_HumanoidRootPart_12, v589;
                for v595, v596 in ipairs(v590) do
                    local l_HumanoidRootPart_13 = v596.Character.HumanoidRootPart;
                    local l_Humanoid_7 = v596.Character:FindFirstChild("Humanoid");
                    do
                        local l_v596_0 = v596;
                        do
                            local l_l_HumanoidRootPart_13_0, l_l_Humanoid_7_0 = l_HumanoidRootPart_13, l_Humanoid_7;
                            if l_l_Humanoid_7_0 then
                                local v602 = 0;
                                local v603 = 0;
                                local v604 = math.ceil(v595 ^ 0.5);
                                if v595 == 1 then
                                    local v605 = 0;
                                    v603 = 0;
                                    v602 = v605;
                                else
                                    local v606 = {
                                        {
                                            0, 
                                            v588
                                        }, 
                                        {
                                            0, 
                                            -v588
                                        }, 
                                        {
                                            -v588, 
                                            0
                                        }, 
                                        {
                                            v588, 
                                            0
                                        }, 
                                        {
                                            -v588, 
                                            v588
                                        }, 
                                        {
                                            v588, 
                                            v588
                                        }, 
                                        {
                                            -v588, 
                                            -v588
                                        }, 
                                        {
                                            v588, 
                                            -v588
                                        }
                                    };
                                    local v607 = (v595 - 2) % #v606 + 1;
                                    v602 = v606[v607][1] * v604;
                                    v603 = v606[v607][2] * v604;
                                end;
                                l_l_HumanoidRootPart_13_0.CFrame = CFrame.new(l_l_HumanoidRootPart_12_0.Position.X + v602, l_l_HumanoidRootPart_12_0.Position.Y - 5, l_l_HumanoidRootPart_12_0.Position.Z + v603) * CFrame.Angles(math.rad(90), 0, 0);
                                do
                                    local l_v602_0, l_v603_0 = v602, v603;
                                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: l_l_HumanoidRootPart_13_0 (ref), l_v596_0 (ref), v586 (ref), l_l_Humanoid_7_0 (ref), l_l_HumanoidRootPart_12_0 (ref), l_v602_0 (ref), l_v589_0 (ref), l_v603_0 (ref)
                                        local l_BodyVelocity_0 = Instance.new("BodyVelocity");
                                        l_BodyVelocity_0.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
                                        l_BodyVelocity_0.P = 1000;
                                        l_BodyVelocity_0.Parent = l_l_HumanoidRootPart_13_0;
                                        local l_BodyGyro_0 = Instance.new("BodyGyro");
                                        l_BodyGyro_0.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
                                        l_BodyGyro_0.CFrame = l_l_HumanoidRootPart_13_0.CFrame;
                                        l_BodyGyro_0.Parent = l_l_HumanoidRootPart_13_0;
                                        while l_v596_0.Character and v586.Character and l_l_Humanoid_7_0.Health > 0 do
                                            local l_Position_14 = l_l_HumanoidRootPart_12_0.Position;
                                            l_l_HumanoidRootPart_13_0.CFrame = CFrame.new(l_Position_14.X + l_v602_0, l_l_HumanoidRootPart_13_0.Position.Y + l_v589_0 * task.wait(), l_Position_14.Z + l_v603_0) * CFrame.Angles(math.rad(90), 0, 0);
                                            l_BodyGyro_0.CFrame = l_l_HumanoidRootPart_13_0.CFrame;
                                        end;
                                        l_BodyVelocity_0:Destroy();
                                        l_BodyGyro_0:Destroy();
                                    end);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end, {
        authRequired = true
    });
    v58("mine", "Bots become hidden mines that explode when their head is touched", function(v613, v614) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v81 (ref), v69 (ref), l_LocalPlayer_2 (ref), l_Workspace_3 (ref), l_RunService_2 (ref)
        local v615 = v81(table.concat(v613, " ")) or v614;
        if not v615 or not v615.Character then
            return;
        else
            if v69(l_LocalPlayer_2) then
                local l_Character_20 = l_LocalPlayer_2.Character;
                local l_HumanoidRootPart_14 = l_Character_20.HumanoidRootPart;
                local l_Humanoid_8 = l_Character_20:FindFirstChild("Humanoid");
                local l_Head_0 = l_Character_20:FindFirstChild("Head");
                if not l_Head_0 then
                    return;
                else
                    if l_Humanoid_8 then
                        l_Humanoid_8.PlatformStand = true;
                        l_Humanoid_8:ChangeState(Enum.HumanoidStateType.Physics);
                    end;
                    local v620 = Vector3.new(math.random(-15, 15), 0, math.random(-15, 15));
                    local v621 = v615.Character.HumanoidRootPart.Position + v620 + Vector3.new(0, 50, 0);
                    local v622 = RaycastParams.new();
                    v622.FilterType = Enum.RaycastFilterType.Blacklist;
                    v622.FilterDescendantsInstances = {
                        l_Character_20
                    };
                    local v623 = l_Workspace_3:Raycast(v621, Vector3.new(0, -100, 0), v622);
                    if not v623 then
                        return;
                    else
                        local l_Part_1 = Instance.new("Part");
                        l_Part_1.Size = Vector3.new(4, 1, 4);
                        l_Part_1.Position = v623.Position + Vector3.new(0, 1.4, 0);
                        l_Part_1.Transparency = 1;
                        l_Part_1.Anchored = true;
                        l_Part_1.CanCollide = true;
                        l_Part_1.Name = "MinePlatform";
                        l_Part_1.Parent = l_Workspace_3;
                        l_HumanoidRootPart_14.CFrame = CFrame.new(l_Part_1.Position - Vector3.new(0, 2.42, 0));
                        for _, v626 in pairs(l_Character_20:GetDescendants()) do
                            if v626:IsA("BasePart") then
                                v626.CanCollide = false;
                                v626.CanTouch = false;
                            end;
                        end;
                        local l_BodyPosition_0 = Instance.new("BodyPosition");
                        l_BodyPosition_0.Position = l_HumanoidRootPart_14.Position;
                        l_BodyPosition_0.MaxForce = Vector3.new(math.huge, math.huge, math.huge);
                        l_BodyPosition_0.Parent = l_HumanoidRootPart_14;
                        local v628 = false;
                        do
                            local l_l_Character_20_0, l_l_Head_0_0, l_l_Part_1_0, l_l_BodyPosition_0_0, l_v628_0 = l_Character_20, l_Head_0, l_Part_1, l_BodyPosition_0, v628;
                            local function v634() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: l_v628_0 (ref), l_l_Part_1_0 (ref), l_l_BodyPosition_0_0 (ref), l_l_Character_20_0 (ref)
                                if l_v628_0 then
                                    return;
                                else
                                    l_v628_0 = true;
                                    l_l_Part_1_0:Destroy();
                                    l_l_BodyPosition_0_0:Destroy();
                                    l_l_Character_20_0:BreakJoints();
                                    return;
                                end;
                            end;
                            local v636 = l_l_Head_0_0.Touched:Connect(function(v635) --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: v615 (ref), v634 (ref)
                                if v635.Parent == v615.Character then
                                    v634();
                                end;
                            end);
                            local v637 = l_RunService_2.Heartbeat:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: v615 (ref), l_l_Head_0_0 (ref), v634 (ref)
                                if v615 and v615.Character and v615.Character:FindFirstChild("HumanoidRootPart") and (v615.Character.HumanoidRootPart.Position - l_l_Head_0_0.Position).Magnitude < 3 then
                                    v634();
                                end;
                            end);
                            l_l_Character_20_0.DescendantRemoving:Connect(function(v638) --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: l_l_BodyPosition_0_0 (ref), v637 (ref), v636 (ref), l_l_Part_1_0 (ref)
                                if v638 == l_l_BodyPosition_0_0 then
                                    v637:Disconnect();
                                    v636:Disconnect();
                                    l_l_Part_1_0:Destroy();
                                end;
                            end);
                        end;
                    end;
                end;
            end;
            return;
        end;
    end, {
        authRequired = true
    });
    v58("jerk", "Make alt perform jerk animations", function(_, _) --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref)
        local l_LocalPlayer_6 = game:GetService("Players").LocalPlayer;
        local l_Humanoid_9 = (l_LocalPlayer_6.Character or l_LocalPlayer_6.CharacterAdded:Wait()):FindFirstChildWhichIsA("Humanoid");
        if not l_Humanoid_9 then
            return;
        else
            local l_Animation_0 = Instance.new("Animation");
            l_Animation_0.AnimationId = "rbxassetid://72042024";
            local l_Animation_1 = Instance.new("Animation");
            l_Animation_1.AnimationId = "rbxassetid://168268306";
            local v645 = l_Humanoid_9:LoadAnimation(l_Animation_0);
            local v646 = l_Humanoid_9:LoadAnimation(l_Animation_1);
            local l_Length_0 = v645.Length;
            local l_Length_1 = v646.Length;
            local v649 = l_Length_0 - 0.2;
            local v650 = l_Length_1 - 0.2;
            v0.jerking = true;
            v0.jerkLoop = spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v0 (ref), v645 (ref), v649 (ref), v646 (ref), v650 (ref)
                while v0.jerking do
                    v645:Play();
                    v645.TimePosition = 0.4;
                    if v645.TimePosition >= v649 then
                        v645.TimePosition = 0.4;
                    end;
                    v646:Play();
                    v646.TimePosition = 0.5;
                    if v646.TimePosition >= v650 then
                        v646.TimePosition = 0.5;
                    end;
                    wait(0.4);
                end;
            end);
            return;
        end;
    end, {
        authRequired = true
    });
    v58("unjerk", "Stop jerk animations", function() --[[ Line: 0 ]] --[[ Name:  ]]
        -- upvalues: v0 (ref)
        v0.jerking = false;
        v0.jerkLoop = nil;
        local l_Character_21 = game:GetService("Players").LocalPlayer.Character;
        if l_Character_21 then
            local l_Humanoid_10 = l_Character_21:FindFirstChildWhichIsA("Humanoid");
            if l_Humanoid_10 then
                l_Humanoid_10:StopAnimations();
            end;
        end;
    end, {
        authRequired = true
    });
    return;
end;