Play.Scenes[12] = Scene.new(World.Map[25])
Play.Scenes[12].tickGoal = 25
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

Play.Scenes[12].transition = function(self,t)
	if(t < 3.125) then
		if not self.vars["Once1"] then
			for i = 1,10 do
				if House.house[i].HouseHold == 4 and (House.house[i].isKiller) then
					Scene.vars["dn1"] = 38
					Scene.vars["dn2"] = 39
				end
				if House.house[i].HouseHold == 6 and (House.house[i].isKiller) then
					Scene.vars["dn1"] = 42
					Scene.vars["dn2"] = 43
				end
				if House.house[i].HouseHold == 7 and (House.house[i].isKiller) then
					Scene.vars["dn1"] = 40
					Scene.vars["dn2"] = 41
				end
			end

			Scene.LastDialogueBuffer = DialogueBuffer
			self:SayAnimated(String.get(33),Karina,0)
			DialogueBuffer = 2.5
			self.vars["Once1"] = true
		end
	elseif(t < 5) then
		if not self.vars["Once2"] then
			self:SayAnimated(String.get(34),Karina,0)
			self.vars["Once2"] = true
		end
	elseif(t < 6.875) then
		if not self.vars["Once3"] then
			self:SayAnimated(String.get(35),Karina,0)
			self.vars["Once3"] = true
		end
	elseif(t < 8.75) then
		if not self.vars["Once4"] then
			self:SayAnimated(String.get(36),Karina,0)
			self.vars["Once4"] = true
		end
	elseif(t < 10.625) then
		if not self.vars["Once5"] then
			self:SayAnimated(String.get(37),Karina,0)
			self.vars["Once5"] = true
		end
	elseif(t < 12.5) then
		if not self.vars["Once6"] then
			self:Say(String.get(Scene.vars["dn1"]),Unknown,"Slow")
			self.vars["Once6"] = true
		end
	elseif(t < 15.625) then
		if not self.vars["Once7"] then
			self:Say(String.get(Scene.vars["dn2"]),Unknown,"Slow")
			self.vars["Once7"] = true
		end
	elseif(t < 18.75) then
		
	elseif(t < self.tickGoal) then
		local _t = (t - (18.75)) / (1.25)
		-- Play.Scenes[12].Actors[3].x = Scene.lerp(16.6,18.2,_t)
		-- Play.Scenes[12].Actors[4].x = Scene.lerp(18.3,18.7,_t)

		-- Play.Scenes[12].Actors[3].y = Scene.lerp(9.6,8.0,_t)
		-- Play.Scenes[12].Actors[4].y = Scene.lerp(9.6,7.4,_t)
	else
		if Story.get("Power_Up_1") then
			if not(Story.get("Power_Up_2")) then
				Mood.darkSet(2)
			end
		end
		Voices[self.dtbl.v]:pause()
		Voices[self.dtbl.v]:seek(0)
		--sbs:stop()
		Jukebox_next()
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
