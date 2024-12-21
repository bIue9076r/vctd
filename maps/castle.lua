Map_Castle_S_E = {}

for i = 1,7 do
	Map_Castle_S_E[i] = Map_Castle_S_E[i] or {}
	for j = 1,11 do
		table.insert(Map_Castle_S_E[i],
			Tile.new(Planks)
		)
	end
end

for i = 1,3 do
	Map_Castle_S_E[4][i] = Tile.new(Wall)
end
for i = 6,11 do
	Map_Castle_S_E[4][i] = Tile.new(Wall)
end

for i = 2,11 do
	Map_Castle_S_E[6][i] = Tile.new(Carpet)
end
Map_Castle_S_E[6][1] = Tile.new(Carpet,1,1)

Walls_Castle_S_E = {
	Box.new(0,6,6,2),
	Box.new(10,6,12,2),
}

_S_rn1 = Char_range[math.random(1,#Char_range)]

Npcs_Castle_S_E = {
	{x=2.4,y=1,c=0,i=1},
	{x=16,y=1,c=0,i=3},
	{x=18,y=1,c=0,i=4},
	{x=18,y=10,c=_S_rn1,i=5},
}

Npc_Dbox_Castle_S_E = {}
for i,v in pairs(Npcs_Castle_S_E) do
	Npc_Dbox_Castle_S_E[i] = Box.new(
		v.x - 1,
		v.y - 1,
		3, 3
	)
	Npc_Dbox_Castle_S_E[i].i = i
end
