World.Map[5] = MapObj.new(Grass_1)

World.Map[5]:addWall(Box.new(11.9,13.9,2.2,0.1,1,1,function()
	print("Exit Backyard")
	Map = World.Map[3]
	setPlr(12.5,1.5)
end))
