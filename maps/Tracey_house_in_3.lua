World.Map[4] = MapObj.new(Planks)

World.Map[4]:setLineV(1,1,7,Void)
World.Map[4]:setLineV(2,1,7,Void)
World.Map[4]:setLineV(3,1,7,Void)
World.Map[4]:setLineV(4,1,7,Void)
World.Map[4]:setLineH(5,1,11,Void)
World.Map[4]:setTile(5,2,Planks)
World.Map[4]:setTile(5,3,Stairs)
World.Map[4]:setLineV(5,4,5,Stairs,AntiVoid)

World.Map[4]:addWall(Box.new(0,0,8,14))
World.Map[4]:addWall(Box.new(8,0,14,2))
World.Map[4]:addWall(Box.new(10,4,0.1,6))
World.Map[4]:addWall(Box.new(8,10,2,0.1))

World.Map[4]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	print("lower")
	Map = World.Map[3]
	setPlr(Plr.x,7.75)
end))
