Target = game.Players['KODMSM']
Loopkill = false
 local Player = game.Players.LocalPlayer
local function Kill()
            if not Target then
            end
            
            repeat game:FindService("RunService").Heartbeat:wait() until Target.Character and Target.Character:FindFirstChildOfClass("Humanoid") and Target.Character:FindFirstChildOfClass("Humanoid").Health > 0
            local Character = game.Players.LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local RootPart = Character.HumanoidRootPart
            local Tool = Character:FindFirstChildOfClass("Tool")
            local Handle = Tool and Tool:FindFirstChild("Handle")
            
            local TPlayer = Target
            local TCharacter = TPlayer and TPlayer.Character
            local THumanoid = TCharacter and TCharacter:FindFirstChildOfClass("Humanoid")
            local TRootPart = THumanoid and THumanoid.RootPart
 
            
            if Player.Character and Player.Character and Player.Character.Name == Player.Name then
                Character = Player.Character
            else
            end
            if Character:FindFirstChildOfClass("Humanoid") then
                Humanoid = Character:FindFirstChildOfClass("Humanoid")
            else
            end
            if Humanoid and Humanoid.RootPart then
                RootPart = Humanoid.RootPart
            else
            end
            if Character:FindFirstChildOfClass("Tool") then
                Tool = Character:FindFirstChildOfClass("Tool")
            elseif Player.Backpack:FindFirstChildOfClass("Tool") and Humanoid then
                Tool = Player.Backpack:FindFirstChildOfClass("Tool")
                Humanoid:EquipTool(Player.Backpack:FindFirstChildOfClass("Tool"))
            else
            end
            if Tool and Tool:FindFirstChild("Handle") then
                Handle = Tool.Handle
            else
            end
            
            
            local OldCFrame = RootPart.CFrame
            
            Humanoid:Destroy()
            local NewHumanoid = Humanoid:Clone()
            NewHumanoid.Parent = Character
            NewHumanoid:UnequipTools()
            NewHumanoid:EquipTool(Tool)
            Tool.Parent = workspace
        
            local Timer = os.time()
        
            repeat
                if (TRootPart.CFrame.p - RootPart.CFrame.p).Magnitude < 500 then
                    Tool.Grip = CFrame.new()
                    Tool.Grip = Handle.CFrame:ToObjectSpace(TRootPart.CFrame):Inverse()
                end
                firetouchinterest(Handle,TRootPart,0)
                firetouchinterest(Handle,TRootPart,1)
                game:FindService("RunService").Heartbeat:wait()
            until Tool.Parent ~= Character or not TPlayer or not TRootPart or THumanoid.Health <= 0 or os.time() > Timer + .20
            Player.Character = nil
            NewHumanoid.Health = 0
            player.CharacterAdded:wait(1)
            repeat game:FindService("RunService").Heartbeat:wait() until Player.Character:FindFirstChild("HumanoidRootPart")
            Player.Character.HumanoidRootPart.CFrame = OldCFrame
      
        if not LoopKill then
            Kill()
        else
            while LoopKill do
                Kill()
            end
        end
         end
         Kill()
