-- Char vars
Varisa = 0x00 --\
Tracey = 0x01 -- |> Core Trio
Rachel = 0x02 --/

-- Char to Sprite
CtS = {
	[Varisa] = "Char_00",
	[Tracey] = "Char_01",
	[Rachel] = "Char_02",
}

-- Names
Names = {
	[Varisa] = "Varisa",
	[Tracey] = "Tracey",
	[Rachel] = "Rachel",
}

-- Character Range
Char_range = Range.parse("0~2")

MAP_X = 11
MAP_Y = 7

-- Locations
Intro = 0
Load = 1
World = 2
Cutscene = 3
END = 4

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

-- Time stuff
Midnight = 0
Noon = 12

Sunrise = 6
Sunset = 18

Day = 10
Afternoon = 14
Evening = 17
Night = 21

Sky = {
	[0] = {0.4,0.4,0.4},
	[1] = {0.4,0.4,0.4},
	[2] = {0.4,0.4,0.4},
	[3] = {0.4,0.4,0.4},
	[4] = {0.4,0.4,0.4},
	[5] = {0.6,0.5,0.4},
	[6] = {0.8,0.7,0.4},
	[7] = {1.0,0.9,0.6},
	[8] = {1.0,1.0,1.0},
	[9] = {1.0,1.0,1.0},
	[10] = {1.0,1.0,1.0},
	[11] = {1.0,1.0,1.0},
	[12] = {1.0,1.0,1.0},
	[13] = {1.0,1.0,1.0},
	[14] = {1.0,1.0,1.0},
	[15] = {1.0,1.0,1.0},
	[16] = {1.0,1.0,1.0},
	[17] = {1.0,0.9,0.6},
	[18] = {0.8,0.7,0.4},
	[19] = {0.6,0.5,0.4},
	[20] = {0.4,0.4,0.4},
	[21] = {0.4,0.4,0.4},
	[22] = {0.4,0.4,0.4},
	[23] = {0.4,0.4,0.4},
}
