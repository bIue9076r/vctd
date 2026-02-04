Days.newDay(3,function()
	for i,v in pairs(World.Map[1].npcs) do
		if v.f == "Zoey" then
			v.g = 0
		end
	end
	
	for i,v in pairs(World.Map[3].npcs) do
		if v.f == "Zoey" then
			v.g = 1
		end
	end

	for i,v in ipairs(House.house) do
		if v.HouseHold == 3 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 4 then
			v.isOpen = true
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

		if v.HouseHold == 7 then
			v.isOpen = true
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

		if v.f == "Jami" then
			v.g = 0

			if not Story.get("Jami_Experiment_1_3") then
				v.i = 63
				if not Story.get("Jami_Experiment_1_1") then
					v.i = 58
				end
			end
		end
	end

	for i,v in pairs(World.Map[25].props) do
		if v.f == "Ella_sand" then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[26].npcs) do
		if v.f then
			v.g = 0
		end
	end

	for i,v in pairs(World.Map[10].npcs) do
		if v.f == "Rachel" then
			v.g = 0
		elseif v.f == "Tracey" then
			v.g = 0
		end
	end

	for i,v in pairs(World.Map[10].props) do
		if v.f == "Stuff_day3" then
			v.g = 0
		elseif v.f == "Stuff_day1" then
			v.g = 1
		end
	end

	Mood.darkSet(2)
	Mood.set(-4/2.5)
	Time.setHour(Day)
    GameState = Cutscene
	setPlr(18.6,10.7)
	Play.scene = Play.Scenes[5]

	Story.set("Power_Up_1",true)
end)
