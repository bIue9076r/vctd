Play.Scenes[10] = Scene.new(World.Map[25])
Play.Scenes[10].tickGoal = 1200
Play.Scenes[10].Next = Fade
Play.Scenes[10].Hour = Noon
Play.Scenes[10].Min = 0

Play.Scenes[10].Actors[1] = Actor.new(Varisa,1.7,7.2)
Play.Scenes[10].Actors[2] = Actor.new(Vivian,1.7,8.7)

Play.Scenes[10].transition = function(self,t)
	if(t < 150) then
		if t == 1 then
			for i = 1,10 do
				if House.house[i].isKiller then
					local H = House.house[i].HouseHolds
					if H == 4 then
						Play.Scenes[10].Actors[2].c = Vivian
					elseif H == 6 then
						Play.Scenes[10].Actors[2].c = Mollie
					elseif H == 7 then
						Play.Scenes[10].Actors[2].c = Fredrick
					end
				end
			end
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
		Play.ticker:reset()
	end
end
