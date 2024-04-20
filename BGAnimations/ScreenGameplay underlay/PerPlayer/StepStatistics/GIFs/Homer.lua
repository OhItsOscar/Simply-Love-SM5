local function updateFunction(self, delta)		
	if GAMESTATE:GetSongFreeze() then
	self:GetChild("die"):visible(true)
	self:GetChild("dielit"):visible(false)
	else
	self:GetChild("dielit"):visible(true)
	self:GetChild("die"):visible(false)
	end
end

return Def.ActorFrame {
		Def.Sprite {
		Name="dielit",
		Texture="dielit 8x8",
		Frames = Sprite.LinearFrames(62, 8),
		OnCommand=function(self)
			self:effectclock("beat")
			self:cropright(0.02)
			self:cropleft(0.02)
			self:croptop(0.02)
			self:cropbottom(0.02)
			self:zoom(3)
		end
		},

		Def.Sprite {
		Texture="die 1x1.png",
		Name="die",
		Frames = Sprite.LinearFrames(1, 1),
		OnCommand=function(self)
			self:effectclock("beat")
			self:cropright(0.02)
			self:cropleft(0.02)
			self:croptop(0.02)
			self:cropbottom(0.02)
			self:zoom(3)
		end
		},
		
	InitCommand=function(self)
		self:SetUpdateFunction(updateFunction)
	end
}