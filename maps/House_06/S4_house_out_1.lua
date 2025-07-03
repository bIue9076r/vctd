World.Map[37] = MapObj.new(Garage)

World.Map[37]:setLineV(1,1,7,Wall)
World.Map[37]:setLineV(6,1,7,Wall)
World.Map[37]:setLineV(7,1,7,Wall)
World.Map[37]:setLineV(8,1,7,Wall)
World.Map[37]:setLineV(9,1,7,Wall)
World.Map[37]:setLineV(10,1,7,Wall)
World.Map[37]:setLineV(11,1,7,Wall)

World.Map[37]:setLineH(2,1,5,Wall)
World.Map[37]:setLineH(1,6,11,Concrete)
World.Map[37]:setLineH(1,5,11,Grass_1)

World.Map[37]:setTile(10,5,Grass_S)
World.Map[37]:setTile(10,4,Wall_D)

World.Map[37]:setTile(1,7,Road_N_T)
World.Map[37]:setTile(2,7,Road_T)
World.Map[37]:setTile(3,7,Road_N_T)
World.Map[37]:setTile(4,7,Road_T)
World.Map[37]:setTile(5,7,Road_N_T)
World.Map[37]:setTile(6,7,Road_T)
World.Map[37]:setTile(7,7,Road_N_T)
World.Map[37]:setTile(8,7,Road_T)
World.Map[37]:setTile(9,7,Road_N_T)
World.Map[37]:setTile(10,7,Road_T)
World.Map[37]:setTile(11,7,Road_N_T)

World.Map[37]:setLineV(2,5,7,Asphalt)
World.Map[37]:setLineV(3,5,7,Asphalt)
World.Map[37]:setLineV(4,5,7,Asphalt)
World.Map[37]:setLineV(5,5,7,Asphalt)

World.Map[37]:addWall(Box.new(0,0,18,8))
World.Map[37]:addWall(Box.new(18,0,2,7))
World.Map[37]:addWall(Box.new(20,0,2,8))

World.Map[37]:addWall(Box.new(17.9,7,2.2,0.1,1,1,function()
	if House.house[4].isOpen then
		Map = World.Map[38]
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

if Families[House.house[4].HouseHold] == "Empty" then
	World.Map[37]:addProp(Prop.new(14.6,6.0,Sale_Sign_1))
	World.Map[37]:addProp(Prop.new(15.6,6.0,Sale_Sign_2))
end

World.Map[37]:addWall(Box.new(0,9,0.1,5,1,1,function()
	Map = World.Map[43]
	setPlr(20.5,Plr.y)
end))

World.Map[37]:addWall(Box.new(21.9,9,0.1,5,1,1,function()
	Map = World.Map[31]
	setPlr(0.5,Plr.y)
end))

World.Map[37]:addNpc(Npc.new(11.0,8.4,Mailbox,5,0,function()
	
end))
