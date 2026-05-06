Play.Scenes[11] = Scene.new(World.Map[19])
Play.Scenes[11].tickGoal = 1220/40
Play.Scenes[11].Next = WORLD
Play.Scenes[11].Hour = Evening

Play.Scenes[11].Actors[1] = Actor.new(Mailbox,11.0,8.4)
Play.Scenes[11].Actors[2] = Actor.new(Mollie,9.9,8.2)
Play.Scenes[11].Actors[3] = Actor.new(Ella,16.6,9.6)
Play.Scenes[11].Actors[4] = Actor.new(Sean,18.3,9.6)

local sbs
Play.Scenes[11].transition = function(self,t)
	if(t < 250/40) then
		if not self.vars["Once1"] then
			Scene.LastDialogueBuffer = DialogueBuffer
			sbs = sound.getSound("Breakup")
			if Play.unmuteAfter then
				sbs:seek(0)
				sbs:play()
			end
			
			self.IsTalking = true
			self.dtbl = {
				s = String.get(14),
				n = Ella,
				v = "Normal",
			}
			DialogueBuffer = 100/40
			self.vars["Once1"] = true
		end
	elseif(t < 400/40) then
		if not self.vars["Once2"] then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(15),
				n = Ella,
				v = "Normal",
			}
			self.vars["Once2"] = true
		end
	elseif(t < 550/40) then
		if not self.vars["Once3"] then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(16),
				n = Sean,
				v = "Normal",
			}
			self.vars["Once3"] = true
		end
	elseif(t < 700/40) then
		if not self.vars["Once4"] then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(17),
				n = Ella,
				v = "Normal",
			}
			self.vars["Once4"] = true
		end
	elseif(t < 850/40) then
		if not self.vars["Once5"] then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(18),
				n = Ella,
				v = "Normal",
			}
			self.vars["Once5"] = true
		end
	elseif(t < 1000/40) then
		if not self.vars["Once6"] then
			self.IsTalking = true
			self.dtbl = {
			s = String.get(19),
				n = Sean,
				v = "Normal",
			}
			self.vars["Once6"] = true
		end
	elseif(t < 1120/40) then
		
	elseif(t < self.tickGoal) then
		local _t = (t - (1120/40)) / (100/40)
		Play.Scenes[11].Actors[3].x = Scene.lerp(16.6,18.2,_t)
		Play.Scenes[11].Actors[4].x = Scene.lerp(18.3,18.7,_t)

		Play.Scenes[11].Actors[3].y = Scene.lerp(9.6,8.0,_t)
		Play.Scenes[11].Actors[4].y = Scene.lerp(9.6,7.4,_t)
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
		self.dticker:reset()
		Play.ticker:reset()
	end
end
