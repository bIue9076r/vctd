function Save_Draw()
	-- draw background
	drawBackgound()
	
	love.graphics.draw(
		image.getImage(CtS[Plr.c]),
		((SCREEN_X*19)/96),
		((SCREEN_Y*11)/32),
		0,
		(SCREEN_X/120),
		(SCREEN_Y/80)
	)
end

function Save_Update(dt)
	
end

function Save_Keypressed(key)
	
end
