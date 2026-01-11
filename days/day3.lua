Days.newDay(3,function()
	for i,v in ipairs(House.house) do
		if v.HouseHold == 3 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 5 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Box" then
					v.g = 1
				end

				if v.f == "Jami_2" then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 8 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 1].npcs) do
				if v.f then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 10 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Box" then
					v.g = 1
				end
			end
		end
	end

	for i,v in pairs(World.Map[25].npcs) do
		if v.f then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[25].props) do
		if v.f == "Ella_sand" then
			v.g = 1
		end
	end

	Time.setHour(Day)
    GameState = Cutscene
	Play.scene = Play.Scenes[5]
end)
