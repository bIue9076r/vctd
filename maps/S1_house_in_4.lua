World.Map[28] = MapObj.new(Planks)

World.Map[28]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[15]
	setPlr(Plr.x,7.75)
end))

if House[1].HouseTrait == "Neat" then
	
end

if House[1].HouseTrait == "Messy" then
	
end

if House[1].HouseTrait == "Fanatic" then
	
end
