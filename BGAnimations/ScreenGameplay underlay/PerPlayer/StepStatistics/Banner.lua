local player = ...
local NoteFieldIsCentered = (GetNotefieldX(player) == _screen.cx)
local IsUltraWide = (GetScreenAspectRatio() > 21/9)
local stylename = GAMESTATE:GetCurrentStyle():GetName()

return Def.Banner{
	CurrentSongChangedMessageCommand=function(self)
		self:LoadFromSong( GAMESTATE:GetCurrentSong() )
		self:setsize(418,164):zoom(0.4)
		if stylename ~= "double" then
			self:xy(70 * (player==PLAYER_1 and 1 or -1), -200)
			
			self:SetDecodeMovie(ThemePrefs.Get("AnimateBanners"))

			-- offset a bit more when NoteFieldIsCentered
			if NoteFieldIsCentered and IsUsingWideScreen() then
				self:x( 72 * (player==PLAYER_1 and 1 or -1) )
			end

			-- ultrawide and both players joined
			if IsUltraWide and #GAMESTATE:GetHumanPlayers() > 1 then
				self:x(self:GetX() * -1)
			end
		else
			self:xy(GetNotefieldWidth() - 140,20 - 120)
		end
	end
}