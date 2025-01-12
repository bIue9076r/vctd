World.Map[6] = MapObj.new(Grass_1)

World.Map[6]:setTile(1,7,Road_T)
World.Map[6]:setTile(2,7,Road_N_T)
World.Map[6]:setTile(3,7,Road_T)
World.Map[6]:setTile(4,7,Road_N_T)
World.Map[6]:setTile(5,7,Road_T)
World.Map[6]:setTile(6,7,Road_N_T)
World.Map[6]:setTile(7,7,Road_T)
World.Map[6]:setTile(8,7,Road_N_T)
World.Map[6]:setTile(9,7,Road_T)
World.Map[6]:setTile(10,7,Road_N_T)
World.Map[6]:setTile(11,7,Road_T)

World.Map[6]:setLineV(2,5,7,Asphalt)
World.Map[6]:setLineV(3,5,7,Asphalt)
World.Map[6]:setLineV(4,5,7,Asphalt)
World.Map[6]:setLineV(5,5,7,Asphalt)

World.Map[6]:addWall(Box.new(0,8,0.1,6,1,1,function()
	print("To Tracey's House")
	Map = World.Map[1]
	setPlr(20.5,Plr.y)
end))

World.Map[6]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	print("To Roundabout Down")
end))
