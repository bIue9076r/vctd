Play.Scenes[2] = Scene.new(World.Map[5])
Play.Scenes[2].tickGoal = 800
Play.Scenes[2].Hour = Noon
Play.Scenes[2].Min = 0
Play.Scenes[2].Actors[1] = Actor.new(Tracey,5.6,7.7)
Play.Scenes[2].Actors[2] = Actor.new(R_Guitar_L,5.6,7.7)
Play.Scenes[2].Actors[3] = Actor.new(Amp,4.6,6.7)
Play.Scenes[2].Actors[4] = Actor.new(Varisa,9.6,8.7)
Play.Scenes[2].Actors[5] = Actor.new(B_Guitar_L,9.6,8.7)
Play.Scenes[2].Actors[6] = Actor.new(Mic,10.1,9)
Play.Scenes[2].Actors[7] = Actor.new(Amp,10.6,7.7)
Play.Scenes[2].Actors[8] = Actor.new(Rachel,7.6,4.7)

local sbs_1, sbs_2, sbs_3, sbs_4
Play.Scenes[2].transition = function(self,t)
	if(t < 2) then
		sbs_1 = sound.getSound("EpT1_B")
		sbs_2 = sound.getSound("EpT1_L")
		sbs_3 = sound.getSound("EpT1_G")
		sbs_4 = sound.getSound("EpT1_D")
		if Play.unmuteAfter then
			sbs_1:seek(15)
			sbs_2:seek(15)
			sbs_3:seek(15)
			sbs_4:seek(15)
			
			sbs_1:play()
			sbs_2:play()
			sbs_3:play()
			sbs_4:play()
		end
	elseif(t < self.tickGoal) then
		
	else
		sbs_1:stop()
		sbs_2:stop()
		sbs_3:stop()
		sbs_4:stop()
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
