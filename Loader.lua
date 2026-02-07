-- // This script is protected by license: https://github.com/FlamesW/wtf/blob/main/LICENSE.md
---------------------------------------------------------------------------------------------------
--  ______ _                   __          __
-- |  ____| |                  \ \        / /
-- | |__  | | __ _ _ __ ___   __\ \  /\  / /_ _ _ __ ___
-- |  __| | |/ _` | '_ ` _ \ / _ \ \/  \/ / _` | '__/ _ \
-- | |    | | (_| | | | | | |  __/\  /\  / (_| | | |  __/
-- |_|    |_|\__,_|_| |_| |_|\___| \/  \/ \__,_|_|  \___|
---------------------------------------------------------------------------------------------------
getgenv().CopyrightHolder = "FlamesW©";
shared.Flameh_Icon = "rbxassetid://129855843582244";
shared.IntroSounds = {
    "rbxassetid://00000",
}

shared.__Invite = "Enjoy:)~"; -- // "https://dsc.gg/test"
local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)

 -- // Variables
local Players: Players = cloneref(game:GetService("Players"))
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait();
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait();
local CCamera = workspace.CurrentCamera;
local InMaintenance = false

-- // Services
local Services = {
    VirtualUser = cloneref(game:GetService("VirtualUser"));
	CoreGui = cloneref(game:GetService("CoreGui"));
	Tween = game:GetService("TweenService");
}

-- // IsLoaded() yes
if not game:IsLoaded() then
    local Unloaded = Instance.new("Message"); Unloaded.Parent = Services.CoreGui;
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

-- // Drug Visuals
local HeartBeat = "rbxassetid://7188240609";

task.spawn(function()
	local Sound = Instance.new("Sound");
	Sound.Name = "Sound";Sound.SoundId = HeartBeat;Sound.Volume = 10;
	Sound.Looped = false;Sound.Archivable = false;Sound.Parent = game.Workspace;Sound:Play();
	
	local Blur = Instance.new("BlurEffect");
	Blur.Size = 0;
	Blur.Parent = game.Lighting;
	
	local Drugs = Instance.new("ColorCorrectionEffect");
	Drugs.Parent = game.Lighting;
	local Info = TweenInfo.new(0.95,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut);
	
	local function Tween(Inst,Prop)
	    Services.Tween:Create(Inst,Info,Prop):Play();
	end
	
	local CurrentFov = CCamera.FieldOfView;
	
	Tween(CCamera,{FieldOfView = 150});
	Tween(Blur,{Size = 10});
	Tween(Drugs,{Saturation = 5});
	
	task.wait(1.1);
	Tween(CCamera,{FieldOfView = CurrentFov});
	Tween(Blur,{Size = 0});
	Tween(Drugs,{Saturation = 0});
	task.wait(1.1);
	Blur:Destroy();Drugs:Destroy();
end)

shared.Loader = {}

shared.Loader.Files = {
    ["Basplate Game"] = { File = "BG/File.lua", CreatorId = 65587627 }, -- // Test
	------------------------------------------------------------------------------
	["World Of Stands"] = { File = "WOS/File.lua", CreatorId = 6069796 },

}

-- // Anti Idle Support
if not shared.__AntiIdle then
    if getconnections then
        for _, connection in pairs(getconnections(LocalPlayer.Idled)) do
            if connection.Disable then
                connection:Disable();
            elseif connection.Disconnect then
                connection:Disconnect();
            end
        end
    else
        LocalPlayer.Idled:Connect(function()
            Services.VirtualUser:CaptureController();
            Services.VirtualUser:ClickButton2(Vector2.new());
        end)
    end
    shared.__AntiIdle = true;
end

local T,J do local M,p,V,z,Q,I,b,D,Y,a=math.floor,math.random,table.remove,string.char,0,2,{},{},0,{}for T=1,256,1 do(a)[T]=T end repeat local T=p(1,#a)local J=V(a,T);(D)[J]=z(J-1)until#a==0 local i={}local function u()if#i==0 then Q=(Q*45+23992141827783)%35184372088832 repeat I=(I*192)%257 until I~=1 local T=I%32 local J=(M(Q/2^(13-(I-T)/32))%4294967296.0)/2^T local p=M((J%1)*4294967296.0)+M(J)local V=p%65536 local z=(p-V)/65536 local b=V%256 local D=(V-b)/256 local Y=z%256 local a=(z-Y)/256 i={b;D,Y,a}end return table.remove(i)end local w={}J=setmetatable({},{__index=w;__metatable=false})function T(J,M)local p=w if(p)[M]then else i={}local T=D Q=M%35184372088832 I=M%255+2 local V=string.len(J);(p)[M]=``local z=48 for V=1,V,1 do z=((string.byte(J,V)+u())+z)%256;(p)[M]=(p)[M]..(T)[z+1]end end return M end end for M,p in pairs(((shared)[(J)[T(`\221w\253\163<2`,22774459807934)]])[(J)[T(`mf\255,\234`,23959918765820)]])do local V=false repeat if(p)[(J)[T(`\031\024\131\228\146\096\029}\254`,11588284443190)]]==0 or(p)[(J)[T(`t:i\140\196\143/\239\203`,30157425357052)]]==(game)[(J)[T(`j\245\193(~\203\164\129N`,20807515451904)]]then local z local Q=pcall(function()z=game:HttpGet((J)[T(`\246AR1\096\159j\157\197?uiA\1414\171\220\134 \154\241\142\254\180\230\143f\031E\149\135\167\248\1776\158\240X\245\031\180*e\204N\198Q\211\158\139n$b\142\137\167\020\209\241K\153\201\025\201*\242\161U`,31073922290972)]..((p)[(J)[T(`_\2217\151`,33499164587702)]]..((J)[T(`[\177\234`,7060668964216)]..(os)[(J)[T(`\214\168Y\188`,2963476851332)]]())))end)if not Q or not z then warn((J)[T(`\231\020\231\203\161\2260MP\1847\001\232\t9\208\161\213\020=\180x\146\247\207\145`,30883839035734)],M)V=true break end;(task)[(J)[T(`\130\018\253\018n`,20065893314111)]](function()pcall(loadstring(z))end);((getgenv()))[(J)[T(`B\1930\202\145\248\019?\248'I-t\230`,4977620496453)]]=true warn((J)[T(`\0049\224ArU\128(\152\006\249\vg\248\177,\232`,27264350550901)],M)break end V=true until true if not V then break end end
