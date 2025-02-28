World.Map[24] = MapObj.new(Grass_1)

World.Map[24]:setLineH(1,1,11,Brick)
World.Map[24]:setLineV(1,1,7,Wall)
World.Map[24]:setLineV(11,1,7,Wall)

World.Map[24]:setLineV(5,2,7,GrassPath)
World.Map[24]:setTile(5,1,Brick_D)

World.Map[24]:addWall(Box.new(0,0,8,2))
World.Map[24]:addWall(Box.new(10,0,12,2))
World.Map[24]:addWall(Box.new(0,2,2,12))
World.Map[24]:addWall(Box.new(20,2,2,12))

World.Map[24]:addWall(Box.new(7.9,1,2.2,0.1,1,1,function()
	Map = World.Map[23]
	setPlr(8.5,12.5)
end))
