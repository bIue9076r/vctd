World.Map[5] = MapObj.new(Grass_1)

World.Map[5]:setLineV(1,1,7,Wall)
World.Map[5]:setLineH(1,1,11,Wall)
World.Map[5]:setLineV(11,1,7,Wall)

World.Map[5]:addWall(Box.new(0,0,22,2))
World.Map[5]:addWall(Box.new(0,2,2,12))
World.Map[5]:addWall(Box.new(20,2,2,12))

World.Map[5]:addWall(Box.new(11.9,13.9,2.2,0.1,1,1,function()
	print("Exit Backyard")
	Map = World.Map[3]
	setPlr(12.5,1.5)
end))
