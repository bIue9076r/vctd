World.Map[19] = MapObj.new(Grass_1)

World.Map[19]:setLineV(4,1,7,Concrete)
World.Map[19]:setLineV(7,1,7,Concrete)

World.Map[19]:setTile(5,1,Road_R)
World.Map[19]:setTile(6,1,Road_L)
World.Map[19]:setTile(5,2,Road_N_R)
World.Map[19]:setTile(6,2,Road_N_L)
World.Map[19]:setTile(5,3,Road_R)
World.Map[19]:setTile(6,3,Road_L)
World.Map[19]:setTile(5,4,Road_N_R)
World.Map[19]:setTile(6,4,Road_N_L)
World.Map[19]:setTile(5,5,Road_R)
World.Map[19]:setTile(6,5,Road_L)
World.Map[19]:setTile(5,6,Road_N_R)
World.Map[19]:setTile(6,6,Road_N_L)
World.Map[19]:setTile(5,7,Road_R)
World.Map[19]:setTile(6,7,Road_L)

World.Map[19]:addWall(Box.new(0,0,22,0.1,1,1,function()
	Map = World.Map[18]
	setPlr(Plr.x,10.5)
end))

World.Map[19]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	Map = World.Map[20]
	setPlr(Plr.x,0.5)
end))
