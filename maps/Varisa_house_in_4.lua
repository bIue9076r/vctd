World.Map[27] = MapObj.new(Planks)

World.Map[27]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[10]
	setPlr(Plr.x,7.75)
end))
