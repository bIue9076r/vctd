Play.Scenes[4] = Scene.new(World.Map[25])
Play.Scenes[4].tickGoal = 800
Play.Scenes[4].Next = Intro
Play.Scenes[4].Actors[1] = Actor.new(1.7,7.2,Tracey)
Play.Scenes[4].Actors[2] = Actor.new(1.7,8.7,Varisa)
Play.Scenes[4].Actors[3] = Actor.new(13.0,10.2,Fredrick)
Play.Scenes[4].Actors[4] = Actor.new(14.5,10.2,Wilkie)
Play.Scenes[4].Actors[5] = Actor.new(13.5,5.0,Mollie)
Play.Scenes[4].transition = function(self,t)
	if(t < 200) then
		if t == 1 then
			self.IsTalking = true
			self.dtbl = {
				s = String.get(5),
				n = Tracey,
				v = "Normal",
			}
		end
	elseif(t < 800) then
		
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
