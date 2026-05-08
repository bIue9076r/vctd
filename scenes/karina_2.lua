Play.Scenes[13] = Scene.new(World.Map[25])
Play.Scenes[13].tickGoal = 25
Play.Scenes[13].Next = Fade
Play.Scenes[13].Hour = Night

Play.Scenes[13].Actors[1] = Actor.new(Sand_BR,10.8,2.9-1)
Play.Scenes[13].Actors[2] = Actor.new(Sand_B,10.8+1,2.9-1)
Play.Scenes[13].Actors[3] = Actor.new(Sand_B,10.8+2,2.9-1)
Play.Scenes[13].Actors[4] = Actor.new(Sand_B,10.8+3,2.9-1)
Play.Scenes[13].Actors[5] = Actor.new(Sand_B,10.8+4,2.9-1)
Play.Scenes[13].Actors[6] = Actor.new(Sand_B,10.8+5,2.9-1)
Play.Scenes[13].Actors[7] = Actor.new(Sand_BL,10.8+6,2.9-1)
Play.Scenes[13].Actors[8] = Actor.new(Sand_R,10.8,2.9)
Play.Scenes[13].Actors[9] = Actor.new(Sand,10.8+1,2.9)
Play.Scenes[13].Actors[10] = Actor.new(Sand,10.8+2,2.9)
Play.Scenes[13].Actors[11] = Actor.new(Sand,10.8+3,2.9)
Play.Scenes[13].Actors[12] = Actor.new(Sand,10.8+4,2.9)
Play.Scenes[13].Actors[13] = Actor.new(Sand,10.8+5,2.9)
Play.Scenes[13].Actors[14] = Actor.new(Sand_L,10.8+6,2.9)
Play.Scenes[13].Actors[15] = Actor.new(Sand_R,10.8,2.9+1)
Play.Scenes[13].Actors[16] = Actor.new(Sand,10.8+1,2.9+1)
Play.Scenes[13].Actors[17] = Actor.new(Sand,10.8+2,2.9+1)
Play.Scenes[13].Actors[18] = Actor.new(Sand,10.8+3,2.9+1)
Play.Scenes[13].Actors[19] = Actor.new(Sand,10.8+4,2.9+1)
Play.Scenes[13].Actors[20] = Actor.new(Sand,10.8+5,2.9+1)
Play.Scenes[13].Actors[21] = Actor.new(Sand_L,10.8+6,2.9+1)
Play.Scenes[13].Actors[22] = Actor.new(Sand_R,10.8,2.9+2)
Play.Scenes[13].Actors[23] = Actor.new(Sand,10.8+1,2.9+2)
Play.Scenes[13].Actors[24] = Actor.new(Sand,10.8+2,2.9+2)
Play.Scenes[13].Actors[25] = Actor.new(Sand,10.8+3,2.9+2)
Play.Scenes[13].Actors[26] = Actor.new(Sand,10.8+4,2.9+2)
Play.Scenes[13].Actors[27] = Actor.new(Sand,10.8+5,2.9+2)
Play.Scenes[13].Actors[28] = Actor.new(Sand_L,10.8+6,2.9+2)
Play.Scenes[13].Actors[29] = Actor.new(Sand_TR,10.8,2.9+3)
Play.Scenes[13].Actors[30] = Actor.new(Sand_T,10.8+1,2.9+3)
Play.Scenes[13].Actors[31] = Actor.new(Sand_T,10.8+2,2.9+3)
Play.Scenes[13].Actors[32] = Actor.new(Sand_T,10.8+3,2.9+3)
Play.Scenes[13].Actors[33] = Actor.new(Sand_T,10.8+4,2.9+3)
Play.Scenes[13].Actors[34] = Actor.new(Sand_T,10.8+5,2.9+3)
Play.Scenes[13].Actors[35] = Actor.new(Sand_TL,10.8+6,2.9+3)
Play.Scenes[13].Actors[36] = Actor.new(Trash_Can,4.5,4.0)
Play.Scenes[13].Actors[37] = Actor.new(Warning_T,17.1,11)
Play.Scenes[13].Actors[38] = Actor.new(Warning_M,17.1,12)
Play.Scenes[13].Actors[39] = Actor.new(Warning_B,17.1,13)

Play.Scenes[13].Actors[40] = Actor.new(Karina,1.5,10.5)
Play.Scenes[13].Actors[41] = Actor.new(Unknown,13.8,3.5)

local sbs
Play.Scenes[13].transition = function(self,t)
	if(t < 3.125) then
		if not self.vars["Once1"] then
			Scene.LastDialogueBuffer = DialogueBuffer
			self:Say(String.get(33),Karina)
			DialogueBuffer = 2.5
			self.vars["Once1"] = true
		end
	elseif(t < 5) then
		if not self.vars["Once2"] then
			self:Say(String.get(34),Karina)
			self.vars["Once2"] = true
		end
	elseif(t < 6.875) then
		if not self.vars["Once3"] then
			self:Say(String.get(35),Karina)
			self.vars["Once3"] = true
		end
	elseif(t < 8.75) then
		if not self.vars["Once4"] then
			self:Say(String.get(36),Karina)
			self.vars["Once4"] = true
		end
	elseif(t < 10.625) then
		if not self.vars["Once5"] then
			self:Say(String.get(37),Karina)
			self.vars["Once5"] = true
		end
	elseif(t < 12.5) then
		if not self.vars["Once6"] then
			self:Say(String.get(40),Unknown,"Slow")
			self.vars["Once6"] = true
		end
	elseif(t < 15.625) then
		if not self.vars["Once7"] then
			self:Say(String.get(41),Unknown,"Slow")
			self.vars["Once7"] = true
		end
	elseif(t < 18.75) then
		
	elseif(t < self.tickGoal) then
		local _t = (t - (18.75)) / (1.25)
		Play.Scenes[13].Actors[3].x = Scene.lerp(16.6,18.2,_t)
		Play.Scenes[13].Actors[4].x = Scene.lerp(18.3,18.7,_t)

		Play.Scenes[13].Actors[3].y = Scene.lerp(9.6,8.0,_t)
		Play.Scenes[13].Actors[4].y = Scene.lerp(9.6,7.4,_t)
	else
		Voices[self.dtbl.v]:pause()
		Voices[self.dtbl.v]:seek(0)
		sbs:stop()
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
		self:clearVars()
		self.dticker:reset()
		Play.ticker:reset()
	end
end
