World.Map[17] = MapObj.new(Planks)
World.Map[17]:setLineH(7,1,11,Wall)
World.Map[17]:setLineV(1,1,7,Void)
World.Map[17]:setLineV(2,1,7,Void)
World.Map[17]:setLineV(3,1,7,Void)
World.Map[17]:setLineV(4,1,7,Void)
World.Map[17]:setLineV(5,1,7,Void)
World.Map[17]:setLineV(6,1,7,Wall)

World.Map[17]:addWall(Box.new(0,0,12,14))
World.Map[17]:addWall(Box.new(12,0,10,2))

World.Map[17]:addWall(Box.new(21.9,2,0.1,1,1,1,function()
	Map = World.Map[15]
	setPlr(8.5,Plr.y)
end))

if House[1].HouseTrait == "Neat" then
	
end

if House[1].HouseTrait == "Messy" then
	
end

if House[1].HouseTrait == "Fanatic" then
	World.Map[17]:addProp(Prop.new(14.6,0.5,Poster_Bu))
end
