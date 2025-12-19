Days.newDay(3,function()
	for i,v in ipairs(House.house) do
		if v.HouseHold == 3 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					-- hide Karina
				end
			end
		end
	end

	for i,v in pairs(World.Map[25].npcs) do
		if v.f then
			v.g = 0
		end
	end

	for i,v in pairs(World.Map[25].props) do
		if v.f then
			v.g = 0
		end
	end

	Time.setHour(Day)
    GameState = Cutscene
	Play.scene = Play.Scenes[4]
end)
