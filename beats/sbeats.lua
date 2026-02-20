Story.setBeat("Toolbox_Wilkie_1",function(npc)
	--World.Map[1].npcs[2].i = 29
end)

Story.setBeat("Toolbox_Wilkie_2",function(npc)
	World.Map[1].npcs[2].i = 29
	for i = 1,10 do
		if House.house[i].HouseHold == Families.HouseHold["Rachel"] then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 2].npcs) do
				if v.f == "Lassie" then
					v.i = 62
				end
			end
		end
	end
end)


Story.setBeat("Screw_Drive_Jami",function(npc)
	if Story.get("Toolbox_Wilkie_2") then
		World.Map[1].npcs[2].i = 31
		Plr.inv:add(Item_Screwdriver)
	elseif Story.get("Toolbox_Wilkie_1") then
		World.Map[1].npcs[2].i = 30
		Plr.inv:add(Item_Screwdriver)
	elseif not Story.get("Rachel_Guitar_1") then
		World.Map[1].npcs[2].i = 32
		Plr.inv:add(Item_Screwdriver)
	end
end)

Story.setBeat("Rachel_Guitar_1",function(npc)
	World.Map[1].props[1].g = 1
	Plr.inv:add(Rachel_Guitar_Broke)
	--World.Map[1].npcs[2].i = 29
end)

Story.setBeat("Mollie_Breakup_1",function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 2 then
			House.house[i].isOpen = true
		end
	end
end)

Story.setBeat("Mollie_Breakup_2",function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 2 then
			local I = Families.HouseMap[i]
			World.Map[I + 1].npcs[1].i = -8
		end
	end
end)

Story.setBeat("Mollie_Breakup_3",function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 2 then
			local I = Families.HouseMap[i]
			World.Map[I + 1].npcs[3].i = -9
		end
	end
end)

Story.setBeat("Mollie_Breakup_4",function(npc)
	for i,v in pairs(World.Map[25].npcs) do
		if v.f == "Mollie" then
			for i = 1,10 do
				if House.house[i].HouseHold == 7 and not(House.house[i].isKiller) then
					v.i = 38
				end
			end
		end
	end
end)

Story.setBeat("Karina_1",function(npc)
	Plr.inv:add(Item_Crucifix)
end)

Story.setBeat("Brian_Trash_1", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 4 then
			House.house[i].isOpen = true
		end
	end
end)

Story.setBeat("Brian_Trash_2", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 4 then
			local I = Families.HouseMap[i]
			World.Map[I + 5].npcs[1].g = 1
			-- change to "npc.g = 1" later
			World.Map[I].npcs[3].i = -13
		end
	end
end)

Story.setBeat("Brian_Trash_3", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 4 then
			local I = Families.HouseMap[i]
			World.Map[I].npcs[2].i = 42
		end
	end
end)

Story.setBeat("Fredrick_Exercise_1", function(npc)
	
end)

Story.setBeat("Lassie_Baking_1", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 8 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 1].npcs) do
				if v.f == "Fridge" then
					v.i = -15
				end
			end
		end
	end
end)

Story.setBeat("Lassie_Baking_2", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 8 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I + 1].npcs) do
				if v.f == "Lassie" then
					v.i = 46
				end
			end
		end
	end
end)

Story.setBeat("Lassie_Baking_3", function(npc)
	
end)

Story.setBeat("Zoey_Errands_1", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 5 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Box" then
					v.i = -17
				end
				if v.f == "Jami_2" then
					if v.i == 51 then
						v.i = 52
					end
				end
			end
		end
	end
end)

Story.setBeat("Zoey_Errands_2", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 5 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Box" then
					v.g = 1
				end
				if v.f == "Jami_2" then
					if v.i == 51 then
						v.i = 53
					end
				end
			end
		end
	end

	for i,v in pairs(World.Map[3].npcs) do
		if v.f == "Zoey" then
			v.i = 50
		end
	end
end)

Story.setBeat("Zoey_Errands_3", function(npc)

end)

Story.setBeat("Jami_Experiment_1_1", function(npc)
	Plr.inv:add(Item_WRayDetector)
end)

Story.setBeat("Jami_Experiment_1_2", function(npc)
	for i = 1,10 do
		if House.house[i].HouseHold == 5 then
			local I = Families.HouseMap[i]
			for i,v in pairs(World.Map[I].npcs) do
				if v.f == "Jami_2" then
					v.i = 52
				end
			end
		end
	end
end)

Story.setBeat("Jami_Experiment_1_3", function(npc)
	
end)

Story.setBeat("Power_Up_1", function(npc)
	
end)

Story.setBeat("Power_Up_2", function(npc)
	
end)

Story.setBeat("Jami_Experiment_2_1", function(npc)
	if not Story.get("Jami_Experiment_1_1") then
		Plr.inv:add(Item_WRayDetector)
	end
end)

Story.setBeat("Jami_Experiment_3_1", function(npc)
	
end)

Story.setBeat("Karina_Investigation_1", function(npc)
	
end)

Story.setBeat("Zach_Gardening_1", function(npc)
	
end)

Story.setBeat("Vivian_Show_1", function(npc)
	
end)

Story.setBeat("Sean_1", function(npc)
	
end)

Story.setBeat("Ella_1", function(npc)
	
end)

Story.setBeat("Mollie_Vengeance_1", function(npc)
	
end)

Story.setBeat("Karina_Breakthrough_1", function(npc)
	
end)

Story.setBeat("Zach_Details_1", function(npc)
	
end)

Story.setBeat("Wilkie_Details_1", function(npc)
	
end)

Story.setBeat("Jami_Suspicions_1_1", function(npc)
	
end)

Story.setBeat("Jami_Suspicions_2_1", function(npc)
	
end)

Story.setBeat("Jami_Suspicions_3_1", function(npc)
	
end)


---

Story.setBeat("Find", function(npc)
	npc.i = -19
end)