World.Map[60] = MapObj.new(Grass_1)

World.Map[60]:setLineV(1,1,7,Wall)
World.Map[60]:setLineH(1,1,11,Wall)
World.Map[60]:setLineV(11,1,7,Wall)

World.Map[60]:setLineV(7,2,6,GrassPath)
World.Map[60]:setTile(7,7,GrassPath,RoofTop)

World.Map[60]:addWall(Box.new(0,0,22,2))
World.Map[60]:addWall(Box.new(0,2,2,12))
World.Map[60]:addWall(Box.new(20,2,2,12))

World.Map[60]:addWall(Box.new(11.9,13.9,2.2,0.1,1,1,function()
	Map = World.Map[57]
	setPlr(12.5,1.5)
end))

Families.add[House.house[7].HouseHold](60)
