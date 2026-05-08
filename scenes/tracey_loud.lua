Play.Scenes[3] = Scene.new(World.Map[4])
Play.Scenes[3].tickGoal = 14.5
Play.Scenes[3].Next = Intro
Play.Scenes[3].Hour = Noon
Play.Scenes[3].Min = 0
Play.Scenes[3].Actors[1] = Actor.new(Tracey,15.2,6.9)
Play.Scenes[3].Actors[2] = Actor.new(Ride_Cymbal,15.2-0.8,6.9+0.2)
Play.Scenes[3].Actors[3] = Actor.new(Crash_Cymbal,15.2+0.8,6.9+0.2)
Play.Scenes[3].Actors[4] = Actor.new(Snare_Drum,15.2+0.4,6.9+0.6)
Play.Scenes[3].Actors[5] = Actor.new(Tom_Drum,15.2-0.4,6.9+0.6)
Play.Scenes[3].Actors[6] = Actor.new(Bass_Drum,15.2+0.0,6.9+0.8)

Play.Scenes[3].Actors[7] = Actor.new(Poster_Pu,12,0.5)
Play.Scenes[3].Actors[8] = Actor.new(Poster_Wh,19,0.5)

Play.Scenes[3].Actors[9] = Actor.new(Bed_1_1,20,2)
Play.Scenes[3].Actors[10] = Actor.new(Bed_1_2,21,2)
Play.Scenes[3].Actors[11] = Actor.new(Bed_1_3,20,3)
Play.Scenes[3].Actors[12] = Actor.new(Bed_1_4,21,3)
Play.Scenes[3].Actors[13] = Actor.new(Bed_1_5,20,4)
Play.Scenes[3].Actors[14] = Actor.new(Bed_1_6,21,4)

Play.Scenes[3].Actors[15] = Actor.new(Zoey,8.5,6.8)

local sbs
Play.Scenes[3].transition = function(self,t)
	if(t < 8.5) then
		if not self.vars["Once1"] then
			self.Actors[15].x = -8.5
			sbs = sound.getSound("EpT3_D")
			if Play.unmuteAfter then
				sbs:seek(15)
				sbs:play()
			end
			self.vars["Once1"] = true
		end
		self.Actors[1].y = 6.9 + math.abs(math.sin(math.pi * (t*2))/6)
	elseif(t < 11) then
		if not self.vars["Once2"] then
			sbs:stop()
			self.Actors[15].x = 8.5
			self.Actors[15].y = 6.8
			self:Say(String.get(5), Zoey)
			self.vars["Once2"] = true
		end
	elseif(t < 12.25) then
		if not self.vars["Once3"] then
			self:Say(String.get(6), Rachel)
			self.vars["Once3"] = true
		end
	elseif(t < self.tickGoal) then
		
	else
		sbs:stop()
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
