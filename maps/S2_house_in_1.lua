World.Map[22] = MapObj.new(Planks)
World.Map[22]:setLineV(6,1,7,Carpet_V)
World.Map[22]:setLineV(8,1,7,Wall)
World.Map[22]:setLineV(4,1,7,Wall)

World.Map[22]:setLineH(9,2,11,Wall)
World.Map[22]:setLineH(9,1,11,Wall)

--World.Map[22]:setLineV(1,1,5,Counter_B_V)
--World.Map[22]:setTile(1,3,Sink_B_V_E)
--World.Map[22]:setTile(1,2,Stove_B_V_I)
--World.Map[22]:setTile(2,1,Fridge)
World.Map[22]:setTile(4,2,Planks)
World.Map[22]:setTile(8,5,Planks)

--World.Map[22]:setTile(9,3,Bookshelf)
--World.Map[22]:setTile(10,3,Bookshelf)
--World.Map[22]:setTile(11,3,Bookshelf)

World.Map[22]:setTile(1,3,BigTable_B)
World.Map[22]:setTile(1,2,BigTable_T)

World.Map[22]:setLineH(1,6,3,Wall)
World.Map[22]:setLineH(1,7,3,Wall)

--World.Map[22]:addWall(Box.new(0,0,1,10))
--World.Map[22]:addWall(Box.new(0,10,8,4))
--World.Map[22]:addWall(Box.new(2.75,0,0.5,1))
--World.Map[22]:addWall(Box.new(6,6,2,4))
--World.Map[22]:addWall(Box.new(6,0,2,4))
--World.Map[22]:addWall(Box.new(14,0,8,4))
--World.Map[22]:addWall(Box.new(16,4,6,0.5))
--World.Map[22]:addWall(Box.new(14,4,2,6))
--World.Map[22]:addWall(Box.new(14,12,2,2))
--World.Map[22]:addWall(Box.new(20.4,8.88,1.6,2))

World.Map[22]:addWall(Box.new(9.9,0,2.2,0.1,1,1,function()
	Map = World.Map[21]
	setPlr(18.5,5.5)
end))

World.Map[22]:addWall(Box.new(9.9,13.9,2.2,0.1,1,1,function()
	Map = World.Map[23]
	setPlr(10.5,12.5)
end))
