Days.newDay(5,function()
	House.house[11].isOpen = false
	
	Time.setHour(Day)
    GameState = Fadeout
	Play.scene = Play.Scenes[7]

	SongList = {
		Song.new("Ambience_1",-5,5),
	}
end)
