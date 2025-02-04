Play.Scenes[2] = Scene.new(World.Map[5])
Play.Scenes[2].tickGoal = 800
Play.Scenes[2].Hour = Noon
Play.Scenes[2].Min = 0
Play.Scenes[2].Actors[1] = Actor.new(Tracey,7.6,4.7)
Play.Scenes[2].Actors[2] = Actor.new(R_Guitar_L,7.6,4.7)
Play.Scenes[2].transition = function(self,t)
	if(t < 2) then
		bs = sound.getSound("EpT1_B")
		if Play.unmuteAfter then
			bs:play()
		end
	elseif(t < self.tickGoal) then
		
	else
		bs:stop()
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
