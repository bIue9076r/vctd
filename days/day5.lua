Days.newDay(5,function()
	House.house[11].isOpen = false

    GameState = Fadeout
	Play.scene = Play.Scenes[7]
	Play.scene.AfterEffect = function(self)
		Map = World.Map[1]
		Time.setHour(Day)
		Mood.darkSet(0)
		setPlr(13.6,9.8)
	end

	SongList = {
		Song.new("Ambience_1",-5,5),
	}
end)
