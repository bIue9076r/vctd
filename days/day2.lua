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
	for i,v in ipairs(House.house) do
		if v.HouseHold == 5 then
			I = 13 + 6*(i - 1)
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

	for i,v in pairs(World.Map[25].npcs) do
		if v.f then
			v.g = 0
			if v.f == "Wilkie" and Story.get() then
				if Story.get("Toolbox_Wilkie_1") then
					
				elseif Story.get("Toolbox_Wilkie_2") then
					
				end
			end
		end
	end

	Map = World.Map[25]
	setPlr(1.7,8.7)
end)
