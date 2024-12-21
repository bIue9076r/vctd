math.randomseed(os.time())
jit.off()
love.graphics.setDefaultFilter("nearest", "nearest")
require("/Engine/filesConfig")
require("/Modules/Range")

-- load the unified tile system
require("/Modules/tile")
require("/Modules/ticker")
require("/Modules/spString")

-- load function for drawing sprites (and load most images)
require("/Modules/drawSprites")

-- common variable definitions
require("defs")

-- load the map of 'house'
require("/maps/house")

-- load the map of 'outside'
require("/maps/outside")

-- load the map of 'castle'
require("/maps/castle")

-- load the map of 'coffee'
require("/maps/coffee")

-- load the Intro game state
require("/States/Intro")

-- load the Your House game state
require("/States/Your_House")

-- load the Outside game state
require("/States/Outside")

-- load the Castle game state
require("/States/Castle")

-- load the Coffee game state
require("/States/Coffee")

-- load the End game state
require("/States/End")

-- the sounds should get their own file lol
sound.new("Chr","/Assets/chr.mp3","stream")
sound.new("Bass_Song","/Assets/Bass_Love_Song.mp3","stream")
sound.new("Sunrise","/Assets/Sunrise_Hopes.mp3","stream")
sound.new("Sunset","/Assets/Sunset_Dreams.mp3","stream")
sound.new("Waltz","/Assets/The_Waltz.mp3","stream")

-- list of the songs for easy access
EndSongList = {
	"Bass_Song",
	"Sunrise",
	"Sunset",
	"Waltz",
}

-- esn: (E)nd (S)ong (N)umber
esn = math.random(1,#EndSongList)

-- pesn: (P)revious (E)nd (S)ong (N)umber
pesn = esn

-- lpesn: (L)ast (P)revious (E)nd (S)ong (N)umber
lpesn = pesn

-- bs: (B)ackground (S)ound
bs = sound.getSound("Chr")

-- pbs: (P)lay (B)ackground (S)ound
pbs = true

-- pen: (P)lay (E)(N)ding
pen = false

-- bool for if the game is muted
muted = false
-------------------------------------------

-- Screen width for calculations
SCREEN_X = love.graphics.getWidth()

-- Screen height for calculations
SCREEN_Y = love.graphics.getHeight()

-- Screen aspect ratio
ASPECT = (SCREEN_X/SCREEN_Y)

image.newImage("backtile","/Assets/backtile.png")
files.assets.Fonts.newFont("comic","/Assets/ComicSansMS3.ttf",20)
love.graphics.setFont(files.assets.Fonts.getFont("comic"))

-- Set up a log file
Log = love.filesystem.newFile("Log.txt")
Log:open("w")

function wlog(str)
	Log:write("["..os.date("%x|%X",os.time()).."]: "..str.."\n")
end

-- multiplayer?
-- no.

-- Player table
Plr = {
	x = 20,
	y = 12,
	tx = 20,
	ty = 12,
	c = 0x00,
}

-- trivial
function setPlr(x,y)
	Plr.x = x
	Plr.y = y
	Plr.tx = x
	Plr.ty = y
end

Npcs = {}
Npc_Dboxs = {}

Map = {} -- 7x11
-- tile = {t=0,cx=0,cy=0,e=0,w=0,l=0,d=0,x=0,y=0}

Map_x = 0 -- Map width
Map_y = 0 -- Map height

Walls = {}

-- globals
GameState = Intro;
DialogeBuffer = 50
Ending = 0	--	good ending

-- debug variables
DrawCoords = false
HitBoxes = false

STATE_KEYPRESSED = {
	[Intro] = Intro_Keypressed,
	[Load] = Load_Keypressed,
	[Your_House] = Your_House_Keypressed,
	[Outside] = Outside_Keypressed,
	[Castle] = Castle_Keypressed,
	[Coffee] = Coffee_Keypressed,
	[END] = End_Keypressed,
}

STATE_UPDATE = {
	[Intro] = Intro_Update,
	[Load] = Load_Update,
	[Your_House] = Your_House_Update,
	[Outside] = Outside_Update,
	[Castle] = Castle_Update,
	[Coffee] = Coffee_Update,
	[END] = End_Update,
}

STATE_DRAW = {
	[Intro] = Intro_Draw,
	[Load] = Load_Draw,
	[Your_House] = Your_House_Draw,
	[Outside] = Outside_Draw,
	[Castle] = Castle_Draw,
	[Coffee] = Coffee_Draw,
	[END] = End_Draw,
}

function drawBackgound()
	-- calculation proportions for the screen
	local Tx = (SCREEN_X/6)
	local Ty = (SCREEN_Y/4)
	
	local backtile = image.getImage("backtile")
	
	for i = 1,4 do
		for j = 1,6 do
			love.graphics.draw(
				backtile,
				(j-1)*Tx,
				(i-1)*Ty,
				0,
				Tx/backtile:getWidth(),
				Ty/backtile:getHeight()
			)
		end
	end
end

function npcCollide(Tx,Ty,Nx,Ny)
	return (
		(Tx + 1 >= Nx) and (Tx <= Nx + 1) and
		(Ty + 1 >= Ny) and (Ty <= Ny + 1)
	)
end

function wallCollide(Tx,Ty,Wx,Wy,Ww,Wh)
	return (
		(Tx + 1 >= Wx) and (Tx <= Wx + Ww) and
		(Ty + 1 >= Wy) and (Ty <= Wy + Wh)
	)
end

function checkNpcCollision(Tx,Ty)
	for i,v in pairs(Npcs) do
		if npcCollide(Tx,Ty,v.x,v.y) and not v.d then
			Plr.tx = Plr.x
			Plr.ty = Plr.y
		end
	end
end

function checkCollision()
	local Tx = Plr.tx
	local Ty = Plr.ty
	
	-- convert temporary player coords to tile coords
	local Cx = math.ceil(Tx/2)
	local Cy = math.ceil(Ty/2)
	
	if(Tx == 0) then Cx = 1 end
	if(Ty == 0) then Cy = 1 end
	if(Tx > 21) then Cx = -1 end
	if(Ty > 13) then Cy = -1 end
	
	local tile, rtile, rwall, rnpc
	
	-- if the player is inside the map
	if Map[Cy] and Map[Cy][Cx] then
		tile = Map[Cy][Cx]
		
		-- tile.(e)ffect then set return tile
		if(tile.e == 1) then
			rtile = tile
		end
		
		-- check collision with walls
		for i, v in ipairs(Walls) do
			local Wx = v.x
			local Wy = v.y
			local Ww = v.w
			local Wh = v.h
			
			if wallCollide(Tx,Ty,Wx,Wy,Ww,Wh) then
				Plr.tx = Plr.x
				Plr.ty = Plr.y
				
				rwall = Walls[v.i]
			end
		end
		
		-- check collision with npcs
		checkNpcCollision(Tx,Ty)
		
		for i, v in pairs(Npc_Dboxs) do
			if not Npcs[v.i].d then
				local Wx = v.x
				local Wy = v.y
				local Ww = v.w
				local Wh = v.h
				
				if wallCollide(Tx,Ty,Wx,Wy,Ww,Wh) then
					rnpc = Npcs[v.i]
				end
			end
		end
		
		-- update player position
		Plr.x = Plr.tx
		Plr.y = Plr.ty
	else
		-- return to last position
		Plr.tx = Plr.x
		Plr.ty = Plr.y
	end
	
	return {rtile,rnpc}
end

-- trivial
function movePlayer(dt,ms)
	local tbl;
	if love.keyboard.isDown("a") then
		Plr.tx = Plr.x - ms*dt
		tbl = checkCollision()
	end
	if love.keyboard.isDown("d") then
		Plr.tx = Plr.x + ms*dt
		tbl = checkCollision()
	end
	
	if love.keyboard.isDown("w") then
		Plr.ty = Plr.y - ms*dt
		tbl = checkCollision()
	end
	if love.keyboard.isDown("s") then
		Plr.ty = Plr.y + ms*dt
		tbl = checkCollision()
	end
	return tbl
end

-- (K)eypressed Control Ops
function kctrlOps(key)
	if key == "lctrl" then
		Crtlcheck = true
	elseif Crtlcheck then
		if key == "0" then
			DialogeBuffer = 0
		elseif key == "1" then
			DialogeBuffer = 50
		elseif key == "2" then
			DialogeBuffer = 75
		elseif key == "3" then
			-- slow reader huh?
			DialogeBuffer = 100
		elseif key == "l" then
			DrawCoords = not(DrawCoords)
		elseif key == "h" then
			HitBoxes = not(HitBoxes)
		elseif key == "m" then
			muted = not(muted)
			bs:stop()
		elseif key == "p" then
			wlog(
				"Player = {\n\t"..
					"x = "..Plr.x..",\n\t"..
					"y = "..Plr.y..",\n\t"..
					"tx = "..Plr.tx..",\n\t"..
					"ty = "..Plr.ty..",\n\t"..
					"c = "..Plr.c.."("..Names[Plr.c]..")\n}"
			)
		end
		Crtlcheck = false
	end
end

-- (D)raw Control Ops
function dctrlOps()
	if DrawCoords then
		for i = 1,15 do
			local psy = ((25 + ((i)-1)*50)/(400))
			love.graphics.line(
				(SCREEN_X/24),SCREEN_Y*psy,
				(SCREEN_X*23)/24,SCREEN_Y*psy
			)
		end
		for i = 1,23 do
			local psx = ((25 + ((i)-1)*50)/(600))
			love.graphics.line(
				SCREEN_X*psx,(SCREEN_Y/16),
				SCREEN_X*psx,(SCREEN_Y*15)/16
			)
		end
	end
	if HitBoxes then
		for i,v in ipairs(Npcs) do
			local psx = ((25 + (v.x)*25)/(600))
			local psy = ((25 + (v.y)*25)/(400))
			local psw = (25/600)
			local psh = (25/400)
			
			love.graphics.rectangle("line",
				SCREEN_X*psx,
				SCREEN_Y*psy,
				SCREEN_X*psw,
				SCREEN_Y*psh
			)
		end
		for i,v in ipairs(Walls) do
			local psx = (((v.x*25) + 25)/600)
			local psy = (((v.y*25) + 25)/400)
			local psw = ((v.w*25)/600)
			local psh = ((v.h*25)/400)
			
			love.graphics.rectangle("line",
				SCREEN_X*psx,
				SCREEN_Y*psy,
				SCREEN_X*psw,
				SCREEN_Y*psh
			)
		end
		for i,v in pairs(Npc_Dboxs) do
			local psx = (((v.x*25) + 25)/600)
			local psy = (((v.y*25) + 25)/400)
			local psw = ((v.w*25)/600)
			local psh = ((v.h*25)/400)
			
			love.graphics.rectangle("line",
				SCREEN_X*psx,
				SCREEN_Y*psy,
				SCREEN_X*psw,
				SCREEN_Y*psh
			)
		end
		
		local psx = ((25 + (Plr.x)*25)/(600))
		local psy = ((25 + (Plr.y)*25)/(400))
		local psw = (25/600)
		local psh = (25/400)
		
		love.graphics.rectangle("line",
			SCREEN_X*psx,
			SCREEN_Y*psy,
			SCREEN_X*psw,
			SCREEN_Y*psh
		)
	end
end

-- error keypressed
function kerror(key)
	if key == "return" then
		-- I do am error handling
		GameState = Intro
	end
end

-- error draw
function derror()
	love.graphics.rectangle("fill",
		(SCREEN_X/12),
		(SCREEN_Y/8),
		((SCREEN_X*5)/6),
		(SCREEN_Y/4),
	25)
		
	love.graphics.print(
		{{0,0,0},"You're out of bounds^tm\nPress enter to go back to the intro"},
		(SCREEN_X/8),
		((SCREEN_Y*3)/20),
		0,
		SCREEN_X/600,SCREEN_Y/400
	)
end

-- draw audio
function daudio()
	-- if the game is not muted, play music
	if not muted then
		if pbs then
			if not bs:isPlaying() then
				bs:seek(0)
				bs:play()
			end
		end
		if pen then
			if not bs:isPlaying() then
				bs:seek(0)
				repeat
					esn = math.random(1,#EndSongList)
				until not (esn == pesn) and not (esn == lpesn)
				lpesn = pesn
				pesn = esn
				bs = sound.getSound(EndSongList[esn])
				bs:seek(0)
				bs:play()
			end
		end
	end
end

function love.load()
	love.window.setMode(600, 400, {resizable = true, minwidth = 600, minheight = 400})
	
	-- TODO: add a save feature
	--Save = love.filesystem.getInfo("/Save/.SaveFile")
	
	local mods = love.filesystem.getInfo("/mods/")
	if mods then
		if mods.type == "directory" then
			print("Log: Mods Present")
			local modlist = love.filesystem.getInfo("/mods/modlist.txt")
			if modlist and modlist.type == "file" then
				-- mod list
				print("Log: Reading mod index")
				for v in love.filesystem.lines("/mods/modlist.txt") do
					if not (v:sub(1,1) == '#') then
						local f = love.filesystem.getInfo("/mods/" .. v)
						if f then
							if f.type == "directory" then
								print("Log: [Dir]: "..v)
								if not ((v:sub(1,1) == "_") or (v:sub(1,1) == ".")) then
									local f1 = love.filesystem.getInfo("/mods/" .. v .. "/" .. v .. ".lua")
									local f2 = love.filesystem.getInfo("/mods/" .. v .. "/main.lua")
									local f3 = love.filesystem.getInfo("/mods/" .. v .. "/start.lua")
									if f1 then
										require("mods/"..v.."/"..v);
									elseif f2 then
										require("mods/"..v.."/main");
									elseif f3 then
										require("mods/"..v.."/start");
									else
										print("Error: No mod entry point")
									end
								end
							else
								print("Log: [File]: "..v)
								if not ((v:sub(1,1) == "_") or (v:sub(1,1) == ".")) then
									if (v:sub(-4) == ".lua") then
										local f1 = love.filesystem.getInfo("mods/"..v)
										if f1 then
											require("mods/"..v:sub(1,-5));
										else
											print("Error: Filename in directory but not present")
										end
									else
										print("Error: Junk File")
									end
								end
							end
						else
							print("Error: Filename in directory but not present")
						end
					end
				end
			else
				-- no mod list
				print("Log: No mod index to read")
				local modFiles = love.filesystem.getDirectoryItems("/mods/")
				for i,v in pairs(modFiles) do
					local f = love.filesystem.getInfo("/mods/" .. v)
					if f then
						if f.type == "directory" then
							print("Log: [Dir]: "..v)
							if not ((v:sub(1,1) == "_") or (v:sub(1,1) == ".")) then
								local f1 = love.filesystem.getInfo("/mods/" .. v .. "/" .. v)
								local f2 = love.filesystem.getInfo("/mods/" .. v .. "/main.lua")
								local f3 = love.filesystem.getInfo("/mods/" .. v .. "/init.lua")
								if f1 then
									require("mods/"..v.."/"..v);
								elseif f2 then
									require("mods/"..v.."/main.lua");
								elseif f3 then
									require("mods/"..v);
								else
									print("Error: No mod entry point")
								end
							end
						else
							print("Log: [File]: "..v)
							if not ((v:sub(1,1) == "_") or (v:sub(1,1) == ".")) then
								if (v:sub(-4) == ".lua") then
									local f1 = love.filesystem.getInfo("mods/"..v)
									if f1 then
										require("mods/"..v:sub(1,-5));
									else
										print("Error: Filename in directory but not present")
									end
								else
									print("Error: Junk File")
								end
							end
						end
					else
						print("Error: Filename in directory but not present")
					end
				end
			end
		else
			print("Error: Mod directory is a file")
		end
	end
end

function love.resize()
	-- update screen dimensions
	SCREEN_X = love.graphics.getWidth()
	SCREEN_Y = love.graphics.getHeight()
	ASPECT = (SCREEN_X/SCREEN_Y) 
end

function love.update(dt)
	-- Table look up the update function with game state
	local f = STATE_UPDATE[GameState]
	
	-- if it exists, run function
	if f then f(dt) end
	
	-- update the engine
	files.update(dt)
end

function love.keypressed(key)
	-- Table look up the keypressed function with game state
	local f = STATE_KEYPRESSED[GameState] or kerror
	
	-- if it exists, run function
	if f then f(key) end
	
	-- update control options
	kctrlOps(key)
end

function love.draw()
	-- handle audio
	daudio()
	
	-- Table look up the update function with game state
	local f = STATE_DRAW[GameState] or derror
	
	-- if it exists, run function
	if f then f() end
	
	-- engine drawing
	files.draw()
	
	-- draw control options
	dctrlOps()
end

function love.quit()
	-- close the open log file
	Log:close()
	
	-- return 0 and quit
	return false
end