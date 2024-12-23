-- constant velocity
house_movespeed = 7

-- map variables
house_tile = nil
house_npc = nil
house_drawt = nil
house_talk = false

-- npc 1
_YH_npc_1 = Dialoge.new({
	"Hey Var!",
	"...",
	"...",
})

_YH_npc_2 = Dialoge.new({
	"Hey Tracey!",
	"...",
	"...",
})

function Your_House_Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	
	-- if talking
	if house_talk then
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			(SCREEN_Y/4),
		25)
	
		love.graphics.print(
			{{0,0,0},Names[house_drawt.n]..":"},
			(SCREEN_X/8),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print(
			{{0,0,0},spString(house_drawt.s,1,house_drawt.t)},
			(SCREEN_X/8),
			((SCREEN_Y*9)/40),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if house_drawt.t:get() < (#house_drawt.s + DialogeBuffer) then
			house_drawt.t()
		else
			-- stop talking
			house_drawt = nil
			house_talk = false
		end
	end
end

function Your_House_Update(dt)
	local rnpc
	
	-- if not talking
	if not house_talk then
		rnpc = movePlayer(dt,house_movespeed)
	end
	
	-- if return table
	if rnpc then
		house_npc = rnpc
	end
end

function Your_House_Keypressed(key)
	-- if npc, not talking, and 'enter'
	if house_npc and not house_talk and key == "e" then
		house_drawt = {
			s="......",
			n=house_npc.c,
			t=ticker.new()
		}
		house_talk = true
		
		if house_npc.i == 1 then
			house_drawt.s=_YH_npc_1:get()
			house_npc.i = 2
		elseif house_npc.i == 2 then
			house_drawt.s=_YH_npc_2:get()
			house_drawt.n= Varisa
			house_npc.i = 1
		end
	end
end