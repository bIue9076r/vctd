World.Map[21] = MapObj.new(Grass_1)

World.Map[21]:setLineV(1,1,7,Grass_1,Wall)
World.Map[21]:setLineV(2,1,7,Grass_1,Wall)
World.Map[21]:setLineV(3,1,7,Grass_1,Wall)
World.Map[21]:setLineV(4,1,7,Grass_1,Wall)
World.Map[21]:setLineV(5,1,7,Grass_1,Wall)
World.Map[21]:setLineV(6,1,7,Grass_1,Wall)
World.Map[21]:setLineV(7,1,7,Grass_1,Wall)
World.Map[21]:setLineV(8,1,7,Grass_1,Wall)
World.Map[21]:setLineV(9,1,7,Grass_1,Wall)
World.Map[21]:setLineV(10,1,7,Grass_1,Wall)
World.Map[21]:setLineV(11,1,7,Grass_1,Wall)

World.Map[21]:setLineH(1,2,11,Concrete)
World.Map[21]:setLineH(1,3,11,Grass_1)

World.Map[21]:setTile(10,3,GrassPath,RoofTop)

World.Map[21]:setTile(1,1,Road_B)
World.Map[21]:setTile(2,1,Road_N_B)
World.Map[21]:setTile(3,1,Road_B)
World.Map[21]:setTile(4,1,Road_N_B)
World.Map[21]:setTile(5,1,Road_B)
World.Map[21]:setTile(6,1,Road_N_B)
World.Map[21]:setTile(7,1,Road_B)
World.Map[21]:setTile(8,1,Road_N_B)
World.Map[21]:setTile(9,1,Road_B)
World.Map[21]:setTile(10,1,Road_N_B)
World.Map[21]:setTile(11,1,Road_B)

World.Map[21]:setLineV(2,1,3,Asphalt)
World.Map[21]:setLineV(3,1,3,Asphalt)
World.Map[21]:setLineV(4,1,3,Asphalt)
World.Map[21]:setLineV(5,1,3,Asphalt)

World.Map[21]:addWall(Box.new(0,6.5,18,7.5))
World.Map[21]:addWall(Box.new(20,6.5,2,7.5))

World.Map[21]:addWall(Box.new(17.9,7,2.2,0.1,1,1,function()
	if House[2].isOpen then
		Map = World.Map[22]
		setPlr(10.5,0.5)
	else
		-- Door is locked
		IsTalking = true
			
		World.dtbl = {
			s = "*The Door is Locked*",
			n = Varisa,
			v = "Normal",
		}
	end
end))

World.Map[21]:addWall(Box.new(0,0,0.1,5,1,1,function()
	print("To House Down 2")
end))

World.Map[21]:addWall(Box.new(21.9,0,0.1,5,1,1,function()
	Map = World.Map[7]
	setPlr(0.5,Plr.y)
end))

World.Map[21]:addWall(Box.new(0,0,22,0.1,1,1,function()
	Map = World.Map[1]
	setPlr(Plr.x,12.5)
end))
