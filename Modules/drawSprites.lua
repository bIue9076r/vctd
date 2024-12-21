image.newImage("Char_00","/Assets/Varisa.png")
image.newImage("Char_01","Assets/Princess.png")
image.newImage(1,"Assets/OC.png")

image.newImage("Grass_1","/Assets/grassblock_1.png")
image.newImage("Grass_2","/Assets/grassblock_2.png")
image.newImage("Grass_3","/Assets/grassblock_3.png")
image.newImage("Grass_4","/Assets/grassblock_4.png")
image.newImage("HalfPath_R","/Assets/halfpath_r.png")
image.newImage("HalfPath_L","/Assets/halfpath_l.png")
image.newImage("HalfPath_T","/Assets/halfpath_t.png")
image.newImage("HalfPath_B","/Assets/halfpath_b.png")
image.newImage("CornerPath_R","/Assets/cornerpath_r.png")
image.newImage("CornerPath_L","/Assets/cornerpath_l.png")
image.newImage("CornerPath_T","/Assets/cornerpath_t.png")
image.newImage("CornerPath_B","/Assets/cornerpath_b.png")
image.newImage("Wall","/Assets/wall.png")
image.newImage("Planks","/Assets/planks.png")
image.newImage("Carpet","/Assets/carpet.png")
image.newImage("CarpetEnd","/Assets/carpetend.png")
image.newImage("Table","/Assets/table.png")

function drawSprites()
	local Cx = Plr.x
	local Cy = Plr.y
	
	-- choose sector of 7x11
	
	-- TODO:
	-- small hand crafted maps or large sectors?
	-- A: update 2.0
	
	--local Sx = 0;print(math.floor((Cx/20)*Map_x))
	--local Sy = 0;print(math.floor((Cy/20)*Map_y))
	
	-- cx = 10
	-- sx = 0
	-- map[(7*sy)+i][(11*sx)+j]
	--print(Cx,Cy,Sx,Sy)
	for i = 1,7 do
		for j = 1,11 do
			--print(Map[(7*Sy)+i])
			--if Map[(7*Sy)+i] and Map[(7*Sy)+i][(11*Sx)+j] then
			if Map[i] and Map[i][j] then
				local img, psx, psy
				local Tx = (SCREEN_X/12)
				local Ty = (SCREEN_Y/8)
				--img = image.getImage(TtS[Map[(7*Sy)+i][(11*Sx)+j].t])
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