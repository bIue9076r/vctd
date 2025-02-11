World.Map[18] = MapObj.new(Grass_1)

World.Map[18]:setTile(5,4,Road_N_T)
World.Map[18]:setTile(5,5,Road_N_B)
World.Map[18]:setTile(6,4,Road_T)
World.Map[18]:setTile(6,5,Road_B)
World.Map[18]:setTile(7,4,Road_N_T)
World.Map[18]:setTile(7,5,Road_N_B)
World.Map[18]:setTile(8,4,Road_T)
World.Map[18]:setTile(8,5,Road_B)
World.Map[18]:setTile(9,4,Road_N_T)
World.Map[18]:setTile(9,5,Road_N_B)
World.Map[18]:setTile(10,4,Road_T)
World.Map[18]:setTile(10,5,Road_B)
World.Map[18]:setTile(11,4,Road_N_T)
World.Map[18]:setTile(11,5,Road_N_B)

World.Map[18]:setLineH(4,3,11,Concrete)
World.Map[18]:setLineH(4,6,11,Concrete)
World.Map[18]:setLineV(4,1,7,Concrete)
World.Map[18]:setLineV(7,1,2,Concrete)
World.Map[18]:setTile(7,7,Concrete)

World.Map[18]:setTile(5,1,Road_R)
World.Map[18]:setTile(6,1,Road_L)
World.Map[18]:setTile(5,2,Road_N_R)
World.Map[18]:setTile(6,2,Road_N_L)
World.Map[18]:setTile(5,3,Road_R)
World.Map[18]:setTile(6,3,Road_L)
World.Map[18]:setTile(5,4,Road_N_R)
World.Map[18]:setTile(6,4,Road_N_L)
World.Map[18]:setTile(5,5,Road_R)
World.Map[18]:setTile(6,5,Road_L)
World.Map[18]:setTile(5,6,Road_N_R)
World.Map[18]:setTile(6,6,Road_N_L)
World.Map[18]:setTile(5,7,Road_R)
World.Map[18]:setTile(6,7,Road_L)

World.Map[18]:addWall(Box.new(21.9,3,0.1,5,1,1,function()
	Map = World.Map[13]
	setPlr(0.5,Plr.y + 6)
end))

World.Map[18]:addWall(Box.new(21.9,8,0.1,6,1,1,function()
	print("To House 3 Down")
end))

World.Map[18]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	print("To Vertical 2 (Down)")
end))
