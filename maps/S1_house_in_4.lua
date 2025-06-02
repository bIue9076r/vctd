World.Map[28] = MapObj.new(Planks)
World.Map[28]:setLineH(7,1,11,Wall)
World.Map[28]:setLineV(1,1,7,Void)
World.Map[28]:setLineV(2,1,7,Void)
World.Map[28]:setLineV(3,1,7,Void)
World.Map[28]:setLineV(4,1,7,Void)
World.Map[28]:setLineV(5,1,7,Void)
World.Map[28]:setLineV(6,1,7,Wall)

World.Map[28]:addWall(Box.new(21.9,2,0.1,1,1,1,function()
	Map = World.Map[15]
	setPlr(8.5,Plr.y)
end))

if House[1].HouseTrait == "Neat" then
	
end

if House[1].HouseTrait == "Messy" then
	
end

if House[1].HouseTrait == "Fanatic" then
	
end
