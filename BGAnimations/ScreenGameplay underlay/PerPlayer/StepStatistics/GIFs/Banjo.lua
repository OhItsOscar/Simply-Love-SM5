t = Def.ActorFrame {}

t[#t+1] = Def.Sprite {

	Texture="banjo 19x21.png",
	Frames = Sprite.LinearFrames(382, 16),
	OnCommand=function(self)
		self:effectclock("beat")
		self:cropright(0.02)
		self:cropleft(0.02)
		self:croptop(0.02)
		self:cropbottom(0.02)
		self:zoom(4)
	end
	
}

return t