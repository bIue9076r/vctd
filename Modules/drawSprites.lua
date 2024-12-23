function drawSprites()
	local Cx = Plr.x
	local Cy = Plr.y
	
	-- choose sector of 7x11
	for i = 1,7 do
		for j = 1,11 do
			if Map[i] and Map[i][j] then
				local img, psx, psy
				local Tx = (SCREEN_X/12)
				local Ty = (SCREEN_Y/8)
				img = image.getImage(TtS[Map[i][j].t])
				psx = ((25 + (j-1)*50)/(600))
				psy = ((25 + (i-1)*50)/(400))
				love.graphics.draw(
					img,
					SCREEN_X*psx,
					SCREEN_Y*psy,
					0,
					Tx/img:getWidth(),
					Ty/img:getHeight()
				)
			end
		end
	end
	
	drawChars(Cx,Cy) --(Sx,Sy,Cx,Cy)
end

function drawChars(Cx,Cy) --(Sx,Sy,Cx,Cy)
	local Tx = (SCREEN_X/24)
	local Ty = (SCREEN_Y/16)
	
	-- draw npcs
	for i = 1, #Npcs do
		local img, psx, psy
		img = image.getImage(CtS[Npcs[i].c])
		psx = (((Npcs[i].x*25) + 25)/(600))
		psy = (((Npcs[i].y*25) + 25)/(400))
		love.graphics.draw(
			img,
			SCREEN_X*psx,
			SCREEN_Y*psy,
			0,
			Tx/img:getWidth(),
			Ty/img:getHeight()
		)
	end
	
	-- draw players
	local img, psx, psy
	img = image.getImage(CtS[Plr.c])
	psx = (((Cx*25) + 25)/(600))
	psy = (((Cy*25) + 25)/(400))
	love.graphics.draw(
		img,
		SCREEN_X*psx,
		SCREEN_Y*psy,
		0,
		Tx/img:getWidth(),
		Ty/img:getHeight()
	)
end

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
