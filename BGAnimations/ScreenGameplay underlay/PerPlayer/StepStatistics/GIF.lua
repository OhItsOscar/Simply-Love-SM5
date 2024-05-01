-- Basically TaroNuke's catJAM mod

local player = ...
local pn = ToEnumShortString(player)
local stylename = GAMESTATE:GetCurrentStyle():GetName()
local mods = SL[pn].ActiveModifiers
if (mods.StepStatsExtra == "ErrorStats" or mods.StepStatsExtra == "None") then return end

local c = PREFSMAN:GetPreference("Center1Player")
local ar = GetScreenAspectRatio()
local ws = IsUsingWideScreen()
local x = (c and -12 or -25)*ar*(pn=="P1" and 1 or -1)
if ws and ar < 1.7 then x = x +5.5 end

local y = -57
local zoom 	= (ws and not c) and 0.5 or 0.4	
		
t = Def.ActorFrame {
	OnCommand=function(self)
		if stylename ~= "double" then
			self:xy(x,y)	
			self:zoom(zoom)
		else
			self:xy(380,-200)	
			self:zoom(0.45)
		end
	end,
	LoadActor("./GIFs/".. mods.StepStatsExtra .. ".lua", player)	
}

return t