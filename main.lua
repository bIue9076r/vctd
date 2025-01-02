math.randomseed(os.time())
jit.off()
love.graphics.setDefaultFilter("nearest", "nearest")
require("/Engine/filesConfig")
require("/Modules/Range")
require("/Modules/time")
require("/Modules/box")
require("/Modules/ticker")
require("/Modules/spString")
require("/Modules/Dialoge")
require("/Modules/npc")
require("/Modules/MapObj")
require("/Modules/images")
require("/Modules/mood")
require("/Modules/song")
require("/Modules/audio")
require("/Modules/drawSprites")
require("defs")
require("/States/Intro")
require("/States/World")
require("/States/End")

SCREEN_X = love.graphics.getWidth()
SCREEN_Y = love.graphics.getHeight()
ASPECT = (SCREEN_X/SCREEN_Y)

image.newImage("backtile","/Assets/huh.png")
files.assets.Fonts.newFont("comic","/Assets/ComicSansMS3.ttf",20)
love.graphics.setFont(files.assets.Fonts.getFont("comic"))

Log = love.filesystem.newFile("Log.txt")
Log:open("w")

function wlog(str)
	Log:write("["..os.date("%x|%X",os.time()).."]: "..str.."\n")
end

-- Player table
Plr = {
	x = 20,
	y = 12,
	tx = 20,
	ty = 12,
	c = Varisa, -- Varisa
}

function setPlr(x,y)
	Plr.x = x
	Plr.y = y
	Plr.tx = x
	Plr.ty = y
end

Map = MapObj.new()

-- globals
GameState = Intro;
DialogeBuffer = 50
Ending = 0	--	good ending
IsTalking = false

-- debug variables
DrawCoords = false
HitBoxes = false

STATE_KEYPRESSED = {
	[Intro] = Intro_Keypressed,
	[Load] = Load_Keypressed,
	[WORLD] = World.Keypressed,
	[Cutscene] = Cutscene_Keypressed,
	[END] = End_Keypressed,
}

STATE_UPDATE = {
	[Intro] = Intro_Update,
	[Load] = Load_Update,
	[WORLD] = World.Update,
	[Cutscene] = Cutscene_Update,
	[END] = End_Update,
}

STATE_DRAW = {
	[Intro] = Intro_Draw,
	[Load] = Load_Draw,
	[WORLD] = World.Draw,
	[Cutscene] = Cutscene_Draw,
	[END] = End_Draw,
}

require("col")

function Time.changed()
	Mood.set(-2*math.sin((math.pi*(Time.hour + (Time.minute/60)))/(12)))
	
	for i,v in pairs(Map:getNpcs()) do
		v:onTimeChange()
	end
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
			print(
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
		for i,v in ipairs(Map.npcs) do
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
		for i,v in ipairs(Map.walls) do
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
		for i,v in pairs(Map.dboxs) do
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

function kerror(key)
	if key == "return" then
		GameState = Intro
	end
end

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

function daudio()
	if not muted then
		if bs then
			if not bs:isPlaying() then
				bs = sound.getSound(SongListSelect(SongList))
				if bs then
					bs:seek(0)
					bs:play()
				end
			end
		else
			if soundTick:get() <= 1000 then
				soundTick() -- Silence
			else
				soundTick:reset()
				bs = sound.getSound(SongListSelect(SongList))
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
	SCREEN_X = love.graphics.getWidth()
	SCREEN_Y = love.graphics.getHeight()
	ASPECT = (SCREEN_X/SCREEN_Y) 
end

function love.update(dt)
	local f = STATE_UPDATE[GameState]
	if f then f(dt) end
	files.update(dt)
end

function love.keypressed(key)
	local f = STATE_KEYPRESSED[GameState] or kerror
	if f then f(key) end
	kctrlOps(key)
end

function love.draw()
	daudio()
	local f = STATE_DRAW[GameState] or derror
	if f then f() end
	files.draw()
	dctrlOps()
end

function love.quit()
	Log:close()
	return false
end
