World.Map[11] = MapObj.new(Planks)
World.Map[11]:setLineH(7,1,11,Wall)
World.Map[11]:setLineV(1,1,7,Void)
World.Map[11]:setLineV(2,1,7,Void)
World.Map[11]:setLineV(3,1,7,Void)
World.Map[11]:setLineV(4,1,7,Void)
World.Map[11]:setLineV(5,1,7,Void)
World.Map[11]:setLineV(6,1,7,Wall)

World.Map[11]:addWall(Box.new(0,0,12,14))
World.Map[11]:addWall(Box.new(12,0,10,2))

World.Map[11]:addWall(Box.new(21.9,2,0.1,1,1,1,function()
	Map = World.Map[9]
	setPlr(8.5,Plr.y)
end))
