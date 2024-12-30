World.Map[2] = MapObj.new(Planks)
World.Map[2]:setLineV(6,1,7,Carpet_V)
World.Map[2]:setLineV(8,1,7,Wall)
World.Map[2]:setLineV(4,1,7,Wall)

World.Map[2]:setLineH(1,5,3,Wall)
World.Map[2]:setLineH(1,6,3,Wall)
World.Map[2]:setLineH(1,7,3,Wall)

World.Map[2]:setTile(4,3,Planks)
World.Map[2]:setTile(8,6,Planks)

World.Map[2]:setLineH(9,4,11,Wall)
World.Map[2]:setLineH(9,3,11,Wall)
World.Map[2]:setLineH(9,2,11,Wall)
World.Map[2]:setLineH(9,1,11,Wall)

World.Map[2]:addWall(Box.new(0,8,8,6))
World.Map[2]:addWall(Box.new(6,6,2,2))
World.Map[2]:addWall(Box.new(6,0,2,4))
World.Map[2]:addWall(Box.new(14,0,8,8))
World.Map[2]:addWall(Box.new(14,8,2,2))
World.Map[2]:addWall(Box.new(14,12,2,2))

World.Map[2]:addWall(Box.new(9.9,0,2.2,0.1,1,1,function()
	print("Enter Living Room")
end))

World.Map[2]:addWall(Box.new(9.9,13.9,2.2,0.1,1,1,function()
	print("Exit House")
	Map = World.Map[1]
	setPlr(19,12)
end))
