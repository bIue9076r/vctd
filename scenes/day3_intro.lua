Play.Scenes[5] = Scene.new(World.Map[10])
Play.Scenes[5].tickGoal = 500
Play.Scenes[5].Next = Fade
Play.Scenes[5].Hour = Day
Play.Scenes[5].Min = 0
Play.Scenes[5].darkness = 0

Play.Scenes[5].Actors[1] = Actor.new(Poster_Bl,10.5,0.5)
Play.Scenes[5].Actors[2] = Actor.new(Poster_Pu,12,0.25)
Play.Scenes[5].Actors[3] = Actor.new(Poster_Or,13.5,0.75)
Play.Scenes[5].Actors[4] = Actor.new(Flag,19,0.5)

Play.Scenes[5].Actors[5] = Actor.new(Bed_1_1,20,2)
Play.Scenes[5].Actors[6] = Actor.new(Bed_1_2,21,2)
Play.Scenes[5].Actors[7] = Actor.new(Bed_1_3,20,3)
Play.Scenes[5].Actors[8] = Actor.new(Bed_1_4,21,3)
Play.Scenes[5].Actors[9] = Actor.new(Bed_1_5,20,4)
Play.Scenes[5].Actors[10] = Actor.new(Bed_1_6,21,4)

Play.Scenes[5].Actors[11] = Actor.new(Trash_Can,20.5,12.5)

Play.Scenes[5].Actors[12] = Actor.new(Table_TL,15,11)
Play.Scenes[5].Actors[13] = Actor.new(Table_TR,16,11)
Play.Scenes[5].Actors[14] = Actor.new(Table_BL,15,12)
Play.Scenes[5].Actors[15] = Actor.new(Table_BR,16,12)

Play.Scenes[5].Actors[16] = Actor.new(Rachel,5.6 + 9,7.7 + 2)
Play.Scenes[5].Actors[17] = Actor.new(R_Guitar_L,5.6 + 9,7.7 + 2)
Play.Scenes[5].Actors[18] = Actor.new(Amp,4.6 + 9,6.7 + 2)

Play.Scenes[5].Actors[19] = Actor.new(Varisa,9.6 + 9,8.7 + 2)
Play.Scenes[5].Actors[20] = Actor.new(B_Guitar_L,9.6 + 9,8.7 + 2)
Play.Scenes[5].Actors[21] = Actor.new(Mic,10.1 + 9,9 + 2)
Play.Scenes[5].Actors[22] = Actor.new(Amp,10.6 + 9,7.7 + 2)

Play.Scenes[5].Actors[23] = Actor.new(Tracey,7.6 + 9,4.7 + 2)
Play.Scenes[5].Actors[24] = Actor.new(Ride_Cymbal,6.8 + 9,4.9 + 2)
Play.Scenes[5].Actors[25] = Actor.new(Crash_Cymbal,8.4 + 9,4.9 + 2)
Play.Scenes[5].Actors[26] = Actor.new(Snare_Drum,8 + 9,5.3 + 2)
Play.Scenes[5].Actors[27] = Actor.new(Tom_Drum,7.2 + 9,5.3 + 2)
Play.Scenes[5].Actors[28] = Actor.new(Bass_Drum,7.6 + 9,5.5 + 2)

local sbs
Play.Scenes[5].transition = function(self,t)
	if(t < 100) then
		if t == 1 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(20),
				n = Varisa,
				v = "Normal",
			}
		end
	elseif (t < 300) then
		if t == 101 then
			sbs = sound.getSound("EpT7")
			if Play.unmuteAfter then
				sbs:seek(0)
				sbs:play()
			end
		end
	elseif (t < 350) then
		if sbs then
			sbs:stop()
		end
		if t == 301 then
			self.darkness = 2
		end
	elseif (t < 400) then
		if t == 351 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(21),
				n = Varisa,
				v = "Normal",
			}
		end
	elseif(t < self.tickGoal) then
		
	else
		Voices[self.dtbl.v]:pause()
		Voices[self.dtbl.v]:seek(0)
		if sbs then
			sbs:stop()
		end
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
