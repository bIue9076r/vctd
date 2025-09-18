Days.newDay(2,function()
	for i,v in pairs(World.Map[1].npcs) do
		if v.f then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[1].props) do
		if v.f then
			v.g = 1
		end
	end

	local I
	local I2
	for i,v in ipairs(House.house) do
		if v.HouseHold == 5 then
			I = Families.HouseMap[i]
		end

		if v.HouseHold == 2 then
			I2 = Families.HouseMap[i]
		end

		if v.HouseHold == 1 then
			v.isOpen = false
		end
	end

	for i,v in pairs(World.Map[I].npcs) do
		if v.f then
			v.g = 1
		end
	end
	
	for i,v in pairs(World.Map[I2 + 2].npcs) do
		if v.f then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[I2 + 3].npcs) do
		if v.f then
			v.g = 1
		end
	end

	for i,v in pairs(World.Map[25].npcs) do
		if v.f then
			v.g = 0
			if v.f == "Wilkie" then
				if Story.get("Toolbox_Wilkie_1") then
					
				elseif Story.get("Toolbox_Wilkie_2") then

				end
			end

			if v.f == "Mollie" then
				for i = 1,10 do
					if House.house[i].HouseHold == 7 and House.house[i].isKiller then
						v.i = 37
					end
				end
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

	GameState = Cutscene
	--Play.scene = Play.Scenes[4]
end)
