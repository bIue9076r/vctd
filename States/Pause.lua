-- Pause menu

function Pause_Draw()
	drawBackgound()
	love.graphics.setColor(0.5,0.5,0.5)
	drawSpritesNoTint()
	love.graphics.setColor(1,1,1)
end

function Pause_Update(dt)
	
end

function Pause_Keypressed(key)
	if key == "escape" then
		GameState = WORLD
	end
end