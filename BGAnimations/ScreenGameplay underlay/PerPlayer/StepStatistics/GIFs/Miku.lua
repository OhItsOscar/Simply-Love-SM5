local player = ...
local pn = tonumber(player:sub(-1))

t = Def.ActorFrame {}

t[#t+1] = Def.Sprite {
	Texture="leek 2x3",
	Frames = Sprite.LinearFrames(5, 1),
	OnCommand=function(self)
		self:effectclock("beat")
		self:cropright(0.02)
		self:cropleft(0.02)
		self:croptop(0.02)
		self:cropbottom(0.02)
		self:zoom(0.65)
	end
}

return t