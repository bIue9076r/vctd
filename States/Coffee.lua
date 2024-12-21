-- constant velocity
coffee_movespeed = 7

-- map variables
coffee_tile = nil
coffee_npc = nil
coffee_drawt = nil
coffee_talk = false

-- npc 1
_C_npc_1 = 1
_C_npc_1_t = {
	"This place is super cool!",
	"It's my favorite Coffee Shop.",
	"I hope they open another one though.",
}

-- npc 2
_C_npc_2 = 1
_C_npc_2_t = {
	"The Princess is supposed to come here later.",
	"Apparently she's looking for a partner.",
	"I think you have a good chance with her.",
}

-- npc 3
_C_npc_3 = 1
_C_npc_3_t = {
	"Hey!",
	"I'm trying to drink Coffee.",
	"I don't want to spill any of it.",
}

-- npc 4
_C_npc_4 = 1
_C_npc_4_t = {
	"How nice of you to bring me here.",
	"You look pretty great yourself.",
	"Hehe, it's a lovely day.",
	"I think i'm falling in love.",
	"Do you feel the same?",
	"I can't help but keep looking at you.",
	"It's like your eyes sparkle.",
	"Will you be...",
	"No, it's too much to ask.",
	"Screw it!",
	"Will you be my mine?",
	"Yes yes yes.",
}

function Coffee_Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	
	-- if talking
	if coffee_talk then
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			(SCREEN_Y/4),
		25)
	
		love.graphics.print(
			{{0,0,0},Names[coffee_drawt.n]..":"},
			(SCREEN_X/8),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print(
			{{0,0,0},spString(coffee_drawt.s,1,coffee_drawt.t)},
			(SCREEN_X/8),
			((SCREEN_Y*9)/40),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if coffee_drawt.t:get() < (#coffee_drawt.s + DialogeBuffer) then
			coffee_drawt.t()
		else
			-- stop talking
			coffee_drawt = nil
			coffee_talk = false
			
		end
	end
end

function Coffee_Update(dt)
	local tbl
	
	-- if not talking
	if not coffee_talk then
		tbl = movePlayer(dt,coffee_movespeed)
	end
	
	-- if return table
	if tbl then
		coffee_tile = tbl[1]
		coffee_npc = tbl[2]
		
		-- if effect tile
		if(coffee_tile) then
			
			-- if tile where equals 1
			if(coffee_tile.w == 1) then
				GameState = Outside
				Map = Map_Outside_S_E
				Map_y = #Map
				Map_x = #Map[1]
				Npcs = Npcs_Outside_S_E
				Walls = Walls_Outside_S_E
				setPlr(3,11)
			end
		end
	end
end

function Coffee_Keypressed(key)
	-- if npc, not talking, and 'enter'
	if coffee_npc and not coffee_talk and key == "return" then
		coffee_drawt = {
			s="......",
			n=coffee_npc.c,
			t=ticker.new()
		}
		coffee_talk = true
			
		if coffee_npc.i == 1 then
			coffee_drawt.s=_C_npc_1_t[_C_npc_1]
			_C_npc_1 = _C_npc_1 + 1
			if _C_npc_1 > #_C_npc_1_t then
				_C_npc_1 = 1
			end
		elseif coffee_npc.i == 2 then
			coffee_drawt.s=_C_npc_2_t[_C_npc_2]
			_C_npc_2 = _C_npc_2 + 1
			if _C_npc_2 > #_C_npc_2_t then
				_C_npc_2 = 1
			end
		elseif coffee_npc.i == 3 then
			coffee_drawt.s="I can't believe you did it."
		elseif coffee_npc.i == 4 then
			coffee_drawt.s=_C_npc_3_t[_C_npc_3]
			_C_npc_3 = _C_npc_3 + 1
			if _C_npc_3 > #_C_npc_3_t then
				_C_npc_3 = 1
			end
		elseif coffee_npc.i == 5 then
			coffee_drawt.s="Come on, go talk to her."
		elseif coffee_npc.i == 6 then
			coffee_drawt.s=_C_npc_4_t[_C_npc_4]
			_C_npc_4 = _C_npc_4 + 1
			if _C_npc_4 > #_C_npc_4_t then
				
			end
		end
	end
end