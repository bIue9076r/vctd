World.Map[18] = MapObj.new(Grass_1)

World.Map[18]:setTile(1,7,Road_N_T)
World.Map[18]:setTile(2,7,Road_T)
World.Map[18]:setTile(3,7,Road_N_T)
World.Map[18]:setTile(4,7,Road_T)
World.Map[18]:setTile(5,7,Road_N_T)
World.Map[18]:setTile(6,7,Road_T)
World.Map[18]:setTile(7,7,Road_N_T)

World.Map[18]:setLineH(1,6,8,Concrete)
World.Map[18]:setTile(8,7,Concrete)

World.Map[18]:addWall(Box.new(0,8,0.1,6,1,1,function()
	
end))

World.Map[18]:addWall(Box.new(0,13.9,22,0.1,1,1,function()
	
end))
