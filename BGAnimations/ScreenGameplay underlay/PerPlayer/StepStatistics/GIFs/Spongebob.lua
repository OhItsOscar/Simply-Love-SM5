local player = ...
local pn = tonumber(player:sub(-1))

local function updateFunction(self, delta)
	local actor1 = self:GetChild("ponge")
	local actor2 = self:GetChild("spongebob")
	if GAMESTATE:GetSongFreeze() then
		self:GetChild("ponge"):visible(true)
		self:GetChild("spongebob"):visible(false)
	else
		self:GetChild("spongebob"):visible(true)
		self:GetChild("ponge"):visible(false)
	end
end

return Def.ActorFrame {
		Def.Sprite {
		Name="spongebob",
		Texture="spongebob 16x17.png",
		Frames = Sprite.LinearFrames(266, 16),
		OnCommand=function(self)
			self:effectclock("beat")
			self:cropright(0.02)
			self:cropleft(0.02)
			self:croptop(0.02)
			self:cropbottom(0.02)
			self:zoom(4)
		end
		},

		Def.Sprite {
		Texture="sponj 1x1.png",
		Name="ponge",
		Frames = Sprite.LinearFrames(1, 1),
		OnCommand=function(self)
			self:effectclock("beat")
			self:cropright(0.02)
			self:cropleft(0.02)
			self:croptop(0.02)
			self:cropbottom(0.02)
			self:zoom(4)
		end
		},
		
	InitCommand=function(self)
		self:SetUpdateFunction(updateFunction)
	end
}