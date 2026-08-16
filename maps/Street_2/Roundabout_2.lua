World.Map[79] = MapObj.new(Grass_1)

World.Map[79]:addWall(Box.new(0,9.1,0.1,4.9,1,1,function()
	Map = World.Map[31]
	setPlr(20.5,Plr.y)
end))

World.Map[79]:addWall(Box.new(2,13.9,20,0.1,1,1,function()
	Map = World.Map[80]
	setPlr(Plr.x,0.5)
end))

World.Map[79]:addWall(Box.new(2,0,7.5,0.1,1,1,function()
	Map = World.Map[25]
	setPlr(Plr.x,12.5)
end))

World.Map[79]:addWall(Box.new(12.5,0,11.5,0.1,1,1,function()
	Map = World.Map[25]
	setPlr(Plr.x,12.5)
end))
