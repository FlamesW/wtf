-- // This script is protected by license: https://github.com/FlamesW/wtf/blob/main/LICENSE.md
---------------------------------------------------------------------------------------------------
--  ______ _                   __          __
-- |  ____| |                  \ \        / /
-- | |__  | | __ _ _ __ ___   __\ \  /\  / /_ _ _ __ ___
-- |  __| | |/ _` | '_ ` _ \ / _ \ \/  \/ / _` | '__/ _ \
-- | |    | | (_| | | | | | |  __/\  /\  / (_| | | |  __/
-- |_|    |_|\__,_|_| |_| |_|\___| \/  \/ \__,_|_|  \___|
---------------------------------------------------------------------------------------------------
local Flameware = { GetService = function(service)
	return cloneref and cloneref(game:GetService(service)) or game:GetService(service)
end}

getgenv().CopyrightHolder = getgenv().CopyrightHolder or "FlamesW©";
shared.Flameh_Icon = shared.Flameh_Icon or "rbxassetid://129855843582244";
shared.IntroSounds = {
    "rbxassetid://00000",
}

shared.__Invite = shared.__Invite or "Enjoy:)~"; -- // "https://dsc.gg/test"

 -- // Variables
local Players: Players = Flameware.GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait();
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait();
local InMaintenance = false

-- // Condom Protection
local ProtectGUI = protectgui or (syn and syn.protect_gui) or function() end

-- // Services
Flameware.Services = {
	["VirtualUser"] = Flameware.GetService("VirtualUser"),
	["CoreGui"] = Flameware.GetService("CoreGui"),
	["Lighting"] = Flameware.GetService("Lighting"),
	["Tweening"] = Flameware.GetService("TweenService"),
	["Connections"] = getconnections or get_signal_cons
}

-- // IsLoaded() yes
if not game:IsLoaded() then
    local Unloaded = Instance.new("Message"); Unloaded.Parent = Flameware.Service.CoreGui;
	Unloaded.Text = "Flameh is waiting for the game to load~";
	game.Loaded:Wait(); NotLoaded:Destroy();
end

-- // Maintenance Checker
if InMaintenance == true then
    LocalPlayer:Kick("Flameh is temporarily closed, Try again later~");
    return
end

-- // Instance Checker
if Library and Library.InstanceExist and Library:InstanceExist() then
    Library:Notify("Flameh is already loaded~", 5);
    return
end

-- // First Timer
if not isfolder("FlamehFolder") then warn("Is this your first time?"); end

local SweetThings = {
	"Caramel :3",
	"Ice Cream :3",
	"Bobba Tea :3",
	"Yogurt :3",
	"Waffle :3",
	"Honey :3",
	"Chocolate :3",
	"Strawberry :3",
	"Vanilla :3",
	"Cupcake :3",
	"Donut :3",
	"Cookie :3",
	"Pudding :3",
	"Mochi :3",
	"Milkshake :3",
	"Smoothie :3",
	"Candy :3",
	"Marshmallow :3",
	"Cinnamon Bun :3",
	"Apple Pie :3",
	"Cheesecake :3",
	"Brownie :3",
	"Lollipop :3",
	"Gummy Bear :3",
	"Macaron :3"
}

local LoaderUI = function()	
	local Blur = Instance.new("BlurEffect")
	Blur.Size = 0
	Blur.Parent = Flameware.Services.Lighting

	local Loader = Instance.new("ScreenGui")
	Loader.Name = "@%#*^)*%@#%*!@^%$%&@#$~"
	local Success, Parent = pcall(function()
		return gethui()
	end)

	if Success and Parent then
		Loader.Parent = Parent
	else
		Loader.Parent = Flameware.Services.CoreGui
	end

	ProtectGUI(Loader)
	local Frame = Instance.new("Frame")
	Frame.Size = UDim2.new(0, 320, 0, 90)
	Frame.Position = UDim2.new(0.5, -160, 0.5, -45)
	Frame.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
	Frame.BackgroundTransparency = 0.25
	Frame.BorderSizePixel = 0
	Frame.Parent = Loader

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.Parent = Frame

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Color = Color3.fromRGB(79, 79, 79)
	UIStroke.Thickness = 2
	UIStroke.Transparency = 0.25
	UIStroke.Parent = Frame

	local TextLabel = Instance.new("TextLabel")
	TextLabel.Size = UDim2.new(0, 200, 0, 55)
	TextLabel.Position = UDim2.new(0, 75, 0.5, -27.5)
	TextLabel.BackgroundTransparency = 1

	local RandomIndex = math.random(1, #SweetThings)
	local Speech = SweetThings[RandomIndex]
	TextLabel.Text = Speech
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.GothamBlack
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.Parent = Frame

	local UIGradient = Instance.new("UIGradient")
	UIGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 190)),
		ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(190, 190, 200))
	})
	UIGradient.Rotation = 60
	UIGradient.Parent = TextLabel

	local BlurTween = Flameware.Services.Tweening:Create(Blur, TweenInfo.new(0.5, Enum.EasingStyle.Quad), { Size = 25 })
	local PopTween = Flameware.Services.Tweening:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 340, 0, 100),
		Position = UDim2.new(0.5, -170, 0.5, -50)
	})

	BlurTween:Play()
	PopTween:Play()

	local StartTime = tick()
	local Timeout = 10
	
	repeat
		task.wait(0.45)
		if tick() - StartTime >= Timeout then
			break
		end
	until Library and Library.InstanceExist and Library:InstanceExist()

	local ReturnBlur = Flameware.Services.Tweening:Create(Blur, TweenInfo.new(0.8, Enum.EasingStyle.Quad), { Size = 0 })
	local Disappear = Flameware.Services.Tweening:Create(Frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad), { BackgroundTransparency = 1 })

	ReturnBlur:Play()
	Disappear:Play()

	task.wait(0.12)
	Loader:Destroy()
end

task.spawn(LoaderUI)

-- // Files
shared.Loader = shared.Loader or {}

shared.Loader.Files = {
	["World Of Stands"] = { File = "WOS/File.lua", CreatorId = 6069796 },
	["Swordflare RPG"] = { File = "SFR/File.lua", CreatorId = 477713117 },
}

-- // Anti Idle Support
task.spawn(function()
    if not shared._1 then
        if Flameware.Services.Connections then
            -- warn('[Flameh]: AFK Method: "Connections"');
            for _, Con in pairs(Flameware.Services.Connections(LocalPlayer.Idled)) do
                if Con.Disable then Con:Disable();
                elseif Con.Disconnect then
                    Con:Disconnect();
                end
            end
        else
            -- warn('[Flameh]: AFK Method: "VirtualInputs"');
            Anti_Idle = LocalPlayer.Idled:Connect(function()
                Flameware.Services.VirtualUser:CaptureController();
                Flameware.Services.VirtualUser:ClickButton2(Vector2.new());
            end)
        end
        shared._1 = true;
    end
end)

local T,J do local M,p,V,z,Q,I,b,D,Y,a=math.floor,math.random,table.remove,string.char,0,2,{},{},0,{}for T=1,256,1 do(a)[T]=T end repeat local T=p(1,#a)local J=V(a,T);(D)[J]=z(J-1)until#a==0 local i={}local function u()if#i==0 then Q=(Q*45+23992141827783)%35184372088832 repeat I=(I*192)%257 until I~=1 local T=I%32 local J=(M(Q/2^(13-(I-T)/32))%4294967296.0)/2^T local p=M((J%1)*4294967296.0)+M(J)local V=p%65536 local z=(p-V)/65536 local b=V%256 local D=(V-b)/256 local Y=z%256 local a=(z-Y)/256 i={b;D,Y,a}end return table.remove(i)end local w={}J=setmetatable({},{__index=w;__metatable=false})function T(J,M)local p=w if(p)[M]then else i={}local T=D Q=M%35184372088832 I=M%255+2 local V=string.len(J);(p)[M]=``local z=48 for V=1,V,1 do z=((string.byte(J,V)+u())+z)%256;(p)[M]=(p)[M]..(T)[z+1]end end return M end end for M,p in pairs(((shared)[(J)[T(`\221w\253\163<2`,22774459807934)]])[(J)[T(`mf\255,\234`,23959918765820)]])do local V=false repeat if(p)[(J)[T(`\031\024\131\228\146\096\029}\254`,11588284443190)]]==0 or(p)[(J)[T(`t:i\140\196\143/\239\203`,30157425357052)]]==(game)[(J)[T(`j\245\193(~\203\164\129N`,20807515451904)]]then local z local Q=pcall(function()z=game:HttpGet((J)[T(`\246AR1\096\159j\157\197?uiA\1414\171\220\134 \154\241\142\254\180\230\143f\031E\149\135\167\248\1776\158\240X\245\031\180*e\204N\198Q\211\158\139n$b\142\137\167\020\209\241K\153\201\025\201*\242\161U`,31073922290972)]..((p)[(J)[T(`_\2217\151`,33499164587702)]]..((J)[T(`[\177\234`,7060668964216)]..(os)[(J)[T(`\214\168Y\188`,2963476851332)]]())))end)if not Q or not z then warn((J)[T(`\231\020\231\203\161\2260MP\1847\001\232\t9\208\161\213\020=\180x\146\247\207\145`,30883839035734)],M)V=true break end;(task)[(J)[T(`\130\018\253\018n`,20065893314111)]](function()pcall(loadstring(z))end);((getgenv()))[(J)[T(`B\1930\202\145\248\019?\248'I-t\230`,4977620496453)]]=true warn((J)[T(`\0049\224ArU\128(\152\006\249\vg\248\177,\232`,27264350550901)],M)break end V=true until true if not V then break end end
