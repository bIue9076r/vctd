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
WORLD = 2
Cutscene = 3
END = 4

local tileTicker = ticker.new()
-- tiles
Void = tileTicker:get(); tileTicker()
Grass_1 = tileTicker:get(); tileTicker()
Grass_2 = tileTicker:get(); tileTicker()
Grass_3 = tileTicker:get(); tileTicker()
Grass_4 = tileTicker:get(); tileTicker()
HalfPath_R = tileTicker:get(); tileTicker()
HalfPath_L = tileTicker:get(); tileTicker()
HalfPath_T = tileTicker:get(); tileTicker()
HalfPath_B = tileTicker:get(); tileTicker()
CornerPath_R = tileTicker:get(); tileTicker()
CornerPath_L = tileTicker:get(); tileTicker()
CornerPath_T = tileTicker:get(); tileTicker()
CornerPath_B = tileTicker:get(); tileTicker()
Wall = tileTicker:get(); tileTicker()
Planks = tileTicker:get(); tileTicker()
Carpet = tileTicker:get(); tileTicker()
CarpetEnd = tileTicker:get(); tileTicker()
Table = tileTicker:get(); tileTicker()
Concrete = tileTicker:get(); tileTicker()
Asphalt = tileTicker:get(); tileTicker()
Road_T = tileTicker:get(); tileTicker()
Road_B = tileTicker:get(); tileTicker()
Road_R = tileTicker:get(); tileTicker()
Road_L = tileTicker:get(); tileTicker()
Road_N_T = tileTicker:get(); tileTicker()
Road_N_B = tileTicker:get(); tileTicker()
Road_N_R = tileTicker:get(); tileTicker()
Road_N_L = tileTicker:get(); tileTicker()
Road_C_TR = tileTicker:get(); tileTicker()
Road_C_TL = tileTicker:get(); tileTicker()
Road_C_BR = tileTicker:get(); tileTicker()
Road_C_BL = tileTicker:get(); tileTicker()
Carpet_V = tileTicker:get(); tileTicker()
Grass_S = tileTicker:get(); tileTicker()
Brick = tileTicker:get(); tileTicker()
Brick_D = tileTicker:get(); tileTicker()

-- tiles to sprite
TtS = {
	[Void] = "Void",
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
	[Concrete] = "Concrete",
	[Asphalt] = "Asphalt",
	[Road_T] = "Road_T",
	[Road_B] = "Road_B",
	[Road_R] = "Road_R",
	[Road_L] = "Road_L",
	[Road_N_T] = "Road_N_T",
	[Road_N_B] = "Road_N_B",
	[Road_N_R] = "Road_N_R",
	[Road_N_L] = "Road_N_L",
	[Road_C_TR] = "Road_C_TR",
	[Road_C_TL] = "Road_C_TL",
	[Road_C_BR] = "Road_C_BR",
	[Road_C_BL] = "Road_C_BL",
	[Carpet_V] = "Carpet_V",
	[Grass_S] = "Grass_S",
	[Brick] = "Brick",
	[Brick_D] = "Brick_D",
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

-- Mood stuff
print(-2*math.cos((math.pi*(Time.hour + (Time.minute/60)))/(12)))
Mood.set(-2*math.cos((math.pi*(Time.hour + (Time.minute/60)))/(12)))

SongList = {
	Song.new("Roof",-2,0),
	Song.new("Main",0,5),
	Song.new("Ground",-1,1),
}
