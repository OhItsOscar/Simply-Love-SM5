local player = ...
local pn = tonumber(player:sub(-1))

t = Def.ActorFrame {}

t[#t+1] = Def.Sprite {
	Texture="grooving 2x2",
	Frames = Sprite.LinearFrames(4, 2),
	OnCommand=function(self)
		self:effectclock("beat")
		self:cropright(0.02)
		self:cropleft(0.02)
		self:croptop(0.02)
		self:cropbottom(0.02)
		self:zoom(2)
	end
}

return t