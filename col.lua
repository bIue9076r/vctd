function npcCollide(Tx,Ty,Nx,Ny)
	return (
		(Tx + 1 >= Nx) and (Tx <= Nx + 1) and
		(Ty + 1 >= Ny) and (Ty <= Ny + 1)
	)
end

function npcInside(Tx,Ty,Nx,Ny)
	return (
		(Tx + 1 > Nx) and (Tx < Nx + 1) and
		(Ty + 1 > Ny) and (Ty < Ny + 1)
	)
end

function wallCollide(Tx,Ty,Wx,Wy,Ww,Wh)
	return (
		(Tx + 1 >= Wx) and (Tx <= Wx + Ww) and
		(Ty + 1 >= Wy) and (Ty <= Wy + Wh)
	)
end

function wallInside(Tx,Ty,Wx,Wy,Ww,Wh)
	return (
		(Tx + 1 > Wx) and (Tx < Wx + Ww) and
		(Ty + 1 > Wy) and (Ty < Wy + Wh)
	)
end

function directionX(Tx)
	local Dx = Tx - Plr.x
	if Dx == 0 then return 0 end
	return Dx / abs(Dx)
end

function directionY(Ty)
	local Dy = Ty - Plr.y
	if Dy == 0 then return 0 end
	return Dy / abs(Dy)
end

function checkNpcCollision(Tx,Ty)
	for i,v in pairs(Map:getNpcs()) do
		if npcInside(Tx,Ty,v.x,v.y) and (not (v.g == 1)) then
			local t = 9
			repeat
				Tx = (Plr.tx)*(t/10) - ((t/10) - 1)*(Plr.x)
				Ty = (Plr.ty)*(t/10) - ((t/10) - 1)*(Plr.y)
				t = t - 1
			until (not npcInside(Tx,Ty,v.x,v.y) or (t < 0))
			
			Plr.tx = Tx
			Plr.ty = Ty
		end
	end
end

function checkPropCollision(Tx,Ty)
	for i,v in pairs(Map:getProps()) do
		if npcInside(Tx,Ty,v.x,v.y) and (not (v.g == 1)) and (not (v.p == 1)) then
			local t = 9
			repeat
				Tx = (Plr.tx)*(t/10) - ((t/10) - 1)*(Plr.x)
				Ty = (Plr.ty)*(t/10) - ((t/10) - 1)*(Plr.y)
				t = t - 1
			until (not npcInside(Tx,Ty,v.x,v.y) or (t < 0))
			
			Plr.tx = Tx
			Plr.ty = Ty
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
			
			if wallInside(Tx,Ty,Wx,Wy,Ww,Wh) then
				if v.c == 0 then
					local t = 9
					repeat
						Tx = (Plr.tx)*(t/10) - ((t/10) - 1)*(Plr.x)
						Ty = (Plr.ty)*(t/10) - ((t/10) - 1)*(Plr.y)
						t = t - 1
					until (not wallInside(Tx,Ty,Wx,Wy,Ww,Wh) or (t < 0))
					
					Plr.tx = Tx
					Plr.ty = Ty
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
				
				if wallInside(Tx,Ty,Wx,Wy,Ww,Wh) then
					rnpc = Map.npcs[v.i]
					rdbox = Map.dboxs[i]
				end
			end
		end
		
		-- update player position
		Plr.x = Plr.tx
		Plr.y = Plr.ty
	else
		-- return to map
		Plr.x = max(0,min(Plr.x,2*Map.X - 1))
		Plr.y = max(0,min(Plr.y,2*Map.Y - 1))
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
