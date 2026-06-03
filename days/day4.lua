Days.newDay(4,function()
	Story.set("Power_Up_2",true)
	for i,v in ipairs(House.house) do
		if v.HouseHold == 2 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Sean" then
					v.g = 1
				end
			end
		end
		
		if v.HouseHold == 3 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Karina" then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 4 then
			v.isOpen = true
		end
		
		if v.HouseHold == 6 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Fredrick" then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 7 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Mollie" then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 8 then
			v.isOpen = false
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 1].npcs) do
				if v.f == "Rachel" then
					v.g = 1
				end
			end

			for i,v in pairs(World.Map[I + 2].npcs) do
				if v.f == "Lassie" then
					v.g = 1
				end
			end
		end
	end

	for i,v in pairs(World.Map[1].npcs) do
		if v.f == "Zoey" then
			v.g = 1
		end

		if v.f == "Tracey" then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[1].props) do
		if v.f == "Stuff" then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[7].npcs) do
		if v.f == "Vivian" then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[25].npcs) do
		if v.f == "Jami" then
			v.g = 1
		end
	end

	Play.scene = Play.Scenes[6]
	Play.scene.AfterEffect = function(self)
		local I
		for i = 1,10 do
			if House.house[i].HouseHold == 4 then
				I = Families.HouseMap[i]
				for i, v in pairs(World.Map[I + 1].npcs) do
					if v.f == "party" then
						v.g = 0
					end
				end
				for i, v in pairs(World.Map[I + 2].npcs) do
					if v.f == "party" then
						v.g = 0
					end
				end
				for i, v in pairs(World.Map[I + 3].npcs) do
					if v.f == "Karly" then
						v.i = 108
					end
				end
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
end)
