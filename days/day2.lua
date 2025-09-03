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
end)
