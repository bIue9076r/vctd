World.Map[13] = MapObj.new(Garage)

World.Map[13]:setLineV(1,1,7,Brick)
World.Map[13]:setLineV(6,1,7,Brick)
World.Map[13]:setLineV(7,1,7,Brick)
World.Map[13]:setLineV(8,1,7,Brick)
World.Map[13]:setLineV(9,1,7,Brick)
World.Map[13]:setLineV(10,1,7,Brick)
World.Map[13]:setLineV(11,1,7,Brick)

World.Map[13]:setLineH(2,1,5,Brick)
World.Map[13]:setLineH(1,6,11,Concrete)
World.Map[13]:setLineH(1,5,11,Grass_1)

World.Map[13]:setTile(10,5,Grass_S)
World.Map[13]:setTile(10,4,Brick_D)

World.Map[13]:setTile(1,7,Road_T)
World.Map[13]:setTile(2,7,Road_N_T)
World.Map[13]:setTile(3,7,Road_T)
World.Map[13]:setTile(4,7,Road_N_T)
World.Map[13]:setTile(5,7,Road_T)
World.Map[13]:setTile(6,7,Road_N_T)
World.Map[13]:setTile(7,7,Road_T)
World.Map[13]:setTile(8,7,Road_N_T)
World.Map[13]:setTile(9,7,Road_T)
World.Map[13]:setTile(10,7,Road_N_T)
World.Map[13]:setTile(11,7,Road_T)

World.Map[13]:setLineV(2,5,7,Asphalt)
World.Map[13]:setLineV(3,5,7,Asphalt)
World.Map[13]:setLineV(4,5,7,Asphalt)
World.Map[13]:setLineV(5,5,7,Asphalt)

World.Map[13]:addWall(Box.new(0,0,18,8))
World.Map[13]:addWall(Box.new(18,0,2,7))
World.Map[13]:addWall(Box.new(20,0,2,8))

World.Map[13]:addWall(Box.new(17.9,7,2.2,0.1,1,1,function()
	if House[1].isOpen then
		Map = World.Map[14]
		setPlr(10.5,12.5)
	else
		-- Door is locked
		IsTalking = true
			
		World.dtbl = {
			s = "*The Door is Locked*",
			n = Varisa,
			v = "Normal",
		}
	end
end))

if Families[House[1].HouseHold] == "Empty" then
	World.Map[13]:addProp(Prop.new(14.6,6.0,Sale_Sign_1))
	World.Map[13]:addProp(Prop.new(15.6,6.0,Sale_Sign_2))
end

World.Map[13]:addWall(Box.new(0,9,0.1,5,1,1,function()
	Map = World.Map[19]
	setPlr(20.5,Plr.y)
end))

World.Map[13]:addWall(Box.new(21.9,9,0.1,5,1,1,function()
	Map = World.Map[7]
	setPlr(0.5,Plr.y)
end))

World.Map[13]:addNpc(Npc.new(11.0,8.4,Mailbox,5,0,function()
	
end))
