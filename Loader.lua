-- // This script is protected by license: https://github.com/FlamesW/wtf/blob/main/LICENSE.md
---------------------------------------------------------------------------------------------------
--  ______ _                   __          __
-- |  ____| |                  \ \        / /
-- | |__  | | __ _ _ __ ___   __\ \  /\  / /_ _ _ __ ___
-- |  __| | |/ _` | '_ ` _ \ / _ \ \/  \/ / _` | '__/ _ \
-- | |    | | (_| | | | | | |  __/\  /\  / (_| | | |  __/
-- |_|    |_|\__,_|_| |_| |_|\___| \/  \/ \__,_|_|  \___|
---------------------------------------------------------------------------------------------------
-- // >Loader Build @1.42
local Flameware = { GetService = function(service)
	return cloneref and cloneref(game:GetService(service)) or game:GetService(service)
end}

-- // @Files
local Files = {
	["World Of Stands"] = { File = "WOS/File.lua", Universe = 2544520106 },
	["Swordflare RPG"] = { File = "SFR/File.lua", Universe = 9680456293 },
}

-- // @Maintenance
local In_Maintenance = true;

-- // @Flameh_Engine.luau
shared.Function_Manager = "https://raw.githubusercontent.com/FlamesW/FunctionManager/refs/heads/home/Module.luau";
local a=Flameware.GetService'Players'local b=a.LocalPlayer or a.PlayerAdded:Wait()local c,d,e,f,g=b.Character or b.CharacterAdded:Wait(),game.HttpGetAsync,task.spawn,protectgui or(syn and syn.protect_gui)or function()end,'https://raw.githubusercontent.com/FlamesW/wtf/'Flameware.Services={VirtualUser=Flameware.GetService'VirtualUser',CoreGui=Flameware.GetService'CoreGui',Connections=getconnections or get_signal_cons}shared.Flameh_Icon=shared.Flameh_Icon or'rbxassetid://129855843582244'shared.IntroSounds={'rbxassetid://00000'}shared.__Invite=shared.__Invite or'Enjoy:)~'if not game:IsLoaded()then local h=Instance.new'Message'h.Parent=Flameware.Services.CoreGui h.Text='Flameh is waiting for the game to load~'game.Loaded:Wait()NotLoaded:Destroy()end if In_Maintenance==true then b:Kick'Flameh is temporarily closed, Try again later~'return end if Library and Library.InstanceExist and Library:InstanceExist()then Library:Notify('Flameh is already loaded~',5)return end local function Service()if getgenv().Flameh_Service then return end if Flameware.Services.Connections then for h,i in pairs(Flameware.Services.Connections(b.Idled))do if i.Disable then i:Disable()elseif i.Disconnect then i:Disconnect()end end else b.Idled:Connect(function()Flameware.Services.VirtualUser:CaptureController()Flameware.Services.VirtualUser:ClickButton2(Vector2.new())end)end getgenv().Flameh_Service=true end for h,i in pairs(Files)do if i.Universe==game.GameId then local j=g..'refs/heads/main/Games/'..i.File..'?nocache='..tostring(os.clock()*10000)e(function()local k=d(game,j)if k then getgenv().Flameh_Library=true loadstring(k)'@%#*#)&$@#%*&^@#@%)*&@#%'e(Service)warn('[Flameh]: Loaded:',h)else warn('[Flameh]: Failed to fetch:',h)end end)end end
