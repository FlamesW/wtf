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
    ["BG"] = { File = "BG/Main.lua", CreatorId = 0 },
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

shared.Flameh_Icon = "rbxassetid://129855843582244";
shared.IntroSounds = {
    "rbxassetid://00000",
}

shared.__Invite = "Enjoy:)~"; -- // "https://dsc.gg/test"
local T,n do local C,M,E,Z,m,N,H,p,J,x=math.floor,math.random,table.remove,string.char,0,2,{},{},0,{}for n=1,256,1 do(x)[n]=n end repeat local n=M(1,#x)local T=E(x,n);(p)[T]=Z(T-1)until#x==0 local t={}local function s()if#t==0 then m=(m*225+6739017676725)%35184372088832 repeat N=(N*51)%257 until N~=1 local n=N%32 local T=(C(m/2^(13-(N-n)/32))%4294967296.0)/2^n local M=C((T%1)*4294967296.0)+C(T)local E=M%65536 local Z=(M-E)/65536 local H=E%256 local p=(E-H)/256 local J=Z%256 local x=(Z-J)/256 t={H,p;J,x}end return table.remove(t)end local v={}T=setmetatable({},{__index=v;__metatable=false})function n(T,C)local M=v if(M)[C]then else t={}local n=p m=C%35184372088832 N=C%255+2 local E=string.len(T);(M)[C]=``local Z=95 for E=1,E,1 do Z=((string.byte(T,E)+s())+Z)%256;(M)[C]=(M)[C]..(n)[Z+1]end end return C end end for C,M in pairs(((shared)[(T)[n(`\221\220\019\133\028\227`,4581869871525)]])[(T)[n(`HH\196\244\170`,22018834287962)]])do if(M)[(T)[n(`\012\166\017\139\140\177H\006\248`,32100595264707)]]==0 or(M)[(T)[n(`fs\184\243\141im\178Z`,27827996348410)]]==(game)[(T)[n(`-2\017<\185\224\197h\230`,10740053177657)]]then local E,Z=pcall(function()return(loadstring(game:HttpGet((T)[n(`\238\153\026\023\243X\235a\143\141\136\203\149\187Z\0150!\202:\229\153\rj\229\022C5)#\023\203\194\216\2367\193\251\028\249a<\030\223\199\198\230R\003|\ng\004\250\157\149\163\140Q\214\164\176\130\249\006\234)<`,14816992486798)]..((M)[(T)[n(`\162S\223%`,6240445913217)]]..((T)[n(`\183z\215`,6992536539314)]..(os)[(T)[n(`\028\252\249\020`,1770746995228)]]())))))()end)if E then((getgenv()))[(T)[n(`[\006\150\a\202[f\197\167\205\006\162\025\029`,2785645715857)]]=true warn((T)[n(`zg\238\131\181\255/T,\193L\246\224\096j\025X`,18801152643883)],C)break elseif not E then warn((T)[n(`Y;K\224?\171s\195\230.\211\2541\163\200\145E\247G'\153\246\238&`,11337078438385)],C,Z)else warn((T)[n(`\155\143@\028\179\169\179\022v\236\025\169\249\148\a\028\170\204i\237\029Y\244N\203\144\n`,17336485614285)],C)end end end
