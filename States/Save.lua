Savesong = sound.getSound("Save")
local savefile = File.new("/Save/.SaveFile")

Save_LastState = Fade

SaveLang = {
	[English] = "English",
	[French] = "French",
	--[Spanish] = "Spanish",
	--[German] = "German",
	--[Czech] = "Czech",
}

SaveConfirm_1 = ""
SaveConfirm_2 = ""

SaveCon = false
LoadCon = false
DeleCon = false

function Game_Save(file)
	file:SetHeader()
	file:NewField("Seed",tostring(Seed or 0x27D410))
	file:NewField("Language",tostring(Language or 1))
	Story.Save(file)
	--file:NewField("Px",tostring(Plr.x or 0))
	--file:NewField("Py",tostring(Plr.y or 0))
	--file:NewField("Map",tostring(MaptoN() or 1))
	Plr.inv:save(file)
end

function Game_Load(file)
	local tbl, e = file:Read()
	if not e then
		print("Todo: Game Load")
		local gd = 1
		for i,v in pairs(tbl) do
			if i == "Seed" then
				Seed = tonumber(v) or 0x27D410
			end

			if i == "Language" then
				Language = tonumber(v) or 1
				LocaleChange()
			end

			if i == "Day" then
				gd = tonumber(v) or 1
			end
			
			--Start day over until dialogue, items, and quests can be saved.
			
			--if i == "Px" then
			--	Plr.x = tonumber(v) or 0
			--	Plr.tx = Plr.x
			--end
			
			--if i == "Py" then
			--	Plr.y = tonumber(v) or 0
			--	Plr.ty = Plr.y
			--end
			
			--if i == "Map" then
			--	Map = World.Map[tonumber(v) or 1]
			--end
		end

		math.randomseed(Seed)
		print(string.format("Seed: 0x%07X",Seed))

		Savesong:stop()
		
		for i,v in pairs(package.loaded) do
			if i:sub(1,4) == "maps" then
				package.loaded[i] = nil
			end

			if i:sub(1,6) == "scenes" then
				package.loaded[i] = nil
			end
		end
		package.loaded["/maps/Chars"] = nil
		package.loaded["/Modules/house"] = nil
		package.loaded["/maps/Maps"] = nil
		package.loaded["/scenes/Scenes"] = nil
		require("/maps/Chars")
		require("/Modules/house")
		require("/maps/Maps")
		require("/scenes/Scenes")
		
		Story.Load(file)
		Plr.inv:load(file)
		Days.loadDay(gd)
	end
	return e
end

function Game_getData(file)
	file.file = love.filesystem.newFile(file.path)
	if file:Exists() then
		file.file:open("r")
		ConfVer = file:GetVersion()
		file.file:close()
	end
	
	local tbl, e = file:Read()
	if not e then
		for i,v in pairs(tbl) do
			if i == "Seed" then
				ConfSeed = tonumber(v) or 0x27D410
			end

			if i == "Language" then
				ConfLang = SaveLang[tonumber(v)] or nil
			end

			if i == "Day" then
				ConfDay = tonumber(v) or 1
			end
		end
	end
	return e
end

function Game_clearData()
	ConfSeed = nil
	ConfLang = nil
	ConfDay = nil
	ConfVer = nil
end

function Game_Delete(file)
	file:Delete()
end

Save_Mode = 1
Save_Modes = {
	[1] = {
		Draw = function()
			Savesong:setVolume(Game_MusicVolume)
			Savesong:play()
			
			-- draw background
			drawBackgound()
			
			-- local img = image.getImage("Save")
			
			-- love.graphics.draw(
			-- 	img,0,0,0,
			-- 	SCREEN_X/img:getWidth(),
			-- 	SCREEN_Y/img:getHeight()
			-- )

			love.graphics.rectangle("fill",25,25,550,350)
			
			love.graphics.print(
				{{0,0,0},String.get(22)},
				(SCREEN_X/10),(SCREEN_Y/4),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0},String.get(23)..(CVERSION)},
				(SCREEN_X/10),((5*SCREEN_Y)/16),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
				love.graphics.print(
				{{0,0,0},string.format(String.get(24),Seed)},
				(SCREEN_X/10),((3*SCREEN_Y)/8),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0},String.get(25)..tostring(SaveLang[Language])},
				(SCREEN_X/10),((7*SCREEN_Y)/16),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0},String.get(26)..tostring(GameDay)},
				(SCREEN_X/10),(SCREEN_Y/2),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0},String.get(52)},
				((3*SCREEN_X)/5),(SCREEN_Y/4),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			if ConfVer and not(SaveCon) then
				love.graphics.print(
					{{0,0,0},String.get(23)..(ConfVer)},
					((3*SCREEN_X)/5),((5*SCREEN_Y)/16),
					0,SCREEN_X/600,SCREEN_Y/400
				)
			end
			
			if ConfSeed and not(SaveCon) then
				love.graphics.print(
					{{0,0,0},string.format(String.get(24),ConfSeed)},
					((3*SCREEN_X)/5),((3*SCREEN_Y)/8),
					0,SCREEN_X/600,SCREEN_Y/400
				)
			end
			
			if ConfLang and not(SaveCon) then
				love.graphics.print(
					{{0,0,0},String.get(25)..tostring(ConfLang)},
					((3*SCREEN_X)/5),((7*SCREEN_Y)/16),
					0,SCREEN_X/600,SCREEN_Y/400
				)
			end
			
			if ConfDay and not(SaveCon) then
				love.graphics.print(
					{{0,0,0},String.get(26)..tostring(ConfDay)},
					((3*SCREEN_X)/5),(SCREEN_Y/2),
					0,SCREEN_X/600,SCREEN_Y/400
				)
			end
			
			love.graphics.print(
				{{1,0,0},SaveConfirm_1},
				((3*SCREEN_X)/5),((9*SCREEN_Y)/16),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{1,0,0},SaveConfirm_2},
				((3*SCREEN_X)/5),((5*SCREEN_Y)/8),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0}," "},
				((3*SCREEN_X)/5),((11*SCREEN_Y)/16),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0},String.get(27)},
				((3*SCREEN_X)/5),((3*SCREEN_Y)/4),
				0,SCREEN_X/600,SCREEN_Y/400
			)
			
			love.graphics.print(
				{{0,0,0},String.get(28)},
				((3*SCREEN_X)/5),((13*SCREEN_Y)/16),
				0,SCREEN_X/600,SCREEN_Y/400
			)
		end,

		Update = function(dt)
			
		end,

		Keypressed = function(key)
			if key == "s" then
				if SaveCon then
					SaveConfirm_1 = ""
					SaveConfirm_2 = ""
					SaveCon = false
					Game_Save(savefile)
				else
					SaveConfirm_1 = String.get(29)
					SaveConfirm_2 = String.get(30)
					Game_clearData()
					SaveCon = true
				end
				LoadCon = false
				DeleCon = false
			elseif key == "l" then
				if LoadCon then
					SaveConfirm_1 = ""
					SaveConfirm_2 = ""
					LoadCon = false
					Game_Load(savefile)
				else
					SaveConfirm_1 = String.get(29)
					SaveConfirm_2 = String.get(31)
					Game_getData(savefile)
					LoadCon = true
				end
				SaveCon = false
				DeleCon = false
			elseif key == "d" then
				if DeleCon then
					SaveConfirm_1 = ""
					SaveConfirm_2 = ""
					DeleCon = false
					Game_Delete(savefile)
				else
					SaveConfirm_1 = String.get(29)
					SaveConfirm_2 = String.get(32)
					Game_getData(savefile)
					DeleCon = true
				end
				LoadCon = false
				SaveCon = false
			elseif key == "return" or key == "escape" or key == "backspace" then
				Game_clearData()
				Savesong:stop()
				SaveConfirm_1 = ""
				SaveConfirm_2 = ""
				LoadCon = false
				SaveCon = false
				DeleCon = false
				GameState = Save_LastState
			else
				Game_clearData()
				SaveConfirm_1 = ""
				SaveConfirm_2 = ""
				LoadCon = false
				SaveCon = false
				DeleCon = false
			end
		end,

		Mousepressed = function(x,y,button)
			
		end,
	},
}

function Save_Draw()
	
	if Save_Modes[Save_Mode] and Save_Modes[Save_Mode].Draw then
		Save_Modes[Save_Mode].Draw()
	end
end

function Save_Update(dt)
	
	if Save_Modes[Save_Mode] and Save_Modes[Save_Mode].Update then
		Save_Modes[Save_Mode].Update(dt)
	end
end

function Save_Keypressed(key)
	
	if Save_Modes[Save_Mode] and Save_Modes[Save_Mode].Keypressed then
		Save_Modes[Save_Mode].Keypressed(key)
	end
end

function Save_Mousepressed(x,y,button)
	
	if Save_Modes[Save_Mode] and Save_Modes[Save_Mode].Mousepressed then
		Save_Modes[Save_Mode].Mousepressed(x,y,button)
	end
end
