World = {}
World.movespeed = 7
World.snpc = nil
World.sdbox = nil
World.dtbl = nil
World.dticker = ticker.new()

function World.setNpc(npc)
	if npc then
		World.snpc = npc
	end
end

function World.setDbox(dbox)
	if dbox then
		World.sdbox = dbox
	end
end

function World.doTalk(key)
	return (
		(World.snpc)
		and (not (World.snpc.g == 1))
		and (not IsTalking)
		and (key == "e")
	)
end

World.Map = {}
require("maps/Maps")
World.Dialoge = {}
-- Include Dialoge File
require("npcs/Dialoges")
--

function World.Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	
	-- if talking
	drawDialoge()
end

function World.Update(dt)
	if not IsTalking then
		local rnpc, rdbox = movePlayer(dt,World.movespeed)
		World.setNpc(rnpc)
		World.setDbox(rdbox)
	end
	
	if World.sdbox then
		local Tx = Plr.x
		local Ty = Plr.y
		local Wx = World.sdbox.x
		local Wy = World.sdbox.y
		local Ww = World.sdbox.w
		local Wh = World.sdbox.h
		
		-- if not colliding with dbox
		if not wallCollide(Tx,Ty,Wx,Wy,Wx,Wx) then
			World.snpc = nil
			World.sdbox = nil
		end
	end
end

function World.Keypressed(key)
	-- if npc, not talking, and 'enter'
	if World.doTalk(key) then
		IsTalking = true
		
		World.dtbl = {
			s = "......",
			n = World.snpc.c,
		}
		
		local wd = World.Dialoge[World.snpc.i]
		if wd then
			World.dtbl = wd:get()
		end
	end
end