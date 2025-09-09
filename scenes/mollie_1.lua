Play.Scenes[5] = Scene.new(World.Map[1])
Play.Scenes[5].tickGoal = math.floor(9223372036854775807 / 10000000000000)--800
Play.Scenes[5].Next = WORLD
Play.Scenes[5].Hour = Evening

Play.Scenes[5].Actors[1] = Actor.new(Mailbox,11.0,8.4)
Play.Scenes[5].Actors[2] = Actor.new(Mollie,9.9,8.2)
Play.Scenes[5].Actors[3] = Actor.new(Ella,16.6,9.6)
Play.Scenes[5].Actors[4] = Actor.new(Sean,18.3,9.6)

Play.Scenes[5].transition = function(self,t)
	if(t < 150) then
		if t == 1 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(14),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 300) then
		if t == 151 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(15),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 450) then
		if t == 301 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(16),
				n = Sean,
				v = "Normal",
			}
		end
	elseif(t < 600) then
		if t == 451 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(17),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 750) then
		if t == 601 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(18),
				n = Ella,
				v = "Normal",
			}
		end
	elseif(t < 900) then
		if t == 751 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(19),
				n = Sean,
				v = "Normal",
			}
		end
	elseif(t < 1050) then
		
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
		Play.ticker:reset()
	end
end
