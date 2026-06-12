Play.Scenes[1] = Scene.new(World.Map[1])
Play.Scenes[1].tickGoal = 10
Play.Scenes[1].Next = Intro
Play.Scenes[1].Actors[1] = Actor.new(Karly,0,12)
Play.Scenes[1].Actors[2] = Actor.new(Mailbox,11.0,8.4)

Play.Scenes[1].transition = function(self,t)
	if(t < 2.5) then
		if not self.vars["Once1"] then
			self:Say(String.get(4),Karly)
			self.vars["Once1"] = true
		end
		self.Actors[1].x = Scene.lerp(-1,22,t/(2.5))
	elseif(t < 3.75) then
		if not self.vars["Once2"] then
			self.Actors[1] = nil
			self.vars["Once2"] = true
		end
		self.Hour = Scene.lerp(0,7.5,(t - (2.5))/(1.25))
		self.Min = math.floor(60 * (self.Hour - math.floor(self.Hour)))
		self.Hour = math.floor(self.Hour)
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
