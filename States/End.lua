-- ending ticker
endTick = ticker.new()


function End_Draw()
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

function End_Update(dt)
	
end

function End_Keypressed(key)
	
end