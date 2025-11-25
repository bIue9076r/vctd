Story.setBeat("Toolbox_Wilkie_1",function()
	--World.Map[1].npcs[2].i = 29
end)

Story.setBeat("Toolbox_Wilkie_2",function()
	World.Map[1].npcs[2].i = 29
end)


Story.setBeat("Screw_Drive_Jami",function()
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

Story.setBeat("Rachel_Guitar_1",function()
	World.Map[1].props[1].g = 1
	Plr.inv:add(Rachel_Guitar_Broke)
	--World.Map[1].npcs[2].i = 29
end)

Story.setBeat("Mollie_Breakup_1",function()
	for i = 1,10 do
		if House.house[i].HouseHold == 2 then
			House.house[i].isOpen = true
		end
	end
end)

Story.setBeat("Mollie_Breakup_2",function()
	for i = 1,10 do
		if House.house[i].HouseHold == 2 then
			local I = Families.HouseMap[i]
			World.Map[I + 1].npcs[1].i = -8
		end
	end
end)

Story.setBeat("Mollie_Breakup_3",function()
	for i = 1,10 do
		if House.house[i].HouseHold == 2 then
			local I = Families.HouseMap[i]
			World.Map[I + 1].npcs[3].i = -9
		end
	end
end)

Story.setBeat("Mollie_Breakup_4",function()
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

Story.setBeat("Karina_1",function()
	
end)

Story.setBeat("Brian_Trash_1", function()
	for i = 1,10 do
		if House.house[i].HouseHold == 4 then
			House.house[i].isOpen = true
		end
	end
end)

Story.setBeat("Brian_Trash_2", function()
	for i = 1,10 do
		if House.house[i].HouseHold == 4 then
			local I = Families.HouseMap[i]
			World.Map[I + 5].npcs[1].g = 1
		end
	end
end)
