World.Map[7] = MapObj.new(Grass_1)

World.Map[7]:setTile(1,1,Road_N_B)
World.Map[7]:setTile(2,1,Road_B)
World.Map[7]:setTile(3,1,Road_N_B)
World.Map[7]:setTile(4,1,Road_B)
World.Map[7]:setTile(5,1,Road_N_B)
World.Map[7]:setTile(6,1,Road_B)
World.Map[7]:setTile(7,1,Road_N_B)

World.Map[7]:setLineH(1,2,8,Concrete)
World.Map[7]:setTile(8,1,Concrete)

World.Map[7]:addWall(Box.new(0,0,0.1,6,1,1,function()
	print("To House Down")
end))

World.Map[7]:addWall(Box.new(0,0,22,0.1,1,1,function()
	Map = World.Map[6]
	setPlr(Plr.x,12.5)
end))
