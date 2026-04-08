Play.Scenes[12] = Scene.new(World.Map[25])
Play.Scenes[12].tickGoal = 1220
Play.Scenes[12].Next = Fade
Play.Scenes[12].Hour = Night

Play.Scenes[12].Actors[1] = Actor.new(Sand_BR,10.8,2.9-1)
Play.Scenes[12].Actors[2] = Actor.new(Sand_B,10.8+1,2.9-1)
Play.Scenes[12].Actors[3] = Actor.new(Sand_B,10.8+2,2.9-1)
Play.Scenes[12].Actors[4] = Actor.new(Sand_B,10.8+3,2.9-1)
Play.Scenes[12].Actors[5] = Actor.new(Sand_B,10.8+4,2.9-1)
Play.Scenes[12].Actors[6] = Actor.new(Sand_B,10.8+5,2.9-1)
Play.Scenes[12].Actors[7] = Actor.new(Sand_BL,10.8+6,2.9-1)
Play.Scenes[12].Actors[8] = Actor.new(Sand_R,10.8,2.9)
Play.Scenes[12].Actors[9] = Actor.new(Sand,10.8+1,2.9)
Play.Scenes[12].Actors[10] = Actor.new(Sand,10.8+2,2.9)
Play.Scenes[12].Actors[11] = Actor.new(Sand,10.8+3,2.9)
Play.Scenes[12].Actors[12] = Actor.new(Sand,10.8+4,2.9)
Play.Scenes[12].Actors[13] = Actor.new(Sand,10.8+5,2.9)
Play.Scenes[12].Actors[14] = Actor.new(Sand_L,10.8+6,2.9)
Play.Scenes[12].Actors[15] = Actor.new(Sand_R,10.8,2.9+1)
Play.Scenes[12].Actors[16] = Actor.new(Sand,10.8+1,2.9+1)
Play.Scenes[12].Actors[17] = Actor.new(Sand,10.8+2,2.9+1)
Play.Scenes[12].Actors[18] = Actor.new(Sand,10.8+3,2.9+1)
Play.Scenes[12].Actors[19] = Actor.new(Sand,10.8+4,2.9+1)
Play.Scenes[12].Actors[20] = Actor.new(Sand,10.8+5,2.9+1)
Play.Scenes[12].Actors[21] = Actor.new(Sand_L,10.8+6,2.9+1)
Play.Scenes[12].Actors[22] = Actor.new(Sand_R,10.8,2.9+2)
Play.Scenes[12].Actors[23] = Actor.new(Sand,10.8+1,2.9+2)
Play.Scenes[12].Actors[24] = Actor.new(Sand,10.8+2,2.9+2)
Play.Scenes[12].Actors[25] = Actor.new(Sand,10.8+3,2.9+2)
Play.Scenes[12].Actors[26] = Actor.new(Sand,10.8+4,2.9+2)
Play.Scenes[12].Actors[27] = Actor.new(Sand,10.8+5,2.9+2)
Play.Scenes[12].Actors[28] = Actor.new(Sand_L,10.8+6,2.9+2)
Play.Scenes[12].Actors[29] = Actor.new(Sand_TR,10.8,2.9+3)
Play.Scenes[12].Actors[30] = Actor.new(Sand_T,10.8+1,2.9+3)
Play.Scenes[12].Actors[31] = Actor.new(Sand_T,10.8+2,2.9+3)
Play.Scenes[12].Actors[32] = Actor.new(Sand_T,10.8+3,2.9+3)
Play.Scenes[12].Actors[33] = Actor.new(Sand_T,10.8+4,2.9+3)
Play.Scenes[12].Actors[34] = Actor.new(Sand_T,10.8+5,2.9+3)
Play.Scenes[12].Actors[35] = Actor.new(Sand_TL,10.8+6,2.9+3)
Play.Scenes[12].Actors[36] = Actor.new(Trash_Can,4.5,4.0)
Play.Scenes[12].Actors[37] = Actor.new(Warning_T,17.1,11)
Play.Scenes[12].Actors[38] = Actor.new(Warning_M,17.1,12)
Play.Scenes[12].Actors[39] = Actor.new(Warning_B,17.1,13)

Play.Scenes[12].Actors[40] = Actor.new(Karina,1.5,10.5)
Play.Scenes[12].Actors[41] = Actor.new(Unknown,13.8,3.5)

local sbs
Play.Scenes[12].transition = function(self,t)
	if(t < 250) then
		if t == 1 then
			Scene.LastDialogueBuffer = DialogueBuffer
			
			self.IsTalking = true
			self.dtbl = {
				s = String.get(33),
				n = Karina,
				v = "Normal",
			}
			DialogueBuffer = 100
		end
	elseif(t < 400) then
		if t == 251 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(34),
				n = Karina,
				v = "Normal",
			}
		end
	elseif(t < 550) then
		if t == 401 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(35),
				n = Karina,
				v = "Normal",
			}
		end
	elseif(t < 700) then
		if t == 551 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(36),
				n = Karina,
				v = "Normal",
			}
		end
	elseif(t < 850) then
		if t == 701 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(37),
				n = Karina,
				v = "Normal",
			}
		end
	elseif(t < 1000) then
		if t == 851 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(38),
				n = Unknown,
				v = "Slow",
			}
		end
	elseif(t < 1250) then
		if t == 1001 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(39),
				n = Unknown,
				v = "Slow",
			}
		end
	elseif(t < 1500) then
		
	elseif(t < self.tickGoal) then
		local _t = (t - 1500) / 100
		--Play.Scenes[12].Actors[3].x = Scene.lerp(16.6,18.2,_t)
		--Play.Scenes[12].Actors[4].x = Scene.lerp(18.3,18.7,_t)

		--Play.Scenes[12].Actors[3].y = Scene.lerp(9.6,8.0,_t)
		--Play.Scenes[12].Actors[4].y = Scene.lerp(9.6,7.4,_t)
	else
		Voices[self.dtbl.v]:pause()
		Voices[self.dtbl.v]:seek(0)
		--sbs:stop()
		if Play.unmuteAfter then
			muted = false
			plyed = false
			soundTick:reset()
			bs = sound.getSound(SongListSelect(SongList))
			song_silence = false
		end
		DialogueBuffer = Scene.LastDialogueBuffer
		GameState = self.Next
		if self.AfterEffect then
			self:AfterEffect()
			self.AfterEffect = nil
		end
		self.dticker:reset()
		Play.ticker:reset()
	end
end
