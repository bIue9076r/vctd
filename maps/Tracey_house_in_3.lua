World.Map[4] = MapObj.new(Planks)

World.Map[4]:setLineV(1,1,7,Void)
World.Map[4]:setLineV(2,1,7,Void)
World.Map[4]:setLineV(3,1,7,Void)
World.Map[4]:setLineV(4,1,7,Void)
World.Map[4]:setLineH(5,1,11,Void)

World.Map[4]:addWall(Box.new(0,0,8,14))
World.Map[4]:addWall(Box.new(8,0,14,2))

World.Map[4]:addWall(Box.new(7.9,13,2.2,0.1,1,1,function()
	print("lower")
	Map = World.Map[3]
end))
