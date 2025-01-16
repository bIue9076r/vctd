function npcCollide(Tx,Ty,Nx,Ny)
	return (
		(Tx + 1 >= Nx) and (Tx <= Nx + 1) and
		(Ty + 1 >= Ny) and (Ty <= Ny + 1)
	)
end

function wallCollide(Tx,Ty,Wx,Wy,Ww,Wh)
	return (
		(Tx + 1 >= Wx) and (Tx <= Wx + Ww) and
		(Ty + 1 >= Wy) and (Ty <= Wy + Wh)
	)
end

function checkNpcCollision(Tx,Ty)
	for i,v in pairs(Map:getNpcs()) do
		if npcCollide(Tx,Ty,v.x,v.y) and (not (v.g == 1)) then
			Plr.tx = Plr.x
			Plr.ty = Plr.y
		end
	end
end

function checkPropCollision(Tx,Ty)
	for i,v in pairs(Map:getProps()) do
		if npcCollide(Tx,Ty,v.x,v.y) and (not (v.g == 1)) and (not (v.p == 1)) then
			Plr.tx = Plr.x
			Plr.ty = Plr.y
		end
	end
end

function checkCollision()
	local Tx = Plr.tx
	local Ty = Plr.ty
	
	local rnpc, rdbox
	
	-- if the player is inside the map
	if (Tx >= 0 and Ty >= 0) and (((Tx + 1) <= 2*Map.X) and ((Ty + 1) <= 2*Map.Y)) then
		
		-- check collision with walls
		for i,v in ipairs(Map:getWalls()) do
			local Wx = v.x
			local Wy = v.y
			local Ww = v.w
			local Wh = v.h
			
			if wallCollide(Tx,Ty,Wx,Wy,Ww,Wh) then
				if v.c == 0 then
					Plr.tx = Plr.x
					Plr.ty = Plr.y
				end
				
				if v.t == 1 then v.e() end
			end
		end
		
		-- check collision with npcs
		checkNpcCollision(Tx,Ty)
		checkPropCollision(Tx,Ty)
		
		for i,v in pairs(Map:getDboxs()) do
			if not (Map.npcs[v.i].g == 1) then
				local Wx = v.x
				local Wy = v.y
				local Ww = v.w
				local Wh = v.h
				
				if wallCollide(Tx,Ty,Wx,Wy,Ww,Wh) then
					rnpc = Map.npcs[v.i]
					rdbox = Map.dboxs[i]
				end
			end
		end
		
		
		-- TODO: Move Player to closest valid position
		-- update player position
		Plr.x = Plr.tx
		Plr.y = Plr.ty
	else
		-- return to last position
		Plr.tx = Plr.x
		Plr.ty = Plr.y
	end
	
	return rnpc, rdbox
end

function movePlayer(dt,ms)
	local npc, dbox;
	if love.keyboard.isDown("a") then
		Plr.tx = Plr.x - ms*dt
		npc, dbox = checkCollision()
	end
	if love.keyboard.isDown("d") then
		Plr.tx = Plr.x + ms*dt
		npc, dbox = checkCollision()
	end
	
	if love.keyboard.isDown("w") then
		Plr.ty = Plr.y - ms*dt
		npc, dbox = checkCollision()
	end
	if love.keyboard.isDown("s") then
		Plr.ty = Plr.y + ms*dt
		npc, dbox = checkCollision()
	end
	return npc, dbox
end
