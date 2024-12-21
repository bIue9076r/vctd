Map_Coffee_S_E = {}

for i = 1,7 do
	Map_Coffee_S_E[i] = Map_Coffee_S_E[i] or {}
	for j = 1,11 do
		table.insert(Map_Coffee_S_E[i],
			Tile.new(Planks)
		)
	end
end

Map_Coffee_S_E[6][11] = Tile.new(Carpet,1,1)
Map_Coffee_S_E[6][10] = Tile.new(Carpet)

for i = 1,3,2 do
	for j = 2,8,2 do
		Map_Coffee_S_E[i][j] = Tile.new(Table)
	end
end

for i = 1,5 do
	Map_Coffee_S_E[5][i] = Tile.new(Wall)
end
for i = 8,11 do
	Map_Coffee_S_E[5][i] = Tile.new(Wall)
end

Walls_Coffee_S_E = {
	Box.new(0,8,10,2),
	Box.new(14,8,8,2),
}

_C_rn1 = Char_range[math.random(1,#Char_range)]
_C_rn2 = Char_range[math.random(1,#Char_range)]
_C_rn3 = Char_range[math.random(1,#Char_range)]
_C_rn4 = Char_range[math.random(1,#Char_range)]

Npcs_Coffee_S_E = {
	{x=1.25,y=0.75,c=_C_rn1,i=2},
	{x=11.6,y=0.75,c=_C_rn2,i=4},
	{x=9.4 ,y=4.75,c=_C_rn3,i=0},
	{x=1.5,y=10.25,c=_C_rn4,i=1},
}

Npc_Dbox_Coffee_S_E = {}
for i,v in pairs(Npcs_Coffee_S_E) do
	Npc_Dbox_Coffee_S_E[i] = Box.new(
		v.x - 1,
		v.y - 1,
		3, 3
	)
	Npc_Dbox_Coffee_S_E[i].i = i
end
