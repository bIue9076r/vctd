Play.Scenes[6] = Scene.new(World.Map[25])
Play.Scenes[6].tickGoal = 1200
Play.Scenes[6].Next = Fade
Play.Scenes[6].Hour = Noon
Play.Scenes[6].Min = 0
Play.Scenes[6].Actors[1] = Actor.new(Sand_BR,10.8,2.9-1)
Play.Scenes[6].Actors[2] = Actor.new(Sand_B,10.8+1,2.9-1)
Play.Scenes[6].Actors[3] = Actor.new(Sand_B,10.8+2,2.9-1)
Play.Scenes[6].Actors[4] = Actor.new(Sand_B,10.8+3,2.9-1)
Play.Scenes[6].Actors[5] = Actor.new(Sand_B,10.8+4,2.9-1)
Play.Scenes[6].Actors[6] = Actor.new(Sand_B,10.8+5,2.9-1)
Play.Scenes[6].Actors[7] = Actor.new(Sand_BL,10.8+6,2.9-1)
Play.Scenes[6].Actors[8] = Actor.new(Sand_R,10.8,2.9)
Play.Scenes[6].Actors[9] = Actor.new(Sand,10.8+1,2.9)
Play.Scenes[6].Actors[10] = Actor.new(Sand,10.8+2,2.9)
Play.Scenes[6].Actors[11] = Actor.new(Sand,10.8+3,2.9)
Play.Scenes[6].Actors[12] = Actor.new(Sand,10.8+4,2.9)
Play.Scenes[6].Actors[13] = Actor.new(Sand,10.8+5,2.9)
Play.Scenes[6].Actors[14] = Actor.new(Sand_L,10.8+6,2.9)
Play.Scenes[6].Actors[15] = Actor.new(Sand_R,10.8,2.9+1)
Play.Scenes[6].Actors[16] = Actor.new(Sand,10.8+1,2.9+1)
Play.Scenes[6].Actors[17] = Actor.new(Sand,10.8+2,2.9+1)
Play.Scenes[6].Actors[18] = Actor.new(Sand,10.8+3,2.9+1)
Play.Scenes[6].Actors[19] = Actor.new(Sand,10.8+4,2.9+1)
Play.Scenes[6].Actors[20] = Actor.new(Sand,10.8+5,2.9+1)
Play.Scenes[6].Actors[21] = Actor.new(Sand_L,10.8+6,2.9+1)
Play.Scenes[6].Actors[22] = Actor.new(Sand_R,10.8,2.9+2)
Play.Scenes[6].Actors[23] = Actor.new(Sand,10.8+1,2.9+2)
Play.Scenes[6].Actors[24] = Actor.new(Sand,10.8+2,2.9+2)
Play.Scenes[6].Actors[25] = Actor.new(Sand,10.8+3,2.9+2)
Play.Scenes[6].Actors[26] = Actor.new(Sand,10.8+4,2.9+2)
Play.Scenes[6].Actors[27] = Actor.new(Sand,10.8+5,2.9+2)
Play.Scenes[6].Actors[28] = Actor.new(Sand_L,10.8+6,2.9+2)
Play.Scenes[6].Actors[29] = Actor.new(Sand_TR,10.8,2.9+3)
Play.Scenes[6].Actors[30] = Actor.new(Sand_T,10.8+1,2.9+3)
Play.Scenes[6].Actors[31] = Actor.new(Sand_T,10.8+2,2.9+3)
Play.Scenes[6].Actors[32] = Actor.new(Sand_T,10.8+3,2.9+3)
Play.Scenes[6].Actors[33] = Actor.new(Sand_T,10.8+4,2.9+3)
Play.Scenes[6].Actors[34] = Actor.new(Sand_T,10.8+5,2.9+3)
Play.Scenes[6].Actors[35] = Actor.new(Sand_TL,10.8+6,2.9+3)
Play.Scenes[6].Actors[36] = Actor.new(Trash_Can,4.5,4.0)
Play.Scenes[6].Actors[37] = Actor.new(Warning_T,17.1,11)
Play.Scenes[6].Actors[38] = Actor.new(Warning_M,17.1,12)
Play.Scenes[6].Actors[39] = Actor.new(Warning_B,17.1,13)

Play.Scenes[6].Actors[40] = Actor.new(Tracey,1.7,7.2)
Play.Scenes[6].Actors[41] = Actor.new(Varisa,1.7,8.7)
Play.Scenes[6].Actors[42] = Actor.new(Fredrick,13.0,10.2)
Play.Scenes[6].Actors[43] = Actor.new(Wilkie,14.5,10.2)
Play.Scenes[6].Actors[44] = Actor.new(Mollie,13.5,5.0)

Play.Scenes[6].transition = function(self,t)
	self.Actors[44].y = 5.0 + (math.sin(math.pi * (t/100))/4)
	if(t < 150) then
		if t == 1 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(7),
				n = Tracey,
				v = "Normal",
			}
		end
	elseif(t < 300) then
		if t == 151 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(8),
				n = Varisa,
				v = "Normal",
			}
		end
	elseif(t < 450) then
		if t == 301 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(9),
				n = Tracey,
				v = "Normal",
			}
		end
	elseif(t < 600) then
		if t == 451 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(10),
				n = Varisa,
				v = "Normal",
			}
		end
	elseif(t < 750) then
		if t == 601 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(11),
				n = Varisa,
				v = "Normal",
			}
		end
	elseif(t < 900) then
		if t == 751 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(12),
				n = Tracey,
				v = "Normal",
			}
		end
	elseif(t < 1050) then
		if t == 901 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(13),
				n = Tracey,
				v = "Normal",
			}
		end
	elseif(t < self.tickGoal) then
		
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
		Play.ticker:reset()
	end
end
