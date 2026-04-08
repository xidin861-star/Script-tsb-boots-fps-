-- 🔻 GUI 🔻
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.ResetOnSpawn = false

-- 🔘 ปุ่มวงกลม
local openBtn = Instance.new("TextButton", gui)
openBtn.Size = UDim2.new(0,60,0,60)
openBtn.Position = UDim2.new(0,20,0.5,-30)
openBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
openBtn.Text = ""
openBtn.Draggable = true
Instance.new("UICorner", openBtn).CornerRadius = UDim.new(1,0)

-- 🎨 ไอคอน (ดินน้ำมัน)
local icon = Instance.new("TextLabel", openBtn)
icon.Size = UDim2.new(1,0,1,0)
icon.BackgroundTransparency = 1
icon.Text = "🧱" -- เปลี่ยน emoji ได้
icon.TextScaled = true

-- 📦 UI หลัก
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,300,0,180)
main.Position = UDim2.new(0.5,-150,0.5,-90)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Visible = false
main.Active = true
main.Draggable = true
Instance.new("UICorner", main)

-- ❌ ปุ่มปิด (ติดกับ UI)
local close = Instance.new("TextButton", main)
close.Size = UDim2.new(0,30,0,30)
close.Position = UDim2.new(1,-35,0,5)
close.Text = "X"
close.BackgroundColor3 = Color3.fromRGB(255,80,80)
close.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", close)

-- 🧠 กันโหลดซ้ำ
local loaded = false

-- 🔘 กดวงกลม
openBtn.MouseButton1Click:Connect(function()
	openBtn.Visible = false
	main.Visible = true

	-- โหลดครั้งเดียว
	if not loaded then
		loaded = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/xidin861-star/Script-tsb-boots-fps/main/Script.lua"))()
	end
end)

-- ❌ กดปิด
close.MouseButton1Click:Connect(function()
	main.Visible = false
	openBtn.Visible = true
end)
