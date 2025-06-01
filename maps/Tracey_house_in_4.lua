World.Map[26] = MapObj.new(Planks)

World.Map[26]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[3]
	setPlr(Plr.x,7.75)
end))
