-- Fade out
Fade_out_t = ticker.new()

function Fadeout_Draw()
	local t = ((50 - Fade_out_t:get())/50)

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

function Fadeout_Update(dt)
	if Fade_out_t:get() >= 50 then
		Fade_out_t:reset()
		GameState = Cutscene
	end

	Fade_out_t()
end

function Fadeout_Keypressed(key)
	
end
