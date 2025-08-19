Savesong = sound.getSound("Save")

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
end

function Save_Update(dt)
	
end

function Save_Keypressed(key)
	
end
