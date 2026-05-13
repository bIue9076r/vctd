Days.newDay(4,function()
	Play.scene = Play.Scenes[6]
	Play.scene.AfterEffect = function(self)
		local I
		for i = 1,10 do
			if House.house[i].HouseHold == 4 then
				I = Families.HouseMap[i]
				for i, v in pairs(World.Map[I + 5].npcs) do
					if v.f == "party" then
						v.g = 0
					end
				end
				for i, v in pairs(World.Map[I + 5].props) do
					v.g = 0
				end
			end
		end
		Map = World.Map[I + 5]
		Time.setHour(Day)
		Mood.darkSet(0)
		setPlr(7.4,3.1)
	end

	GameState = Fadeout
	Story.set("Power_Up_2",true)
end)
