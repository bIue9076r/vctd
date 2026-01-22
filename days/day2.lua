Days.newDay(2,function()
	for i,v in pairs(World.Map[1].npcs) do
		if v.f then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[3].npcs) do
		if v.f == "Zoey" then
			v.i = 49
		end
	end

	for i,v in pairs(World.Map[1].props) do
		if v.f then
			v.g = 1
		end
	end
	
	for i,v in ipairs(House.house) do
		if v.HouseHold == 1 then
			v.isOpen = false
		end
		
		if v.HouseHold == 5 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 1
				end

				if v.f == "Box" then
					v.g = 0
				end
				if v.f == "Jami_2" then
					v.g = 0
				end
			end
		end

		if v.HouseHold == 2 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 2].npcs) do
				if v.f then
					v.g = 1
				end
			end

			for i,v in pairs(World.Map[I + 3].npcs) do
				if v.f then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 3 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 0
				end
			end
		end

		if v.HouseHold == 6 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 4 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f then
					v.g = 1
				end
			end
		end

		if v.HouseHold == 8 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 2].npcs) do
				if v.f then
					v.g = 1
				end
			end

			for i,v in pairs(World.Map[I + 1].npcs) do
				if v.f then
					v.g = 0
				end
			end
		end
	end

	for i,v in pairs(World.Map[25].npcs) do
		if v.f then
			v.g = 0
			if v.f == "Wilkie" then
				if Story.get("Toolbox_Wilkie_2") then
					
				elseif Story.get("Toolbox_Wilkie_1") then

				end
			end
			
			if v.f == "Fredrick" then
				for i = 1,10 do
					if House.house[i].HouseHold == 6 and (not House.house[i].isKiller) then
						if Story.get("Fredrick_Exercise_2") then
							
						elseif Story.get("Fredrick_Exercise_1") then

						end
					end
				end
			end

			if v.f == "Mollie" then
				for i = 1,10 do
					if House.house[i].HouseHold == 7 and House.house[i].isKiller then
						v.i = 37
					end
				end
			end

			if v.f == "Sean" then
				v.g = 1
			end

			if v.f == "Ella" then
				v.g = 1
			end

			if v.f == "Jami" then
				v.g = 1
			end
		end
	end

	for i,v in pairs(World.Map[25].props) do
		if v.f then
			v.g = 0
		end
	end

	Map = World.Map[25]
	setPlr(1.7,8.7)
	Time.setHour(Noon)
	Mood.set(-4/2.5)

	GameState = Cutscene
	Play.scene = Play.Scenes[4]
end)
