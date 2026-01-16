-- Fade in
Fade_in_t = ticker.new()

function Fade_Draw()
	local t = (Fade_in_t:get()/50)

	local h1 = Time.getHour()
	local h2 = h1 + 1
	local tm = (Time.getMin() / 60)
	if h2 >= 24 then h2 = 0 end
	local r1 = Sky[h1][1]
	local g1 = Sky[h1][2]
	local b1 = Sky[h1][3]
	local r2 = Sky[h2][1]
	local g2 = Sky[h2][2]
	local b2 = Sky[h2][3]

	local bh = 0.2*Mood.darkness

	love.graphics.setColor(t,t,t)
	drawBackgound()
	love.graphics.setColor(
		(lerp(r1,r2,tm) - bh)*t,
		(lerp(g1,g2,tm) - bh)*t,
		(lerp(b1,b2,tm) - bh)*t
	)
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
