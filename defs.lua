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
TV_B_F = 0x15
TV_T_F = 0x16
Trash_P = 0x17
-- Trash = 0x18
-- Trash = 0x19
Trash_Can = 0x1A
Poster_Bu = 0x1B
Poster_Gr = 0x1C
Poster_Or = 0x1D
Poster_Ye = 0x1E
Poster_Bl = 0x1F
Poster_Wh = 0x20
Poster_Pu = 0x21
Flag = 0x22
Bass_Drum = 0x23
Snare_Drum = 0x24
Tom_Drum = 0x25
Crash_Cymbal = 0x26
Ride_Cymbal = 0x27
Sand = 0x28
Sand_L = 0x29
Sand_R = 0x2A
Sand_B = 0x2B
Sand_T = 0x2C
Sand_TL = 0x2D
Sand_BL = 0x2E
Sand_TR = 0x2F
Sand_BR = 0x30
Table_BL = 0x31
Table_BR = 0x32
Table_TL = 0x33
Table_TR = 0x34
Warning_T = 0x35
Warning_M = 0x36
Warning_B = 0x37
Box_1_1 = 0x38
Box_1_2 = 0x39
Box_1_3 = 0x3A
Box_1_4 = 0x3B
Bed_1_1 = 0x3C
Bed_1_2 = 0x3D
Bed_1_3 = 0x3E
Bed_1_4 = 0x3F
Bed_1_5 = 0x40
Bed_1_6 = 0x41
Vivian = 0x42
Brian = 0x43
Sean = 0x44
Ella = 0x45
Karina = 0x46
Zach = 0x47
Wilkie = 0x48
Mollie = 0x49
Fredrick = 0x4A
Jami = 0x4B
Computer = 0x4C
Mailbox = 0x4D
Sale_Sign_1 = 0x4E
Sale_Sign_2 = 0x4F
Toolbox = 0x50

ERROBJ = 0xFF
Interaction = 0x1FF

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
	[TV_B_F] = "TV_B_F",
	[TV_T_F] = "TV_T_F",
	[Trash_P] = "Trash_P",
	[Trash_Can] = "Trash_Can",
	[Poster_Bu] = "Poster_Bu",
	[Poster_Gr] = "Poster_Gr",
	[Poster_Or] = "Poster_Or",
	[Poster_Ye] = "Poster_Ye",
	[Poster_Bl] = "Poster_Bl",
	[Poster_Wh] = "Poster_Wh",
	[Poster_Pu] = "Poster_Pu",
	[Flag] = "Flag",
	[Bass_Drum] = "Bass_Drum",
	[Snare_Drum] = "Snare_Drum",
	[Tom_Drum] = "Tom_Drum",
	[Crash_Cymbal] = "Crash_Cymbal",
	[Ride_Cymbal] = "Ride_Cymbal",
	[Sand] = "Sand",
	[Sand_L] = "Sand_L",
	[Sand_R] = "Sand_R",
	[Sand_B] = "Sand_B",
	[Sand_T] = "Sand_T",
	[Sand_TL] = "Sand_TL",
	[Sand_BL] = "Sand_BL",
	[Sand_TR] = "Sand_TR",
	[Sand_BR] = "Sand_BR",
	[Table_BL] = "Table_BL",
	[Table_BR] = "Table_BR",
	[Table_TL] = "Table_TL",
	[Table_TR] = "Table_TR",
	[Warning_T] = "Warning_T",
	[Warning_M] = "Warning_M",
	[Warning_B] = "Warning_B",
	[Box_1_1] = "Box_1_1",
	[Box_1_2] = "Box_1_2",
	[Box_1_3] = "Box_1_3",
	[Box_1_4] = "Box_1_4",
	[Bed_1_1] = "Bed_1_1",
	[Bed_1_2] = "Bed_1_2",
	[Bed_1_3] = "Bed_1_3",
	[Bed_1_4] = "Bed_1_4",
	[Bed_1_5] = "Bed_1_5",
	[Bed_1_6] = "Bed_1_6",
	[Vivian] = "Vivian",
	[Brian] = "Brian",
	[Sean] = "Sean",
	[Ella] = "Ella",
	[Karina] = "Karina",
	[Zach] = "Zach",
	[Wilkie] = "Wilkie",
	[Mollie] = "Mollie",
	[Fredrick] = "Fredrick",
	[Jami] = "Jami",
	[Computer] = "Computer",
	[Mailbox] = "Mailbox",
	[Sale_Sign_1] = "Sale_Sign_1",
	[Sale_Sign_2] = "Sale_Sign_2",
	[Toolbox] = "Toolbox",
	[ERROBJ] = "ERROBJ",
	[Interaction] = "Interaction",
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
	[TV_B_F] = "News Anchor",
	[TV_T_F] = "TV_T_F",
	[Trash_P] = "Paper Trash",
	[Trash_Can] = "Trash Can",
	[Poster_Bu] = "Blue Poster",
	[Poster_Gr] = " Poster",
	[Poster_Or] = " Poster",
	[Poster_Ye] = " Poster",
	[Poster_Bl] = " Poster",
	[Poster_Wh] = " Poster",
	[Poster_Pu] = "Purple Poster",
	[Flag] = "Flag",
	[Bass_Drum] = "Bass Drum",
	[Snare_Drum] = "Snare Drum",
	[Tom_Drum] = "Tom Drum",
	[Crash_Cymbal] = "Crash Cymbal",
	[Ride_Cymbal] = "Ride Cymbal",
	[Sand] = "Sand",
	[Sand_L] = "Sand Left",
	[Sand_R] = "Sand Right",
	[Sand_B] = "Sand Bottom",
	[Sand_T] = "Sand Top",
	[Sand_TL] = "Sand Top Left",
	[Sand_BL] = "Sand Bottom Left",
	[Sand_TR] = "Sand Top Right",
	[Sand_BR] = "Sand Bottom Right",
	[Table_BL] = "Table Bottom Left",
	[Table_BR] = "Table Bottom Right",
	[Table_TL] = "Table Top Left",
	[Table_TR] = "Table Top Right",
	[Warning_T] = "Warning Top",
	[Warning_M] = "Warning Middle",
	[Warning_B] = "Warning Bottom",
	[Box_1_1] = "Box-1 1",
	[Box_1_2] = "Box-1 2",
	[Box_1_3] = "Box-1 3",
	[Box_1_4] = "Box-1 4",
	[Bed_1_1] = "Bed-1 1",
	[Bed_1_2] = "Bed-1 2",
	[Bed_1_3] = "Bed-1 3",
	[Bed_1_4] = "Bed-1 4",
	[Bed_1_5] = "Bed-1 5",
	[Bed_1_6] = "Bed-1 6",
	[Vivian] = "Vivian",
	[Brian] = "Brian",
	[Sean] = "Sean",
	[Ella] = "Ella",
	[Karina] = "Karina",
	[Zach] = "Zach",
	[Wilkie] = "Wilkie",
	[Mollie] = "Mollie",
	[Fredrick] = "Fredrick",
	[Jami] = "Jami",
	[Computer] = "Computer",
	[Mailbox] = "Mailbox",
	[Sale_Sign_1] = "Sale Sign 1",
	[Sale_Sign_2] = "Sale Sign 2",
	[Toolbox] = "Toolbox",
	[ERROBJ] = "ERROBJ",
	[Interaction] = "...",
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
Wall_D = tileTicker:get(); tileTicker()
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
	[Wall_D] = "Wall_D",
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
	Song.new("Scary_1",-5,-1),
}


-- Dialogue Voices
Voices = {
	["Normal"] = sound.getSound("Talk_1"),
	["Slow"] = sound.getSound("Talk_2"),
	["Fast"] = sound.getSound("Talk_3"),
}
