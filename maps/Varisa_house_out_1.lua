World.Map[8] = MapObj.new(Garage)

World.Map[8]:setLineV(1,1,7,Brick)
World.Map[8]:setLineV(6,1,7,Brick)
World.Map[8]:setLineV(7,1,7,Brick)
World.Map[8]:setLineV(8,1,7,Brick)
World.Map[8]:setLineV(9,1,7,Brick)
World.Map[8]:setLineV(10,1,7,Brick)
World.Map[8]:setLineV(11,1,7,Brick)

World.Map[8]:setLineH(2,1,5,Brick,1)
World.Map[8]:setLineH(1,6,11,Concrete)
World.Map[8]:setLineH(1,5,11,Grass_1)

World.Map[8]:setTile(10,5,Grass_S)
World.Map[8]:setTile(10,4,Brick_D)

World.Map[8]:setTile(1,7,Road_N_T)
World.Map[8]:setTile(2,7,Road_T)
World.Map[8]:setTile(3,7,Road_N_T)
World.Map[8]:setTile(4,7,Road_T)
World.Map[8]:setTile(5,7,Road_N_T)
World.Map[8]:setTile(6,7,Road_T)
World.Map[8]:setTile(7,7,Road_N_T)
World.Map[8]:setTile(8,7,Road_T)
World.Map[8]:setTile(9,7,Road_N_T)
World.Map[8]:setTile(10,7,Road_T)
World.Map[8]:setTile(11,7,Road_N_T)

World.Map[8]:setLineV(2,5,7,Asphalt)
World.Map[8]:setLineV(3,5,7,Asphalt)
World.Map[8]:setLineV(4,5,7,Asphalt)
World.Map[8]:setLineV(5,5,7,Asphalt)

World.Map[8]:addWall(Box.new(0,0,18,8))
World.Map[8]:addWall(Box.new(18,0,2,7))
World.Map[8]:addWall(Box.new(20,0,2,8))

World.Map[8]:addWall(Box.new(17.9,7,2.2,0.1,1,1,function()
	print("Enter House")
	Map = World.Map[2]
	setPlr(10.5,12.5)
end))

World.Map[8]:addWall(Box.new(0,8.5,0.1,5.5,1,1,function()
	print("To Next House")
end))

World.Map[8]:addWall(Box.new(21.9,8.5,0.1,5.5,1,1,function()
	print("To Tracey's House")
	Map = World.Map[1]
	setPlr(0.5,Plr.y)
end))

World.Map[8]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	print("To House 2 Down")
end))
