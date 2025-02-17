loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/Kaitun.txt"))()

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
