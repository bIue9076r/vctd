World.Map[1] = MapObj.new(Planks)

World.Map[1]:setLineV(1,1,7,Wall,1)
World.Map[1]:setLineV(6,1,7,Wall,1)
World.Map[1]:setLineV(7,1,7,Wall)
World.Map[1]:setLineV(8,1,7,Wall)
World.Map[1]:setLineV(9,1,7,Wall)
World.Map[1]:setLineV(10,1,7,Wall)
World.Map[1]:setLineV(11,1,7,Wall)

World.Map[1]:setLineH(2,1,5,Wall,1)

World.Map[1]:setLineH(1,7,11,Grass_1)
World.Map[1]:setLineH(1,6,11,Grass_1)

World.Map[1]:addWall(Box.new(12,0,10,10.1))
World.Map[1]:addWall(Box.new(0,10,2,0.1))
World.Map[1]:addWall(Box.new(10,10,2,0.1))

World.Map[1]:addNpc(Npc.new(7.6,4.7,Tracey,1,0,nil))