-- constant velocity
castle_movespeed = 7

-- map variables
castle_tile = nil
castle_npc = nil
castle_drawt = nil
castle_talk = false

-- npc 1
_S_npc_1 = 1
_S_npc_1_t = {
	"Hi there!",
	"What brings you here?",
	"You? You want to go out with me?",
	"Sure, let's go!",
}

function Castle_Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	
	-- if talking
	if castle_talk then
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			(SCREEN_Y/4),
		25)
	
		love.graphics.print(
			{{0,0,0},tostring(Names[castle_drawt.n])..":"},
			(SCREEN_X/8),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print(
			{{0,0,0},spString(castle_drawt.s,1,castle_drawt.t)},
			(SCREEN_X/8),
			((SCREEN_Y*9)/40),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if castle_drawt.t:get() < (#castle_drawt.s + DialogeBuffer) then
			castle_drawt.t()
		else
			-- stop talking
			castle_drawt = nil
			castle_talk = false
		end
	end
end

function Castle_Update(dt)
	local tbl
	
	-- if not talking
	if not castle_talk then
		tbl = movePlayer(dt,castle_movespeed)
	end
	
	-- if return table
	if tbl then
		castle_tile = tbl[1]
		castle_npc = tbl[2]
		
		-- if effect tile
		if(castle_tile) then
			
			-- if tile where equals 1
			if(castle_tile.w == 1) then
				GameState = Outside
				Map = Map_Outside_S_E
				Map_y = #Map
				Map_x = #Map[1]
				Npcs = Npcs_Outside_S_E
				Walls = Walls_Outside_S_E
				setPlr(11,3)
			end
		end
	end
end

function Castle_Keypressed(key)
	-- if npc, not talking, and 'enter'
	if castle_npc and not castle_talk and key == "return" then
		castle_drawt = {
			s="......",
			n=castle_npc.c,
			t=ticker.new()
		}
		castle_talk = true
		
		if castle_npc.i == 1 then
			castle_drawt.s=_S_npc_1_t[_S_npc_1]
			_S_npc_1 = _S_npc_1 + 1
			if _S_npc_1 > #_S_npc_1_t then
				castle_npc.i = 2
			end
		elseif castle_npc.i == 2 then
			castle_drawt.s="That was a great date!"
		elseif castle_npc.i == 3 then
			castle_drawt.s="I'll kill you if you hurt her."
		elseif castle_npc.i == 4 then
			castle_drawt.s="Be warned."
		elseif castle_npc.i == 5 then
			castle_drawt.s="The Castle is so much nicer inside."
		elseif castle_npc.i == 6 then
			castle_drawt.s="Mabye you're not so bad after all."
		elseif castle_npc.i == 7 then
			-- same concept as the dialoge table, but randomized
			local hate = {
				"I hate you!",
				"Fuck off!",
				"Die already!",
				"I hate you!",
				"You piss me off!",
				"Die already!",
				"Leave me alone!",
				"I hate you!",
				"I'll cut off your head!",
				"Leave me alone!",
				"I'll burn your corpse!",
				"Leave me alone!",
			}
			castle_drawt.s=hate[math.random(1,#hate)]
		end
	end
end