Play.Scenes[5] = Scene.new(World.Map[19])
Play.Scenes[5].tickGoal = 1220
Play.Scenes[5].Next = WORLD
Play.Scenes[5].Hour = Evening

Play.Scenes[5].Actors[1] = Actor.new(Mailbox,11.0,8.4)
Play.Scenes[5].Actors[2] = Actor.new(Mollie,9.9,8.2)
Play.Scenes[5].Actors[3] = Actor.new(Ella,16.6,9.6)
Play.Scenes[5].Actors[4] = Actor.new(Sean,18.3,9.6)

local sbs
Play.Scenes[5].transition = function(self,t)
	if(t < 250) then
		if t == 1 then
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
			DialogueBuffer = 100
		end
	elseif(t < 400) then
		if t == 251 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(15),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 550) then
		if t == 401 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(16),
				n = Sean,
				v = "Normal",
			}
		end
	elseif(t < 700) then
		if t == 551 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(17),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 850) then
		if t == 701 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(18),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 1000) then
		if t == 851 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(19),
				n = Sean,
				v = "Normal",
			}
		end
	elseif(t < 1120) then
		
	elseif(t < self.tickGoal) then
		local _t = (t - 1120) / 100
		Play.Scenes[5].Actors[3].x = Scene.lerp(16.6,18.2,_t)
		Play.Scenes[5].Actors[4].x = Scene.lerp(18.3,18.7,_t)

		Play.Scenes[5].Actors[3].y = Scene.lerp(9.6,8.0,_t)
		Play.Scenes[5].Actors[4].y = Scene.lerp(9.6,7.4,_t)
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
		Play.ticker:reset()
	end
end
