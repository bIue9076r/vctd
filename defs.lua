-- Char vars
Varisa = 0x00 --\
Tracey = 0x01 -- |> Core Trio
Rachel = 0x02 --/
B_Guitar_L = 0x03
B_Guitar_R = 0x04
R_Guitar_L = 0x05
R_Guitar_R = 0x06
Mic = 0x07
Karly = 0x08
Zoey = 0x09
Lassie = 0x0A
HOLDER_1 = 0x0B
HOLDER_2 = 0x0C
HOLDER_3 = 0x0D
TV_B = 0x0E
TV_T = 0x0F
Amp = 0x10
Vase = 0x11
Vase_E = 0x12
Vase_C = 0x13
Flowers = 0x14

-- Char to Sprite
CtS = {
	[Varisa] = "Varisa",
	[Tracey] = "Tracey",
	[Rachel] = "Rachel",
	[B_Guitar_L] = "Guitar_L",
	[B_Guitar_R] = "Guitar_R",
	[R_Guitar_L] = "Red_Guitar_L",
	[R_Guitar_R] = "Red_Guitar_R",
	[Mic] = "Mic",
	[Karly] = "Karly",
	[Zoey] = "Zoey",
	[Lassie] = "Lassie",
	[TV_B] = "TV_B",
	[TV_T] = "TV_T",
	[Amp] = "Amp",
	[Vase] = "Vase",
	[Vase_E] = "Vase_E",
	[Vase_C] = "Vase_C",
	[Flowers] = "Flowers",
}

-- Names
Names = {
	[Varisa] = "Varisa",
	[Tracey] = "Tracey",
	[Rachel] = "Rachel",
	[B_Guitar_L] = "Black Guitar",
	[B_Guitar_R] = "Black Guitar",
	[R_Guitar_L] = "Red Guitar",
	[R_Guitar_R] = "Red Guitar",
	[Mic] = "Mic",
	[Karly] = "Karly",
	[Zoey] = "Zoey",
	[Lassie] = "Lassie",
	[TV_B] = "News Anchor",
	[TV_T] = "TV_T",
	[Amp] = "Amplifyer",
	[Vase] = "Vase",
	[Vase_E] = "Empty Vase",
	[Vase_C] = "Cracked Vase",
	[Flowers] = "Flowers",
}

-- Character Range
Char_range = Range.parse("0~2,8~14")

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
AntiVoid = tileTicker:get(); tileTicker()
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
Stairs = tileTicker:get(); tileTicker()
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
Counter_B_V = tileTicker:get(); tileTicker()
Sink_B_V_E = tileTicker:get(); tileTicker()
Stove_B_V_A = tileTicker:get(); tileTicker()
Stove_B_V_I = tileTicker:get(); tileTicker()
Fridge = tileTicker:get(); tileTicker()
Bookshelf = tileTicker:get(); tileTicker()
BigTable_B = tileTicker:get(); tileTicker()
BigTable_T = tileTicker:get(); tileTicker()
Garage = tileTicker:get(); tileTicker()
GrassPath = tileTicker:get(); tileTicker()
RoofTop = tileTicker:get(); tileTicker()
Bar_L = tileTicker:get(); tileTicker()
Bar_R = tileTicker:get(); tileTicker()
Bar_T = tileTicker:get(); tileTicker()
Bar_B = tileTicker:get(); tileTicker()
Bar_TL = tileTicker:get(); tileTicker()
Bar_TR = tileTicker:get(); tileTicker()
Bar_BL = tileTicker:get(); tileTicker()
Bar_BR = tileTicker:get(); tileTicker()

-- tiles to sprite
TtS = {
	[Void] = "Void",
	[AntiVoid] = "AntiVoid",
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
	[Stairs] = "Stairs",
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
	[Counter_B_V] = "Counter_B_V",
	[Sink_B_V_E] = "Sink_B_V_E",
	[Stove_B_V_A] = "Stove_B_V_A",
	[Stove_B_V_I] = "Stove_B_V_I",
	[Fridge] = "Fridge",
	[Bookshelf] = "Bookshelf",
	[BigTable_B] = "BigTable_B",
	[BigTable_T] = "BigTable_T",
	[Garage] = "Garage",
	[GrassPath] = "GrassPath",
	[RoofTop] = "RoofTop",
	[Bar_L] = "Bar_L",
	[Bar_R] = "Bar_R",
	[Bar_T] = "Bar_T",
	[Bar_B] = "Bar_B",
	[Bar_TL] = "Bar_TL",
	[Bar_TR] = "Bar_TR",
	[Bar_BL] = "Bar_BL",
	[Bar_BR] = "Bar_BR",
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
Mood.set(0)

SongList = {
	Song.new("Roof",-2,0),
	Song.new("Main",0,5),
	Song.new("Ground",-1,1),
}


-- Dialoge Voices
Voices = {
	["Normal"] = sound.getSound("Talk_1"),
	["Slow"] = sound.getSound("Talk_2"),
	["Fast"] = sound.getSound("Talk_3"),
}
