Map_Your_House = MapObj.new(Planks)

Map_Your_House:setTile(1,4,Wall)
Map_Your_House:setLineH(4,4,11,Wall)
Map_Your_House:setLineH(1,6,2,Carpet)

Map_Your_House:addWall(Box.new(0,6,2,2))
Map_Your_House:addWall(Box.new(6,6,16,2))
Map_Your_House:addWall(Box.new(0,10,0.5,2,1,1,function()
	h_wb_trigger = h_wb_trigger or ticker.new()
	if h_wb_trigger:get() >= 0 then
		Time.tick()
		Time.print()
		h_wb_trigger:reset()
	end
	h_wb_trigger()
end))

Map_Your_House:addNpc(Npc.new(10,9,Tracey,1,0,function(self)
	local t = Time.getHour()
	if t >= Sunrise and t <= Sunset then
		self.g = 0
		self.i = 1
	else
		self.g = 1
		self.i = -1 -- Tracey doesn't want to talk at night
	end
end))