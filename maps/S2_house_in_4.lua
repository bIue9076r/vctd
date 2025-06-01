World.Map[29] = MapObj.new(Planks)

World.Map[29]:addWall(Box.new(12.2,6.5,1.8,0.1,1,1,function()
	Map = World.Map[23]
	setPlr(Plr.x,7.5)
end))
