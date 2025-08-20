Savesong = sound.getSound("Save")

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
		else
			SaveConfirm_1 = "Are you sure"
			SaveConfirm_2 = "you want to save?"
			SaveCon = true
		end
		LoadCon = false
	elseif key == "l" then
		if LoadCon then
			SaveConfirm_1 = ""
			SaveConfirm_2 = ""
			LoadCon = false
		else
			SaveConfirm_1 = "Are you sure"
			SaveConfirm_2 = "you want to load?"
			LoadCon = true
		end
		SaveCon = false
	elseif key == "return" or key == "q" then
		Savesong:stop()
		GameState = WORLD
	else
		SaveConfirm_1 = ""
		SaveConfirm_2 = ""
		LoadCon = false
		SaveCon = false
	end
end
