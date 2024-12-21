-- constant velocity
outside_movespeed = 7

-- map variables
outside_tile = nil
outside_npc = nil
outside_drawt = nil
outside_talk = false

-- npc 1
_O_npc_1 = 1
_O_npc_1_t = {
	"The Princess is so beautiful.",
	"Her beauty radiates through the land.",
	"I can't wait till she's queen!",
}

-- npc 2
_O_npc_2 = 1
_O_npc_2_t = {
	"I love this road.",
	"When the Princess becomes queen this road is...",
	"...going to get better!",
	"......",
}

-- npc 3
_O_npc_3 = 1
_O_npc_3_t = {
	"The Princess's tower is the best tower.",
	"It's only fitting for someone as beautiful as her.",
}

function Outside_Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	
	-- if talking
	if outside_talk then
		love.graphics.rectangle("fill",
			(SCREEN_X/12),
			(SCREEN_Y/8),
			((SCREEN_X*5)/6),
			(SCREEN_Y/4),
		25)
	
		love.graphics.print(
			{{0,0,0},Names[outside_drawt.n]..":"},
			(SCREEN_X/8),
			((SCREEN_Y*3)/20),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		love.graphics.print(
			{{0,0,0},spString(outside_drawt.s,1,outside_drawt.t)},
			(SCREEN_X/8),
			((SCREEN_Y*9)/40),
			0,
			SCREEN_X/600,SCREEN_Y/400
		)
		
		if outside_drawt.t:get() < (#outside_drawt.s + DialogeBuffer) then
			outside_drawt.t()
		else
			-- stop talking
			outside_drawt = nil
			outside_talk = false
		end
	end
end

function Outside_Update(dt)
	local tbl
	
	-- if not talking
	if not outside_talk then
		tbl = movePlayer(dt,outside_movespeed)
	end
	
	-- if return table
	if tbl then
		outside_tile = tbl[1]
		outside_npc = tbl[2]
		
		-- if effect tile
		if(outside_tile) then
			
			-- if tile where equals 1
			if(outside_tile.w == 1) then
				GameState = Castle
				Map = Map_Castle_S_E
				Map_y = #Map
				Map_x = #Map[1]
				Npcs = Npcs_Castle_S_E
				Walls = Walls_Castle_S_E
				setPlr(3,11)
			elseif(outside_tile.w == 2) then
				-- if tile where equals 2
				GameState = Your_House
				Map = Map_Your_House_S_E
				Map_y = #Map
				Map_x = #Map[1]
				Npcs = Npcs_Your_House_S_E
				Walls = Walls_Your_House_S_E
				setPlr(3,11)
			elseif(outside_tile.w == 3) then
				-- if tile where equals 3
				GameState = Coffee
				Map = Map_Coffee_S_E
				Map_y = #Map
				Map_x = #Map[1]
				Npcs = Npcs_Coffee_S_E
				Walls = Walls_Coffee_S_E
				setPlr(18,11)
			end
		end
	end
end

function Outside_Keypressed(key)
	-- if npc, not talking, and 'enter'
	if outside_npc and not outside_talk and key == "return" then
		outside_drawt = {
			s="......",
			n=outside_npc.c,
			t=ticker.new()
		}
		outside_talk = true
		
		if outside_npc.i == 1 then
			outside_drawt.s=_O_npc_1_t[_O_npc_1]
			_O_npc_1 = _O_npc_1 + 1
			if _O_npc_1 > #_O_npc_1_t then
				_O_npc_1 = 1
			end
		elseif outside_npc.i == 2 then
			outside_drawt.s=_O_npc_2_t[_O_npc_2]
			_O_npc_2 = _O_npc_2 + 1
			if _O_npc_2 > #_O_npc_2_t then
				_O_npc_2 = 1
			end
		elseif outside_npc.i == 3 then
			outside_drawt.s=_O_npc_3_t[_O_npc_3]
			_O_npc_3 = _O_npc_3 + 1
			if _O_npc_3 > #_O_npc_3_t then
				_O_npc_3 = 1
			end
		end
	end
end