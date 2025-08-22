Savesong = sound.getSound("Save")
local savefile = File.new("/Save/.SaveFile")

Save_LastState = WORLD

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
	file:NewField("Px",tostring(Plr.x or 0))
	file:NewField("Py",tostring(Plr.y or 0))
	file:NewField("Map",tostring(MaptoN() or 1))
	Plr.inv:save(file)
end

function Game_Load(file)
	local tbl, e = file:Read()
	if not e then
		print("Todo: Game Load")
		for i,v in pairs(tbl) do
			if i == "Seed" then
				Seed = tonumber(v) or 0x27D410
			end
			if i == "Language" then
				Language = tonumber(v) or 1
			end
			
			if i == "Px" then
				Plr.x = tonumber(v) or 0
				Plr.tx = Plr.x
			end
			
			if i == "Py" then
				Plr.y = tonumber(v) or 0
				Plr.ty = Plr.y
			end
			
			if i == "Map" then
				Map = World.Map[tonumber(v) or 1]
			end
		end
		
		Story.Load(file)
		Plr.inv:load(file)
	end
	return e
end

function Game_Delete(file)
	file:Delete()
end

function Save_Draw()
	if not muted then
		if not Savesong:isPlaying() then
			Savesong:seek(0)
			Savesong:play()
		end
	else
		Savesong:stop()
	end
	
	-- draw background
	drawBackgound()
	
	local img = image.getImage("Save")
	
	love.graphics.draw(
		img,0,0,0,
		SCREEN_X/img:getWidth(),
		SCREEN_Y/img:getHeight()
	)
	
	love.graphics.print(
		{{0,0,0},"Current:"},
		((3*SCREEN_X)/5),(SCREEN_Y/4),
		0,SCREEN_X/600,SCREEN_Y/400
	)
	
	love.graphics.print(
		{{0,0,0},"Version: "..CVERSION},
		((3*SCREEN_X)/5),((5*SCREEN_Y)/16),
		0,SCREEN_X/600,SCREEN_Y/400
	)
	
		love.graphics.print(
		{{0,0,0},string.format("Seed: 0x%07X",Seed)},
		((3*SCREEN_X)/5),((3*SCREEN_Y)/8),
		0,SCREEN_X/600,SCREEN_Y/400
	)
	
	love.graphics.print(
		{{0,0,0},"Language: "..tostring(SaveLang[Language])},
		((3*SCREEN_X)/5),((7*SCREEN_Y)/16),
		0,SCREEN_X/600,SCREEN_Y/400
	)
	
	love.graphics.print(
		{{0,0,0}," "},
		((3*SCREEN_X)/5),(SCREEN_Y/2),
		0,SCREEN_X/600,SCREEN_Y/400
	)
	
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
		{{0,0,0},"Load [l]"},
		((3*SCREEN_X)/5),((3*SCREEN_Y)/4),
		0,SCREEN_X/600,SCREEN_Y/400
	)
	
	love.graphics.print(
		{{0,0,0},"Save [s]"},
		((3*SCREEN_X)/5),((13*SCREEN_Y)/16),
		0,SCREEN_X/600,SCREEN_Y/400
	)
end

function Save_Update(dt)
	
end

function Save_Keypressed(key)
	if key == "s" then
		if SaveCon then
			SaveConfirm_1 = ""
			SaveConfirm_2 = ""
			SaveCon = false
			Game_Save(savefile)
		else
			SaveConfirm_1 = "Are you sure"
			SaveConfirm_2 = "you want to save?"
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
			SaveConfirm_1 = "Are you sure"
			SaveConfirm_2 = "you want to load?"
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
			SaveConfirm_1 = "Are you sure"
			SaveConfirm_2 = "you want to delete?"
			DeleCon = true
		end
		LoadCon = false
		SaveCon = false
	elseif key == "return" or key == "q" then
		Savesong:stop()
		GameState = Save_LastState
	else
		SaveConfirm_1 = ""
		SaveConfirm_2 = ""
		LoadCon = false
		SaveCon = false
		DeleCon = false
	end
end
