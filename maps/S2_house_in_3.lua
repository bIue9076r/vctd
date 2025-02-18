World.Map[17] = MapObj.new(Planks)

World.Map[17]:setLineV(1,1,7,Void)
World.Map[17]:setLineV(2,1,7,Void)
World.Map[17]:setLineV(3,1,7,Void)
World.Map[17]:setLineV(4,1,7,Void)
World.Map[17]:setLineH(5,1,11,Void)
World.Map[17]:setTile(5,2,Planks)
World.Map[17]:setLineV(5,3,4,Stairs)
World.Map[17]:setTile(5,5,Stairs,AntiVoid)
World.Map[17]:setLineV(6,3,5,Planks,Bar_L)
World.Map[17]:setTile(6,6,Planks,Bar_TL)
World.Map[17]:setTile(5,6,Planks,Bar_T)

World.Map[17]:addWall(Box.new(0,0,8,14))
World.Map[17]:addWall(Box.new(8,0,14,2))
World.Map[17]:addWall(Box.new(10,4,0.1,6))
World.Map[17]:addWall(Box.new(8,10,2,0.1))

World.Map[17]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[15]
	setPlr(Plr.x,7.75)
end))
