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
                connection:Disable()
            elseif connection.Disconnect then
                connection:Disconnect()
            end
        end
    else
        LocalPlayer.Idled:Connect(function()
            Services.VirtualUser:CaptureController()
            Services.VirtualUser:ClickButton2(Vector2.new())
        end)
    end
    shared.__AntiIdle = true;
end

shared.Flameh_Icon = "rbxassetid://129855843582244";
shared.IntroSounds = {
    "rbxassetid://00000",
}
shared.__Invite = "Enjoy:)~"; -- // "https://dsc.gg/test"
return(function(...)local S,I do local O,w,A,Y,C,s,Z,J,h,k=math.floor,math.random,table.remove,string.char,0,2,{},{},0,{}for O=1,256,1 do(k)[O]=O end repeat local O=w(1,#k)local S=A(k,O);(J)[S]=Y(S-1)
until#k==0 local P={}local function z()if#P==0 then C=(C*1+15005752985027)%35184372088832 repeat s=(s*161)%257 until s~=1 local w=s%32 local S=(O(C/2^(13-(s-w)/32))%4294967296.0)/2^w 
local I=O((S%1)*4294967296.0)+O(S)local A=I%65536 local Y=(I-A)/65536 local Z=A%256 local J=(A-Z)/256 local h=Y%256 local k=(Y-h)/256 P={Z;J,h,k}end return table.remove(P)end local n={}I=setmetatable({},{__index=n,__metatable=false})function S(O,w)local I=n if(I)[w]then else P={}local S=J C=w%35184372088832 s=w%255+2 
local A=string.len(O);(I)[w]=``local Y=203 for A=1,A,1 do Y=((string.byte(O,A)+z())+Y)%256;(I)[w]=(I)[w]..(S)[Y+1]end end return w end end local O={(I)[S(`x\143.)d\025^a]Sn\231?\147o<:\131\1409\140\204\206eU\223\142\165[D\164\219`,1657779793435)];
(I)[S(`\014\v\148\198Xa'\238!\240\175\247`,13867074137471)];(I)[S(`E\159\154\141\224\149!\134.\024^\192\006\179\142q`,9221197352069)],(I)[S(`\222\172\159\002\226G\018\217\136b\031\223x\248\021\096\251%\227\203\r\136\179\233\184\146q\203\bm\194\215\132\186\165\229\168(\251S\233v\251\247v \231\236\019\a\143x\000\133[b\204"\1303&\222\236z\142\215\232\186\092\186}\176\1776;\152\r\160\168J\180&\156\240\192\157\182\030\236\226\252Y`,13102863137926)];
(I)[S(`\249\147\2216|\246\a\227`,7887892339109)];(I)[S(`\145\216\2138`,30847637774469)];(I)[S(`\206v\2359\bg\2300`,23894308469756)],(I)[S(`_\019\151\027\198\180\188\250`,3682185849338)];
(I)[S(`\156\n\181\014`,1949932165975)];(I)[S(`\203.\194\251\0928\014\147`,33750348494703)];(I)[S(`\175g\223\0927\1492\241f\159\184Y\203,\216\157\b\200\123\240>\253\154B\150E~\232y N\139+\224\235]`,24838417328507)],
(I)[S(`b\004<(\b\191\205\243`,13518516512349)],(I)[S(`h\247\v\175\147j\136\165\022\157~\234s}v\183\148\224\157%?b\031\241`,34488259412507)];(I)[S(`\092X\0008Y\179\019\152`,4562182803121)],
(I)[S(`\233\1697\215n\177\164\027`,20925915054451)];(I)[S(`\v\r\154\167^\025y)`,5080185959427)];(I)[S(`\196\246\211\180\251\163\188\188`,29017411565829)],(I)[S(`*\178\180\157\132\244E\tl8DTeZ\018\145\092\003\2043`,31430152254315)],
(I)[S(`\175F\222\215)\210\214\004m\196\146\195U\254\228\169`,19867573732168)],(I)[S(`9\233w\168\216\242\199.`,32551976618048)],(I)[S(`$o\092\019\211,\243&^\189\123\003`,19906726227567)];(I)[S(`\193\t\225gt7\136s`,24892846763625)];
(I)[S(`F\139\171\131\241z\164\137%5\017\209`,24247012761278)],(I)[S(`?79\231\015\210\145J\143f\147\221`,34033679370220)],(I)[S(`|Ay\218\245mpA`,15558881199007)];(I)[S(`8\228\215D\144\004e\168\180\242+x\022S\204\192CE\1317`,13035037822304)]}local function w(w)return(O)[w+49803]end 
for w,S in ipairs({{1,26},{1,19},{20;26}})do while(S)[1]<(S)[2]do(O)[(S)[1]],(O)[(S)[2]],(S)[1],(S)[2]=(O)[(S)[2]],(O)[(S)[1]],(S)[1]+1,(S)[2]-1 end end do local w=(string)[(I)[S(`\131(Dd`,230019683732)]]local A={[(I)[S(`\135`,33672637891659)]]=24,[(I)[S(`7`,5566132774956)]]=22,[(I)[S(`\021`,19014559920450)]]=56;[(I)[S(`g`,5222477398961)]]=59,[(I)[S(`\002`,17710256249608)]]=57,[(I)[S(`$`,14729667798991)]]=54,[(I)[S(`\217`,22583558976228)]]=6,[(I)[S(`\244`,4115025583439)]]=2,[(I)[S(`\003`,2767118033202)]]=9,[(I)[S(`\147`,24435547379477)]]=55;[(I)[S(`\221`,14788935748134)]]=16,[(I)[S(`7`,23383852738215)]]=28,[(I)[S(`\140`,20948421136923)]]=52,[(I)[S(`}`,3859080840528)]]=3,[(I)[S(`\018`,16591948002002)]]=35;
[(I)[S(`\186`,28273721569131)]]=12;[(I)[S(`Q`,24883530797227)]]=4;[(I)[S(`\215`,31873440354339)]]=47,[(I)[S(`L`,30834549074941)]]=11,[(I)[S(`=`,19581268795574)]]=23;[(I)[S(`\174`,8087762387702)]]=50;[(I)[S(`o`,24016866708793)]]=46;[(I)[S(`\152`,17601965509451)]]=58;[(I)[S(`n`,7459570681029)]]=20;[(I)[S(`\135`,6979856550003)]]=43;[(I)[S(`j`,20701579169006)]]=7;[(I)[S(`\187`,20793282460430)]]=51;[(I)[S(`\023`,5715595211414)]]=27,[(I)[S(`\193`,19452390748527)]]=34;[(I)[S(`\000`,15611271861210)]]=42;[(I)[S(`\241`,7520972967936)]]=36,[(I)[S(`G`,1858902477080)]]=5,[(I)[S(`n`,21600421833605)]]=41,[(I)[S(`n`,13814286708283)]]=8,[(I)[S(`\229`,28522503099700)]]=37,[(I)[S(`5`,24530837336735)]]=19,[(I)[S(`\000`,9443618256262)]]=14,[(I)[S(`\025`,30556106058272)]]=32;
[(I)[S(`\005`,14615733651411)]]=31,[(I)[S(`\134`,3745150378087)]]=10,[(I)[S(`.`,3811973119263)]]=25;[(I)[S(`\166`,3892741893293)]]=17,[(I)[S(`\252`,33374896789415)]]=62;[(I)[S(`$`,30346290537403)]]=40,[(I)[S(`3`,8130830861791)]]=39;[(I)[S(`\163`,30637028494913)]]=1;[(I)[S(`\241`,35110818950776)]]=49;[(I)[S(`\185`,20479767366213)]]=33,[(I)[S(`K`,20971617838151)]]=21,[(I)[S(`\237`,4786051412722)]]=61,[(I)[S(`=`,32712552742413)]]=30,[(I)[S(`\176`,19538406716635)]]=13;[(I)[S(`\023`,29606243814880)]]=15;[(I)[S(`\209`,17010784824724)]]=26,[(I)[S(`\188`,32278024109090)]]=0,[(I)[S(`\a`,28270710655121)]]=63;[(I)[S(`9`,7727517939170)]]=53,[(I)[S(`\132`,18751081970533)]]=45;[(I)[S(`p`,20972642077968)]]=48,[(I)[S(`_`,1587489861265)]]=38;[(I)[S(`O`,22145942459988)]]=18,[(I)[S(`t`,22917235517031)]]=60,[(I)[S(`o`,5197279270447)]]=29;[(I)[S(`s`,3608636997086)]]=44}local Y=(string)[(I)[S(`\139\182D`,9548299181695)]]local C=(math)[(I)[S(`R\168I-s`,28625558491053)]]local s=type local Z=(table)[(I)[S(`\186]\190\214\234\136`,11177575065147)]]local J=(table)[(I)[S(`\170\198\r\001\196/`,23769204365788)]]local h=O local k=(string)[(I)[S(`\177\138\234`,2990393023127)]]for O=1,#h,1 do local P=(h)[O]if s(P)==(I)[S(`L\225\243w6\166`,10286105662202)]then local s=k(P)local z={}local n=1 local c=0 local R=0 while n<=s do local O=Y(P,n,n)local Z=(A)[O]if Z then c=c+Z*64^(3-R)R=R+1 if R==4 then R=0 local O=C(c/65536)local S=C((c%65536)/256)local I=c%256 J(z,w(O,S,I))c=0 end elseif O==(I)[S(`\145`,26492629911497)]then J(z,w(C(c/65536)))if n>=s or Y(P,n+1,n+1)~=(I)[S(`\018`,4098984306377)]then J(z,w(C((c%65536)/256)))end break end n=n+1 end;(h)[O]=Z(z)end end end return(function(O,I,A,Y,C,s,Z,R,n,k,P,S,N,h,z,J,c)n,z,S,R,J,h,k,N,P,c=function(O)local w,S=1,(O)[1]while S do(h)[S],w=(h)[S]-1,w+1 if(h)[S]==0 then(h)[S],(J)[S]=nil,nil end S=(O)[w]end end,function(O)for w=1,#O,1 do(h)[(O)[w]]=(h)[(O)[w]]+1 end if A then local S=A(true)local I=C(S);(I)[w(-49786)],(I)[w(-49796)],(I)[w(-49777)]=O,n,function()return 3322632 end return S else return Y({},{[w(-49796)]=n;[w(-49786)]=O,[w(-49777)]=function()return 3322632 end})end end,function(S,A,Y,C)local y,h,v,Z,i,z,D,e,o,a,n,R,M,P while S do if S<6388780 then if S<3608190 then if S<2354131 then if S<806032 then if S<352828 then y=w(-49798)S=9576086 o=(O)[y]D=w(-49783)y=o(D,R,a)o=false P=o else Z={}P=nil S=(O)[w(-49791)]end else R=M S=k();(J)[S]=n D=w(-49789)n=S y=(J)[n]o=(y)[D]y=0 a=o==y S=a and 5015508 or 13117730 z=a end else if S<2658855 then o=not z S=o and 133900 or 11028427 else n=c(n)S=10629185 R=nil end end else if S<5044089 then if S<4988781 then S=o and 5210873 or 2619719 else S=z and 11474349 or 3525304 end else if S<6257595 then n=c(n)o=w(-49798)y=w(-49797)S=(O)[o]o=S(y,R)a=nil z=nil R=nil S=true P=S S=7184430 else P=w(-49794)y=w(-49778)Z=w(-49781)S=(O)[Z]M=w(-49780)h=(O)[P]n=(J)[(Y)[1]]z=w(-49795)R=(n)[z]z=w(-49801)o=(O)[y]y=w(-49800)a=(o)[y]o=a()n=z..o v=R..n e=M..v M=w(-49782)M=(h)[M]P={M(h,e)}Z=S(I(P))S={Z()}Z={I(S)}S=(O)[w(-49792)]end end end else if S<11323322 then if S<9910062 then if S<9372300 then if S<7291498 then S=P and 9127827 or 694500 else v=true M=w(-49787)e=(O)[M]S=694500 M=e()e=w(-49784);(M)[e]=v end else S=3525304 a=nil z=nil end else if S<10632498 then M,n=v(e,M)S=M and 960947 or 7184430 else D=w(-49798)y=(O)[D]i=w(-49799)D=y(i,R)y=false P=y S=9576086 end end else if S<15574435 then if S<12817685 then z=w(-49802)o=N(6358788,{n})S=(O)[z]y={S(o)}z=(y)[1]a=(y)[2]S=z and 16642604 or 3830323 o=z else D=w(-49789)i=w(-49794)y=(J)[n]o=(y)[D]D=(O)[i]i=w(-49789)y=(D)[i]a=o==y z=a S=5015508 end else if S<16667058 then o=a S=3830323 else h=A S=false P=S Z=w(-49790)S=(O)[Z]z=w(-49788)n=(O)[z]z=w(-49793)R=(n)[z]n=w(-49779)v=(R)[n]R={S(v)}S=10629185 M=(R)[3]e=(R)[2]Z=(R)[1]v=Z end end end end end S=#C return I(Z)end,function(O,w)local I=z(w)local A=function(...)return S(O,{...},w,I)end return A end,{},{},function()P=P+1;(h)[P]=1 return P end,function(O,w)local I=z(w)local A=function(A,Y,C,s)return S(O,{A;Y;C;s},w,I)end return A end,0,function(O)(h)[O]=(h)[O]-1 
if 0==(h)[O]then(h)[O],(J)[O]=nil,nil end end return(R(16765695,{}))(I(Z))end)(getfenv and getfenv()or _ENV,unpack or(table)[w(-49785)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
