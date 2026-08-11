Play.Scenes[7] = Scene.new(World.Map[1])
Play.Scenes[7].tickGoal = 15
Play.Scenes[7].Next = Fade
Play.Scenes[7].Hour = Noon
Play.Scenes[7].Min = 0
Play.Scenes[7].Actors[1] = Actor.new(Tracey,14.1,9.8)
Play.Scenes[7].Actors[2] = Actor.new(Varisa,12.6,9.8)
Play.Scenes[7].Actors[3] = Actor.new(Zoey,13.0,10.2)
-- Play.Scenes[7].Actors[4] = Actor.new(Wilkie,14.5,10.2)

Play.Scenes[7].transition = function(self,t)
	if(t < 1.875) then
		-- if not self.vars["Once1"] then
		-- 	self:Say(String.get(7),Tracey)
		-- 	self.vars["Once1"] = true
		-- end
	elseif(t < self.tickGoal) then
		
	else
		Voices[self.dtbl.v]:pause()
		Voices[self.dtbl.v]:seek(0)
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
