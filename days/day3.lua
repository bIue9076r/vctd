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
		if v.HouseHold == 1 then
			v.isOpen = true
		end
		
		if v.HouseHold == 2 then
			v.isOpen = true
		end
		
		if v.HouseHold == 3 then
			--v.isOpen = true
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 0
					if v.f == "Karina" then
						v.i = 76
					end
				end
			end
		end

		if v.HouseHold == 4 then
			v.isOpen = true
			if v.isKiller then
				local I = Families.HouseMap[i]
				for i,v in pairs(World.Map[I + 3].npcs) do
					v.g = 0
				end
				
				for i,v in pairs(World.Map[I + 3].props) do
					v.g = 0
				end

				for i,v in pairs(World.Map[26]) do
					if v.f == "Vivian" then
						v.i = 72
					end

					if v.f == "Brian" then
						v.i = 73
					end
				end
			end
		end

		if v.HouseHold == 5 then
			v.isOpen = true
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
		
		if v.HouseHold == 6 then
			--v.isOpen = true
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 0
					if v.isKiller then
						v.i = 75
					else
						if math.random(1,2) == 2 then
							v.i = 75
						else
							v.i = 74
						end
					end
				end
			end
		end

		if v.HouseHold == 7 then
			v.isOpen = true
			if v.isKiller then
				local I = Families.HouseMap[i]
				for i,v in pairs(World.Map[I + 3].npcs) do
					v.g = 0
				end
				
				for i,v in pairs(World.Map[I + 3].props) do
					v.g = 0
				end

				for i,v in pairs(World.Map[26]) do
					if v.f == "Mollie" then
						v.i = 72
					end
				end
			end
		end

		if v.HouseHold == 8 then
			v.isOpen = true
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 1].npcs) do
				if v.f then
					v.g = 1
				end
			end
			
			if v.isKiller then
				for i,v in pairs(World.Map[I + 3].npcs) do
					v.g = 0
				end
				
				for i,v in pairs(World.Map[I + 3].props) do
					v.g = 0
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
	
	Play.scene = Play.Scenes[5]
	Play.scene.AfterEffect = function(self)
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
		setPlr(18.6,10.7)
	end
	
	GameState = Fadeout

	Story.set("Power_Up_1",true)
end)
