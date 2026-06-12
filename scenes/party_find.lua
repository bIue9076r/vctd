Play.Scenes[13] = Scene.new(World.Map[4])
Play.Scenes[13].tickGoal = 14.5
Play.Scenes[13].Next = Fade
Play.Scenes[13].Hour = Noon

Play.Scenes[13].Actors[1] = Actor.new(Pentagram_Unlit_1,14.5,7.5)
Play.Scenes[13].Actors[2] = Actor.new(Pentagram_Unlit_2,15.5,7.5)
Play.Scenes[13].Actors[3] = Actor.new(Karly,15,7)
Play.Scenes[13].Actors[4] = Actor.new(Pentagram_Unlit_1,12.5,6)
Play.Scenes[13].Actors[5] = Actor.new(Pentagram_Unlit_2,13.5,6)
Play.Scenes[13].Actors[6] = Actor.new(Pentagram_Unlit_1,16.5,6)
Play.Scenes[13].Actors[7] = Actor.new(Pentagram_Unlit_2,17.5,6)
Play.Scenes[13].Actors[8] = Actor.new(Pentagram_Unlit_1,12.5,9)
Play.Scenes[13].Actors[9]  = Actor.new(Pentagram_Unlit_2,13.5,9)
Play.Scenes[13].Actors[10] = Actor.new(Pentagram_Unlit_1,16.5,9)
Play.Scenes[13].Actors[11] = Actor.new(Pentagram_Unlit_2,17.5,9)

Play.Scenes[13].Actors[13] = Actor.new(Varisa,14,7)

Play.Scenes[13].transition = function(self,t)
	if(t < 2.5) then
		if not self.vars["Once1"] then
			self:Say(String.get(47),Varisa)
			self.vars["Once1"] = true
		end
	elseif(t < self.tickGoal) then
		
	else
		Jukebox_next()
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
