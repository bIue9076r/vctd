Days.newDay(1,function()
	if bs then
		bs:stop()
	end
	muted = true
	Play.scene = Play.Scenes[math.random(1,3)]
	Play.scene.AfterEffect = function(self)
		Map = World.Map[1]
		setPlr(1,12)
	end
	GameState = Fadeout
end)
