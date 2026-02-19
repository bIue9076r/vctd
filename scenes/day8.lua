Play.Scenes[10] = Scene.new(World.Map[10])
Play.Scenes[10].tickGoal = 800
Play.Scenes[10].Next = Fade
Play.Scenes[10].Hour = Night
Play.Scenes[10].Min = 0

Play.Scenes[10].Actors[1] = Actor.new(Poster_Bl,10.5,0.5)
Play.Scenes[10].Actors[2] = Actor.new(Poster_Pu,12,0.25)
Play.Scenes[10].Actors[3] = Actor.new(Poster_Or,13.5,0.75)
Play.Scenes[10].Actors[4] = Actor.new(Flag,19,0.5)
Play.Scenes[10].Actors[5] = Actor.new(Bed_1_1,20,2)
Play.Scenes[10].Actors[6] = Actor.new(Bed_1_2,21,2)
Play.Scenes[10].Actors[7] = Actor.new(Bed_1_3,20,3)
Play.Scenes[10].Actors[8] = Actor.new(Bed_1_4,21,3)
Play.Scenes[10].Actors[9] = Actor.new(Bed_1_5,20,4)
Play.Scenes[10].Actors[10] = Actor.new(Bed_1_6,21,4)
Play.Scenes[10].Actors[11] = Actor.new(Trash_Can,20.5,12.5)
Play.Scenes[10].Actors[12] = Actor.new(Table_TL,15,11)
Play.Scenes[10].Actors[13] = Actor.new(Table_TR,16,11)
Play.Scenes[10].Actors[14] = Actor.new(Table_BL,15,12)
Play.Scenes[10].Actors[15] = Actor.new(Table_BR,16,12)
Play.Scenes[10].Actors[16] = Actor.new(Amp,20.5,5)
Play.Scenes[10].Actors[17] = Actor.new(B_Guitar_R,20,5)

Play.Scenes[10].Actors[18] = Actor.new(Varisa,20.0,2.8)
Play.Scenes[10].Actors[19] = Actor.new(Vivian,1.7,2.8)
Play.Scenes[10].Actors[20] = Actor.new(Knife,1.7,2.8)

Play.Scenes[10].transition = function(self,t)
	if(t < self.tickGoal) then
		if t == 1 then
			for i = 1,10 do
				if House.house[i].isKiller then
					local H = House.house[i].HouseHold
					if H == 4 then
						Play.Scenes[10].Actors[19].c = Vivian
					elseif H == 6 then
						Play.Scenes[10].Actors[19].c = Fredrick
					elseif H == 7 then
						Play.Scenes[10].Actors[19].c = Mollie
					end
				end
			end
		end
		Play.Scenes[10].Actors[19].x = Scene.lerp(10.5,19.0,t/800)
		Play.Scenes[10].Actors[20].x = Play.Scenes[10].Actors[19].x
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
