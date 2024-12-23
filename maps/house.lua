Map_Your_House = MapObj.new(Planks)

Map_Your_House:setTile(1,4,Wall)
Map_Your_House:setLineH(4,4,11,Wall)
Map_Your_House:setLineH(1,6,2,Carpet)

Map_Your_House:addWall(Box.new(0,6,2,2))
Map_Your_House:addWall(Box.new(6,6,16,2))
Map_Your_House:addWall(Box.new(0,10,0.5,2,1,1,function()
	h_wb_trigger = h_wb_trigger or ticker.new()
	if h_wb_trigger:get() >= 50 then
		Time = Time + 1
		if Time >= 24 then
			Time = 0
		end
		print(Time)
		h_wb_trigger:reset()
	end
	h_wb_trigger()
end))

Map_Your_House:addNpc({x=10,y=9,c=Tracey,i=1})
