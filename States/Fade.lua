-- Fade in
Fade_in_t = ticker.new()

function Fade_Draw()
	local t = (Fade_in_t:get()/50)
	love.graphics.setColor(t,t,t)
	drawBackgound()
	drawSpritesNoTint()
	love.graphics.setColor(1,1,1)
end

function Fade_Update(dt)
	if Fade_in_t:get() >= 50 then
		Fade_in_t:reset()
		GameState = WORLD
	end

	Fade_in_t()
end

function Fade_Keypressed(key)
	
end
