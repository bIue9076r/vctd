Play.Scenes[2] = Scene.new(World.Map[5])
Play.Scenes[2].tickGoal = 800--math.floor(9223372036854775807 / 10000000000000)
Play.Scenes[2].Next = Intro
Play.Scenes[2].Hour = Noon
Play.Scenes[2].Min = 0
Play.Scenes[2].Actors[1] = Actor.new(Rachel,5.6,7.7)
Play.Scenes[2].Actors[2] = Actor.new(R_Guitar_L,5.6,7.7)
Play.Scenes[2].Actors[3] = Actor.new(Amp,4.6,6.7)
Play.Scenes[2].Actors[4] = Actor.new(Varisa,9.6,8.7)
Play.Scenes[2].Actors[5] = Actor.new(B_Guitar_L,9.6,8.7)
Play.Scenes[2].Actors[6] = Actor.new(Mic,10.1,9)
Play.Scenes[2].Actors[7] = Actor.new(Amp,10.6,7.7)
Play.Scenes[2].Actors[8] = Actor.new(Tracey,7.6,4.7)
Play.Scenes[2].Actors[9] = Actor.new(Ride_Cymbal,6.8,4.9)
Play.Scenes[2].Actors[10] = Actor.new(Crash_Cymbal,8.4,4.9)
Play.Scenes[2].Actors[11] = Actor.new(Snare_Drum,8,5.3)
Play.Scenes[2].Actors[12] = Actor.new(Tom_Drum,7.2,5.3)
Play.Scenes[2].Actors[13] = Actor.new(Bass_Drum,7.6,5.5)

Play.Scenes[2].Actors[14] = Actor.new(Zoey,6.6,11.7)
Play.Scenes[2].Actors[15] = Actor.new(Lassie,9.8,12.1)

local sbs_1, sbs_2, sbs_3, sbs_4
Play.Scenes[2].transition = function(self,t)
	self.Actors[8].y = 4.7 + math.abs(math.sin(math.pi * ((t*4)/100))/6)
	if(t < 2) then
		local n = tostring(math.random(1,7))
		sbs_1 = sound.getSound("EpT"..(n).."_B")
		sbs_2 = sound.getSound("EpT"..(n).."_L")
		sbs_3 = sound.getSound("EpT"..(n).."_G")
		sbs_4 = sound.getSound("EpT"..(n).."_D")
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
		GameState = self.Next
		if self.AfterEffect then
			self:AfterEffect()
			self.AfterEffect = nil
		end
		Play.ticker:reset()
	end
end
