Play.Scenes[6] = Scene.new(World.Map[5])
Play.Scenes[6].tickGoal = 1500
Play.Scenes[6].Next = Fade
Play.Scenes[6].Hour = Noon
Play.Scenes[6].Min = 0
Play.Scenes[6].Actors[1] = Actor.new(Vivian,10.8,2.9)
Play.Scenes[6].Actors[2] = Actor.new(PartyHat,10.8,2.85)
Play.Scenes[6].Actors[3] = Actor.new(Sean,14.6,9.7)
Play.Scenes[6].Actors[4] = Actor.new(Ella,17.6,10.7)
Play.Scenes[6].Actors[5] = Actor.new(Mollie,18.3,8.3)
Play.Scenes[6].Actors[6] = Actor.new(Brian,18.8,3.4)
Play.Scenes[6].Actors[7] = Actor.new(Lassie,6.8,11.8)
Play.Scenes[6].Actors[8] = Actor.new(Zoey,4.2,11.8)
Play.Scenes[6].Actors[9] = Actor.new(Karina,4.5,10.0)
Play.Scenes[6].Actors[10] = Actor.new(Zach,16.8,3.4)
Play.Scenes[6].Actors[11] = Actor.new(Jami,15.6,7.6)
Play.Scenes[6].Actors[12] = Actor.new(Wilkie,8.8,7.7)
Play.Scenes[6].Actors[13] = Actor.new(Fredrick,10.4,7.7)
Play.Scenes[6].Actors[14] = Actor.new(Rachel,3.6,6.7)
Play.Scenes[6].Actors[15] = Actor.new(R_Guitar_L,3.6,6.7)
Play.Scenes[6].Actors[16] = Actor.new(Amp,2.6,5.7)
Play.Scenes[6].Actors[17] = Actor.new(Varisa,7.4,3.1)
Play.Scenes[6].Actors[18] = Actor.new(B_Guitar_L,7.4,3.1)
Play.Scenes[6].Actors[19] = Actor.new(Mic,7.9,3.2)
Play.Scenes[6].Actors[20] = Actor.new(Amp,6.4,2.1)
Play.Scenes[6].Actors[21] = Actor.new(Tracey,3.4,2.7)
Play.Scenes[6].Actors[22] = Actor.new(Ride_Cymbal,2.6,2.9)
Play.Scenes[6].Actors[23] = Actor.new(Crash_Cymbal,4.2,2.9)
Play.Scenes[6].Actors[24] = Actor.new(Snare_Drum,3.8,3.3)
Play.Scenes[6].Actors[25] = Actor.new(Tom_Drum,3.0,3.3)
Play.Scenes[6].Actors[26] = Actor.new(Bass_Drum,3.4,3.5)

Play.Scenes[6].transition = function(self,t)
	-- if(t < 1.875) then
	-- 	if not self.vars["Once1"] then
	-- 		self:Say(String.get(7),Tracey)
	-- 		self.vars["Once1"] = true
	-- 	end
	--[[ else]]if(t < self.tickGoal) then
		
	else
		Voices[self.dtbl.v]:pause()
		Voices[self.dtbl.v]:seek(0)
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
		self:clearVars()
		self.dticker:reset()
		Play.ticker:reset()
	end
end
