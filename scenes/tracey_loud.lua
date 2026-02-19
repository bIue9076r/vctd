Play.Scenes[3] = Scene.new(World.Map[4])
Play.Scenes[3].tickGoal = 800
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
	if(t < 2) then
		self.Actors[15].x = -8.5
		sbs = sound.getSound("EpT3_D")
		if Play.unmuteAfter then
			sbs:seek(15)
			sbs:play()
		end
	elseif(t < 600) then
		self.Actors[1].y = 6.9 + math.abs(math.sin(math.pi * ((t*4)/100))/6)
	elseif(t == 600) then
		sbs:stop()
		self.Actors[15].x = 8.5
		self.Actors[15].y = 6.8
		self.IsTalking = true
		self.dtbl = {
			s = String.get(5),
			n = Zoey,
			v = "Normal",
		}
	elseif(t == 700) then
		self.IsTalking = true
		self.dtbl = {
			s = String.get(6),
			n = Rachel,
			v = "Normal",
		}
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
		Play.ticker:reset()
	end
end
