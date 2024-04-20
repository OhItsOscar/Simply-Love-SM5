t = Def.ActorFrame {}

t[#t+1] = Def.Sprite {
	Texture="bob 5x4.png",
	Frames = Sprite.LinearFrames(18, 2),
	OnCommand=function(self)
		self:effectclock("beat")
		self:cropright(0.02)
		self:cropleft(0.02)
		self:croptop(0.02)
		self:cropbottom(0.02)
		self:zoom(0.8)
	end
}

return t