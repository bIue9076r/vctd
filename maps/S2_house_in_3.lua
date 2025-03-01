World.Map[25] = MapObj.new(Planks)

World.Map[25]:setLineV(8,1,7,Void)
World.Map[25]:setLineV(9,1,7,Void)
World.Map[25]:setLineV(10,1,7,Void)
World.Map[25]:setLineV(11,1,7,Void)
World.Map[25]:setLineH(1,1,11,Void)

World.Map[25]:setTile(5,2,Planks)
World.Map[25]:setLineV(7,4,5,Stairs)
World.Map[25]:setTile(7,3,Stairs,AntiVoid)
World.Map[25]:setLineV(6,3,5,Planks,Bar_R)
World.Map[25]:setTile(6,2,Planks,Bar_BR)
World.Map[25]:setTile(7,2,Planks,Bar_B)

--World.Map[25]:addWall(Box.new(0,0,8,14))
--World.Map[25]:addWall(Box.new(8,0,14,2))
--World.Map[25]:addWall(Box.new(10,4,0.1,6))
--World.Map[25]:addWall(Box.new(8,10,2,0.1))

World.Map[25]:addWall(Box.new(12.2,6.5,1.8,0.1,1,1,function()
	Map = World.Map[23]
	setPlr(Plr.x,7.5)
end))
