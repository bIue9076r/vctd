World.Map[70] = MapObj.new(Planks)

World.Map[70]:setLineV(1,1,7,Void)
World.Map[70]:setLineV(2,1,7,Void)
World.Map[70]:setLineV(3,1,7,Void)
World.Map[70]:setLineV(4,1,7,Void)
World.Map[70]:setLineH(5,1,11,Wall)
World.Map[70]:setTile(5,2,Planks)
World.Map[70]:setLineV(5,3,4,Stairs)
World.Map[70]:setTile(5,5,Stairs,AntiVoid)
World.Map[70]:setLineV(6,3,5,Planks,Bar_L)
World.Map[70]:setTile(6,6,Planks,Bar_TL)
World.Map[70]:setTile(5,6,Planks,Bar_T)

World.Map[70]:addProp(Prop.new(17,5,Box_1_1))
World.Map[70]:addProp(Prop.new(18,5,Box_1_2))
World.Map[70]:addProp(Prop.new(17,6,Box_1_3))
World.Map[70]:addProp(Prop.new(18,6,Box_1_4))

World.Map[70]:addProp(Prop.new(11,11,Box_1_1))
World.Map[70]:addProp(Prop.new(12,11,Box_1_2))
World.Map[70]:addProp(Prop.new(11,12,Box_1_3))
World.Map[70]:addProp(Prop.new(12,12,Box_1_4))

World.Map[70]:addProp(Prop.new(18,10,Box_1_1))
World.Map[70]:addProp(Prop.new(19,10,Box_1_2))
World.Map[70]:addProp(Prop.new(18,11,Box_1_3))
World.Map[70]:addProp(Prop.new(19,11,Box_1_4))

World.Map[70]:addProp(Prop.new(19.5,7.5,Box_1_1))
World.Map[70]:addProp(Prop.new(20.5,7.5,Box_1_2))
World.Map[70]:addProp(Prop.new(19.5,8.5,Box_1_3))
World.Map[70]:addProp(Prop.new(20.5,8.5,Box_1_4))

World.Map[70]:addProp(Prop.new(10.9,7,Box_1_1))
World.Map[70]:addProp(Prop.new(11.9,7,Box_1_2))
World.Map[70]:addProp(Prop.new(10.9,8,Box_1_3))
World.Map[70]:addProp(Prop.new(11.9,8,Box_1_4))

World.Map[70]:addProp(Prop.new(15.2,8.5,Box_1_1))
World.Map[70]:addProp(Prop.new(16.2,8.5,Box_1_2))
World.Map[70]:addProp(Prop.new(15.2,9.5,Box_1_3))
World.Map[70]:addProp(Prop.new(16.2,9.5,Box_1_4))

World.Map[70]:addProp(Prop.new(20,2,Bed_1_1,1,1))
World.Map[70]:addProp(Prop.new(21,2,Bed_1_2,1,1))
World.Map[70]:addProp(Prop.new(20,3,Bed_1_3,1,1))
World.Map[70]:addProp(Prop.new(21,3,Bed_1_4,1,1))
World.Map[70]:addProp(Prop.new(20,4,Bed_1_5,1,1))
World.Map[70]:addProp(Prop.new(21,4,Bed_1_6,1,1))

World.Map[70]:addWall(Box.new(20,3.8,2,0.3))

World.Map[70]:addWall(Box.new(0,0,8,14))
World.Map[70]:addWall(Box.new(8,0,14,2))
World.Map[70]:addWall(Box.new(10,4,0.1,6))
World.Map[70]:addWall(Box.new(8,10,2,0.1))

World.Map[70]:addWall(Box.new(8,6.5,1.8,0.1,1,1,function()
	Map = World.Map[69]
	setPlr(Plr.x,7.75)
end))

if House.house[9].HouseTrait == "Neat" then
	
end

if House.house[9].HouseTrait == "Messy" then
	
end

if House.house[9].HouseTrait == "Fanatic" then
	World.Map[70]:addProp(Prop.new(12.5,0.75,Poster_Bu))
	World.Map[70]:addProp(Prop.new(16.8,0.25,Poster_Pu))
end
