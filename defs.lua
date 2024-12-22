-- Char vars
Varisa = 0x00

-- Char to Sprite
CtS = {
	[Varisa] = "Sprite_00",
	[0x01] = "Sprite_01",
}

-- Names
Names = {
	[Varisa] = "Varisa",
	[0x01] = "Name_01",
}

-- Character Range
Char_range = Range.parse("0~1")

-- Locations
Intro = 0
Load = 1
Character_Select = 2
Your_House = 3
Outside = 4
Castle = 5
Coffee = 6
END = 7

-- tiles
Grass_1 = 0
Grass_2 = 1
Grass_3 = 2
Grass_4 = 3
HalfPath_R = 4
HalfPath_L = 5
HalfPath_T = 6
HalfPath_B = 7
CornerPath_R = 8
CornerPath_L = 9
CornerPath_T = 10
CornerPath_B = 11
Wall = 12
Planks = 13
Carpet = 14
CarpetEnd = 15
Table = 16

-- tiles to sprite
TtS = {
	[Grass_1] = "Grass_1",
	[Grass_2] = "Grass_2",
	[Grass_3] = "Grass_3",
	[Grass_4] = "Grass_4",
	[HalfPath_R] = "HalfPath_R",
	[HalfPath_L] = "HalfPath_L",
	[HalfPath_T] = "HalfPath_T",
	[HalfPath_B] = "HalfPath_B",
	[CornerPath_R] = "CornerPath_R",
	[CornerPath_L] = "CornerPath_L",
	[CornerPath_T] = "CornerPath_T",
	[CornerPath_B] = "CornerPath_B",
	[Wall] = "Wall",
	[Planks] = "Planks",
	[Carpet] = "Carpet",
	[CarpetEnd] = "CarpetEnd",
	[Table] = "Table",
}

-- Background Colors
--Color_outside = {love.math.colorFromBytes(52,68,76,255)}
