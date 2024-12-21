Map_Outside_S_E = {}

for i = 1,7 do
	Map_Outside_S_E[i] = Map_Outside_S_E[i] or {}
	for j = 1,11 do
		table.insert(Map_Outside_S_E[i],
			Tile.new()
		)
	end
end
	

for i = 1,#Map_Outside_S_E do
	for j = 1,#Map_Outside_S_E[i] do
		if Map_Outside_S_E[i][j].t == 0 then
			Map_Outside_S_E[i][j].t = math.random(Grass_1,Grass_4)
		end
	end
end

for i = 3,7 do
	Map_Outside_S_E[i][6] = Tile.new(HalfPath_R)
	Map_Outside_S_E[i][7] = Tile.new(HalfPath_L)
end
Map_Outside_S_E[2][6] = Tile.new(CornerPath_R)
Map_Outside_S_E[2][7] = Tile.new(CornerPath_B)
Map_Outside_S_E[1][6] = Tile.new(Grass_1,1,1)
Map_Outside_S_E[1][7] = Tile.new(Grass_1,1,1)


for i = 1,3 do
	for j = 1,5 do
		Map_Outside_S_E[i][j] = Tile.new(Wall)
	end
	
	for j = 8,11 do
		Map_Outside_S_E[i][j] = Tile.new(Wall)
	end
end

Map_Outside_S_E[6][11] = Tile.new(HalfPath_B,1,2)
Map_Outside_S_E[7][11] = Tile.new(HalfPath_T,1,2)
Map_Outside_S_E[6][10] = Tile.new(CornerPath_R)
Map_Outside_S_E[7][10] = Tile.new(CornerPath_T)
Map_Outside_S_E[6][1] =  Tile.new(HalfPath_B,1,3)
Map_Outside_S_E[7][1] =  Tile.new(HalfPath_T,1,3)
Map_Outside_S_E[6][2] =  Tile.new(CornerPath_B)
Map_Outside_S_E[7][2] =  Tile.new(CornerPath_L)

Walls_Outside_S_E = {
	Box.new(0,0,10,6),
	Box.new(14,0,8,6),
}

_O_rn1 = Char_range[math.random(1,#Char_range)]
_O_rn2 = Char_range[math.random(1,#Char_range)]
_O_rn3 = Char_range[math.random(1,#Char_range)]

Npcs_Outside_S_E = {
	{x=6,y=6,c=_O_rn1,i=3},
	{x=9,y=12,c=_O_rn2,i=2},
	{x=16,y=7,c=_O_rn3,i=1},
}

Npc_Dbox_Outside_S_E = {}
for i,v in pairs(Npcs_Outside_S_E) do
	Npc_Dbox_Outside_S_E[i] = Box.new(
		v.x - 1,
		v.y - 1,
		3, 3
	)
	Npc_Dbox_Outside_S_E[i].i = i
end
