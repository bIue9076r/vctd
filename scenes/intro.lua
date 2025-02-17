Play.Scenes[1] = Scene.new(World.Map[1])
Play.Scenes[1].tickGoal = 800
Play.Scenes[1].Actors[1] = Actor.new(Karly,0,12)
Play.Scenes[1].transition = function(self,t)
	if(t < 200) then
		if t == 1 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(4),
				n = Karly,
				v = "Normal",
			}
		end
		self.Actors[1].x = Scene.lerp(0,21,t/200)
		if t == 199 then
			self.Actors[1] = nil
		end
	elseif(t < 300) then
		self.Hour = Scene.lerp(0,7.5,(t - 200)/100)
		self.Min = math.floor(60 * (self.Hour - math.floor(self.Hour)))
		self.Hour = math.floor(self.Hour)
	elseif(t < 800) then
		
	else
		if Play.unmuteAfter then
			muted = false
			plyed = false
			soundTick:reset()
			bs = sound.getSound(SongListSelect(SongList))
			song_silence = false
		end
		GameState = Intro
		Play.ticker:reset()
	end
end
