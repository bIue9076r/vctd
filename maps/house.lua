World.Map[1] = MapObj.new(Planks)

World.Map[1]:setLineV(1,1,7,Wall,1)
World.Map[1]:setLineV(6,1,7,Wall,1)
World.Map[1]:setLineV(7,1,7,Wall)
World.Map[1]:setLineV(8,1,7,Wall)
World.Map[1]:setLineV(9,1,7,Wall)
World.Map[1]:setLineV(10,1,7,Wall)
World.Map[1]:setLineV(11,1,7,Wall)

World.Map[1]:setLineH(2,1,5,Wall,1)
World.Map[1]:setLineH(1,6,11,Concrete)
World.Map[1]:setLineH(1,5,11,Grass_1)

World.Map[1]:setTile(1,7,Road_T)
World.Map[1]:setTile(2,7,Road_N_T)
World.Map[1]:setTile(3,7,Road_T)
World.Map[1]:setTile(4,7,Road_N_T)
World.Map[1]:setTile(5,7,Road_T)
World.Map[1]:setTile(6,7,Road_N_T)
World.Map[1]:setTile(7,7,Road_T)
World.Map[1]:setTile(8,7,Road_N_T)
World.Map[1]:setTile(9,7,Road_T)
World.Map[1]:setTile(10,7,Road_N_T)
World.Map[1]:setTile(11,7,Road_T)

World.Map[1]:setLineV(2,5,7,Asphalt)
World.Map[1]:setLineV(3,5,7,Asphalt)
World.Map[1]:setLineV(4,5,7,Asphalt)
World.Map[1]:setLineV(5,5,7,Asphalt)

World.Map[1]:addWall(Box.new(12,0,8,10.1))
World.Map[1]:addWall(Box.new(0,8,2,0.1))
World.Map[1]:addWall(Box.new(10,8,2,0.1))

World.Map[1]:addNpc(Npc.new(7.6,4.7,Tracey,1,0,function()
	-- Lets go inside
end))